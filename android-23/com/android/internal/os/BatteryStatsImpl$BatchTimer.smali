.class public final Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchTimer"
.end annotation


# instance fields
.field mInDischarge:Z

.field mLastAddedDuration:J

.field mLastAddedTime:J

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 1
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@0
    .prologue
    .line 1311
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@3
    .line 1312
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@5
    .line 1313
    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@8
    move-result v0

    #@9
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@b
    .line 1310
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1303
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@3
    .line 1304
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@5
    .line 1305
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@b
    .line 1306
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@11
    .line 1307
    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@14
    move-result v0

    #@15
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@17
    .line 1302
    return-void
.end method

.method private computeOverage(J)J
    .locals 5
    .param p1, "curTime"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1349
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    .line 1350
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
    .line 1352
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
    .line 1356
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    #@5
    move-result-wide v0

    #@6
    .line 1357
    .local v0, "overage":J
    cmp-long v2, v0, v4

    #@8
    if-lez v2, :cond_1

    #@a
    .line 1361
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1362
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@10
    sub-long/2addr v2, v0

    #@11
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@13
    .line 1364
    :cond_0
    if-eqz p3, :cond_2

    #@15
    .line 1365
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@17
    .line 1355
    :cond_1
    :goto_0
    return-void

    #@18
    .line 1367
    :cond_2
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@1a
    .line 1368
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
    .line 1385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    const-wide/16 v4, 0x3e8

    #@6
    mul-long v0, v2, v4

    #@8
    .line 1386
    .local v0, "now":J
    const/4 v2, 0x1

    #@9
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@c
    .line 1384
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
    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v2

    #@6
    mul-long v0, v2, v4

    #@8
    .line 1375
    .local v0, "now":J
    const/4 v2, 0x1

    #@9
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@c
    .line 1376
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@e
    .line 1377
    mul-long v2, p2, v4

    #@10
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@12
    .line 1378
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 1379
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@18
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@1a
    add-long/2addr v2, v4

    #@1b
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@1d
    .line 1380
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    #@23
    .line 1373
    :cond_0
    return-void
.end method

.method protected computeCurrentCountLocked()I
    .locals 1

    #@0
    .prologue
    .line 1391
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    #@2
    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .param p1, "curBatteryRealtime"    # J

    #@0
    .prologue
    .line 1396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    const-wide/16 v4, 0x3e8

    #@6
    mul-long/2addr v2, v4

    #@7
    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    #@a
    move-result-wide v0

    #@b
    .line 1397
    .local v0, "overage":J
    const-wide/16 v2, 0x0

    #@d
    cmp-long v2, v0, v2

    #@f
    if-lez v2, :cond_0

    #@11
    .line 1398
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@13
    return-wide v0

    #@14
    .line 1400
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@16
    return-wide v2
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1343
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 1344
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
    .line 1345
    const-string/jumbo v1, " mLastAddedDuration="

    #@1c
    .line 1344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 1345
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@22
    .line 1344
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
    .line 1342
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1332
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@4
    .line 1333
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@7
    .line 1335
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@9
    cmp-long v0, v0, p1

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1336
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@f
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@11
    add-long/2addr v0, v2

    #@12
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    #@14
    .line 1338
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    #@17
    .line 1331
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
    .line 1325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4
    move-result-wide v0

    #@5
    const-wide/16 v2, 0x3e8

    #@7
    mul-long/2addr v0, v2

    #@8
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@b
    .line 1326
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    #@d
    .line 1327
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    #@10
    .line 1324
    return-void
.end method

.method reset(Z)Z
    .locals 10
    .param p1, "detachIfReset"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v6

    #@6
    const-wide/16 v8, 0x3e8

    #@8
    mul-long v0, v6, v8

    #@a
    .line 1406
    .local v0, "now":J
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    #@d
    .line 1407
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@f
    cmp-long v5, v6, v0

    #@11
    if-nez v5, :cond_0

    #@13
    const/4 v2, 0x1

    #@14
    .line 1408
    .local v2, "stillActive":Z
    :goto_0
    if-nez v2, :cond_1

    #@16
    .end local p1    # "detachIfReset":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    #@19
    .line 1409
    if-eqz v2, :cond_2

    #@1b
    :goto_2
    return v3

    #@1c
    .line 1407
    .end local v2    # "stillActive":Z
    .restart local p1    # "detachIfReset":Z
    :cond_0
    const/4 v2, 0x0

    #@1d
    .restart local v2    # "stillActive":Z
    goto :goto_0

    #@1e
    :cond_1
    move p1, v3

    #@1f
    .line 1408
    goto :goto_1

    #@20
    .end local p1    # "detachIfReset":Z
    :cond_2
    move v3, v4

    #@21
    .line 1409
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1318
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    #@3
    .line 1319
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@8
    .line 1320
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 1317
    return-void
.end method
