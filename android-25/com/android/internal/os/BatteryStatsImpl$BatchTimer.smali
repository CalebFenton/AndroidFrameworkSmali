.class public Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchTimer"
.end annotation


# instance fields
.field mInDischarge:Z

.field mLastAddedDuration:J

.field mLastAddedTime:J

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 1
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@0
    .prologue
    .line 1451
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3
    .line 1452
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@5
    .line 1453
    invoke-virtual {p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@8
    move-result v0

    #@9
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@b
    .line 1450
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p5, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1443
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3
    .line 1444
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@5
    .line 1445
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@b
    .line 1446
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@11
    .line 1447
    invoke-virtual {p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@14
    move-result v0

    #@15
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@17
    .line 1442
    return-void
.end method

.method private computeOverage(J)J
    .locals 5
    .param p1, "curTime"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1489
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    .line 1490
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastTime:J

    #@a
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@c
    add-long/2addr v0, v2

    #@d
    sub-long/2addr v0, p1

    #@e
    return-wide v0

    #@f
    .line 1492
    :cond_0
    return-wide v2
.end method

.method private recomputeLastDuration(JZ)V
    .locals 7
    .param p1, "curTime"    # J
    .param p3, "abort"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1496
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    #@5
    move-result-wide v0

    #@6
    .line 1497
    .local v0, "overage":J
    cmp-long v2, v0, v4

    #@8
    if-lez v2, :cond_1

    #@a
    .line 1501
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1502
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@10
    sub-long/2addr v2, v0

    #@11
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@13
    .line 1504
    :cond_0
    if-eqz p3, :cond_2

    #@15
    .line 1505
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@17
    .line 1495
    :cond_1
    :goto_0
    return-void

    #@18
    .line 1507
    :cond_2
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@1a
    .line 1508
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@1c
    sub-long/2addr v2, v0

    #@1d
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@1f
    goto :goto_0
.end method


# virtual methods
.method public abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    #@0
    .prologue
    .line 1525
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2
    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    #@5
    move-result-wide v2

    #@6
    const-wide/16 v4, 0x3e8

    #@8
    mul-long v0, v2, v4

    #@a
    .line 1526
    .local v0, "now":J
    const/4 v2, 0x1

    #@b
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@e
    .line 1524
    return-void
.end method

.method public addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "durationMillis"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x3e8

    #@2
    .line 1514
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@4
    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    #@7
    move-result-wide v2

    #@8
    mul-long v0, v2, v4

    #@a
    .line 1515
    .local v0, "now":J
    const/4 v2, 0x1

    #@b
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@e
    .line 1516
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@10
    .line 1517
    mul-long v2, p2, v4

    #@12
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@14
    .line 1518
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1519
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@1a
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@1c
    add-long/2addr v2, v4

    #@1d
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@1f
    .line 1520
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    #@25
    .line 1513
    :cond_0
    return-void
.end method

.method protected computeCurrentCountLocked()I
    .locals 1

    #@0
    .prologue
    .line 1531
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    #@2
    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .param p1, "curBatteryRealtime"    # J

    #@0
    .prologue
    .line 1536
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@2
    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    #@5
    move-result-wide v2

    #@6
    const-wide/16 v4, 0x3e8

    #@8
    mul-long/2addr v2, v4

    #@9
    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    #@c
    move-result-wide v0

    #@d
    .line 1537
    .local v0, "overage":J
    const-wide/16 v2, 0x0

    #@f
    cmp-long v2, v0, v2

    #@11
    if-lez v2, :cond_0

    #@13
    .line 1538
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@15
    return-wide v0

    #@16
    .line 1540
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@18
    return-wide v2
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1483
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "mLastAddedTime="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@15
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 1485
    const-string/jumbo v1, " mLastAddedDuration="

    #@1c
    .line 1484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 1485
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@22
    .line 1484
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2d
    .line 1482
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1472
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@4
    .line 1473
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@7
    .line 1475
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@9
    cmp-long v0, v0, p1

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1476
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@f
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@11
    add-long/2addr v0, v2

    #@12
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@14
    .line 1478
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    #@17
    .line 1471
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1465
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@3
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    #@6
    move-result-wide v0

    #@7
    const-wide/16 v2, 0x3e8

    #@9
    mul-long/2addr v0, v2

    #@a
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@d
    .line 1466
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@f
    .line 1467
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    #@12
    .line 1464
    return-void
.end method

.method public reset(Z)Z
    .locals 10
    .param p1, "detachIfReset"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1545
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@4
    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    #@7
    move-result-wide v6

    #@8
    const-wide/16 v8, 0x3e8

    #@a
    mul-long v0, v6, v8

    #@c
    .line 1546
    .local v0, "now":J
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@f
    .line 1547
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@11
    cmp-long v5, v6, v0

    #@13
    if-nez v5, :cond_0

    #@15
    move v2, v4

    #@16
    .line 1548
    .local v2, "stillActive":Z
    :goto_0
    if-nez v2, :cond_1

    #@18
    .end local p1    # "detachIfReset":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    #@1b
    .line 1549
    if-eqz v2, :cond_2

    #@1d
    :goto_2
    return v3

    #@1e
    .end local v2    # "stillActive":Z
    .restart local p1    # "detachIfReset":Z
    :cond_0
    move v2, v3

    #@1f
    .line 1547
    goto :goto_0

    #@20
    .restart local v2    # "stillActive":Z
    :cond_1
    move p1, v3

    #@21
    .line 1548
    goto :goto_1

    #@22
    .end local p1    # "detachIfReset":Z
    :cond_2
    move v3, v4

    #@23
    .line 1549
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1458
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    #@3
    .line 1459
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@8
    .line 1460
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 1457
    return-void
.end method
