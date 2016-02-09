.class public final Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StopwatchTimer"
.end annotation


# instance fields
.field mAcquireTime:J

.field mInList:Z

.field mNesting:I

.field mTimeout:J

.field final mTimerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field mUpdateTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1453
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3
    .line 1454
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@5
    .line 1455
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@7
    .line 1452
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p5, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1445
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3
    .line 1446
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@5
    .line 1447
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@7
    .line 1448
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@d
    .line 1444
    return-void
.end method

.method private static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J
    .locals 12
    .param p0, "batteryRealtime"    # J
    .param p3, "self"    # Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 1556
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    const-wide/16 v6, 0x0

    #@2
    .line 1557
    .local v6, "selfTime":J
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1558
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@a
    .line 1559
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v8

    #@e
    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@10
    .line 1560
    .local v8, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@12
    sub-long v2, p0, v10

    #@14
    .line 1561
    .local v2, "heldTime":J
    const-wide/16 v10, 0x0

    #@16
    cmp-long v9, v2, v10

    #@18
    if-lez v9, :cond_1

    #@1a
    .line 1562
    int-to-long v10, v0

    #@1b
    div-long v4, v2, v10

    #@1d
    .line 1563
    .local v4, "myTime":J
    if-ne v8, p3, :cond_0

    #@1f
    .line 1564
    move-wide v6, v4

    #@20
    .line 1566
    :cond_0
    iget-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@22
    add-long/2addr v10, v4

    #@23
    iput-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@25
    .line 1568
    .end local v4    # "myTime":J
    :cond_1
    iput-wide p0, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@27
    .line 1558
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 1570
    .end local v2    # "heldTime":J
    .end local v8    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2
    return-wide v6
.end method


# virtual methods
.method protected computeCurrentCountLocked()I
    .locals 1

    #@0
    .prologue
    .line 1586
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    #@2
    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 7
    .param p1, "curBatteryRealtime"    # J

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 1575
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    #@4
    cmp-long v2, v2, v0

    #@6
    if-lez v2, :cond_0

    #@8
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@a
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    #@c
    add-long/2addr v2, v4

    #@d
    cmp-long v2, p1, v2

    #@f
    if-lez v2, :cond_0

    #@11
    .line 1576
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@13
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    #@15
    add-long p1, v2, v4

    #@17
    .line 1578
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@19
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@1b
    if-lez v4, :cond_1

    #@1d
    .line 1579
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@1f
    sub-long v4, p1, v0

    #@21
    .line 1580
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@23
    if-eqz v0, :cond_2

    #@25
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v0

    #@2b
    :goto_0
    int-to-long v0, v0

    #@2c
    .line 1579
    div-long v0, v4, v0

    #@2e
    .line 1578
    :cond_1
    add-long/2addr v0, v2

    #@2f
    return-wide v0

    #@30
    .line 1580
    :cond_2
    const/4 v0, 0x1

    #@31
    goto :goto_0
.end method

.method detach()V
    .locals 1

    #@0
    .prologue
    .line 1602
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    #@3
    .line 1603
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1604
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@c
    .line 1601
    :cond_0
    return-void
.end method

.method isRunningLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1509
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1481
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "mNesting="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, " mUpdateTime="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@22
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 1483
    const-string/jumbo v1, " mAcquireTime="

    #@29
    .line 1482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 1483
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    #@2f
    .line 1482
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3a
    .line 1480
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1468
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 1472
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    #@7
    .line 1473
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@9
    .line 1467
    :cond_0
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1610
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@3
    .line 1611
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@6
    .line 1609
    return-void
.end method

.method reset(Z)Z
    .locals 6
    .param p1, "detachIfReset"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1591
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@3
    if-gtz v2, :cond_1

    #@5
    const/4 v0, 0x1

    #@6
    .line 1592
    .local v0, "canDetach":Z
    :goto_0
    if-eqz v0, :cond_2

    #@8
    .end local p1    # "detachIfReset":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    #@b
    .line 1593
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@d
    if-lez v1, :cond_0

    #@f
    .line 1594
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@14
    move-result-wide v2

    #@15
    const-wide/16 v4, 0x3e8

    #@17
    mul-long/2addr v2, v4

    #@18
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@1b
    move-result-wide v2

    #@1c
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@1e
    .line 1596
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@20
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    #@22
    .line 1597
    return v0

    #@23
    .line 1591
    .end local v0    # "canDetach":Z
    .restart local p1    # "detachIfReset":Z
    :cond_1
    const/4 v0, 0x0

    #@24
    .restart local v0    # "canDetach":Z
    goto :goto_0

    #@25
    :cond_2
    move p1, v1

    #@26
    .line 1592
    goto :goto_1
.end method

.method public setMark(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 1621
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    const-wide/16 v4, 0x3e8

    #@4
    mul-long/2addr v4, p1

    #@5
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@8
    move-result-wide v0

    #@9
    .line 1622
    .local v0, "batteryRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@b
    if-lez v2, :cond_0

    #@d
    .line 1624
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 1625
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@13
    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    #@16
    .line 1631
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@18
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBeforeMark:J

    #@1a
    .line 1620
    return-void

    #@1b
    .line 1627
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@1d
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@1f
    sub-long v4, v0, v4

    #@21
    add-long/2addr v2, v4

    #@22
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@24
    .line 1628
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@26
    goto :goto_0
.end method

.method setTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 1459
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    #@2
    .line 1458
    return-void
.end method

.method startRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1487
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@3
    add-int/lit8 v3, v2, 0x1

    #@5
    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@7
    if-nez v2, :cond_1

    #@9
    .line 1488
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@b
    const-wide/16 v4, 0x3e8

    #@d
    mul-long/2addr v4, p1

    #@e
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@11
    move-result-wide v0

    #@12
    .line 1489
    .local v0, "batteryRealtime":J
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@14
    .line 1490
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1493
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@1a
    invoke-static {v0, v1, v2, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    #@1d
    .line 1495
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 1498
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    #@28
    .line 1499
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@2a
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    #@2c
    .line 1486
    .end local v0    # "batteryRealtime":J
    :cond_1
    return-void
.end method

.method stopAllRunningLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    .line 1546
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 1547
    const/4 v0, 0x1

    #@5
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@7
    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    #@a
    .line 1545
    :cond_0
    return-void
.end method

.method stopRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1514
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1515
    return-void

    #@7
    .line 1517
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@d
    if-nez v2, :cond_1

    #@f
    .line 1518
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@11
    const-wide/16 v4, 0x3e8

    #@13
    mul-long/2addr v4, p1

    #@14
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@17
    move-result-wide v0

    #@18
    .line 1519
    .local v0, "batteryRealtime":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 1522
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@1e
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    #@21
    .line 1524
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@26
    .line 1537
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@28
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    #@2a
    cmp-long v2, v2, v4

    #@2c
    if-nez v2, :cond_1

    #@2e
    .line 1540
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    #@30
    add-int/lit8 v2, v2, -0x1

    #@32
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    #@34
    .line 1512
    .end local v0    # "batteryRealtime":J
    :cond_1
    return-void

    #@35
    .line 1526
    .restart local v0    # "batteryRealtime":J
    :cond_2
    const/4 v2, 0x1

    #@36
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@38
    .line 1527
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(J)J

    #@3b
    move-result-wide v2

    #@3c
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    #@3e
    .line 1528
    iput v6, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    #@40
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1463
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    #@3
    .line 1464
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@8
    .line 1462
    return-void
.end method
