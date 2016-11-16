.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serv"
.end annotation


# instance fields
.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field protected mLastLaunches:I

.field protected mLastStartTime:J

.field protected mLastStarts:I

.field protected mLaunched:Z

.field protected mLaunchedSince:J

.field protected mLaunchedTime:J

.field protected mLaunches:I

.field protected mLoadedLaunches:I

.field protected mLoadedStartTime:J

.field protected mLoadedStarts:I

.field protected mPkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

.field protected mRunning:Z

.field protected mRunningSince:J

.field protected mStartTime:J

.field protected mStarts:I

.field protected mUnpluggedLaunches:I

.field protected mUnpluggedStartTime:J

.field protected mUnpluggedStarts:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;

    #@0
    .prologue
    .line 7462
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>()V

    #@3
    .line 7463
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@5
    .line 7464
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@c
    .line 7462
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 7482
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@4
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@7
    .line 7481
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    #@0
    .prologue
    .line 7573
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    return-object v0
.end method

.method public getLaunchTimeToNowLocked(J)J
    .locals 5
    .param p1, "batteryUptime"    # J

    #@0
    .prologue
    .line 7523
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@6
    return-wide v0

    #@7
    .line 7524
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@9
    add-long/2addr v0, p1

    #@a
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@c
    sub-long/2addr v0, v2

    #@d
    return-wide v0
.end method

.method public getLaunches(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 7578
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@2
    .line 7579
    .local v0, "val":I
    const/4 v1, 0x1

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 7580
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    #@7
    sub-int/2addr v0, v1

    #@8
    .line 7584
    :cond_0
    :goto_0
    return v0

    #@9
    .line 7581
    :cond_1
    const/4 v1, 0x2

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 7582
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    #@e
    sub-int/2addr v0, v1

    #@f
    goto :goto_0
.end method

.method public getStartTime(JI)J
    .locals 5
    .param p1, "now"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 7589
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    #@3
    move-result-wide v0

    #@4
    .line 7590
    .local v0, "val":J
    const/4 v2, 0x1

    #@5
    if-ne p3, v2, :cond_1

    #@7
    .line 7591
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    #@9
    sub-long/2addr v0, v2

    #@a
    .line 7595
    :cond_0
    :goto_0
    return-wide v0

    #@b
    .line 7592
    :cond_1
    const/4 v2, 0x2

    #@c
    if-ne p3, v2, :cond_0

    #@e
    .line 7593
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    #@10
    sub-long/2addr v0, v2

    #@11
    goto :goto_0
.end method

.method public getStartTimeToNowLocked(J)J
    .locals 5
    .param p1, "batteryUptime"    # J

    #@0
    .prologue
    .line 7528
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@6
    return-wide v0

    #@7
    .line 7529
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@9
    add-long/2addr v0, p1

    #@a
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@c
    sub-long/2addr v0, v2

    #@d
    return-wide v0
.end method

.method public getStarts(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 7600
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@2
    .line 7601
    .local v0, "val":I
    const/4 v1, 0x1

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 7602
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    #@7
    sub-int/2addr v0, v1

    #@8
    .line 7607
    :cond_0
    :goto_0
    return v0

    #@9
    .line 7603
    :cond_1
    const/4 v1, 0x2

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 7604
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    #@e
    sub-int/2addr v0, v1

    #@f
    goto :goto_0
.end method

.method public onTimeStarted(JJJ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 7469
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    #@6
    .line 7470
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@8
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    #@a
    .line 7471
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@c
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    #@e
    .line 7468
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 7475
    return-void
.end method

.method public readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 7486
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@5
    move-result-wide v4

    #@6
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@8
    .line 7487
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@b
    move-result-wide v4

    #@c
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@e
    .line 7488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    move v0, v1

    #@15
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@17
    .line 7489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@1d
    .line 7490
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@20
    move-result-wide v4

    #@21
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@23
    .line 7491
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@26
    move-result-wide v4

    #@27
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@29
    .line 7492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@31
    .line 7493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@37
    .line 7494
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3a
    move-result-wide v0

    #@3b
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    #@3d
    .line 7495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v0

    #@41
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    #@43
    .line 7496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    #@49
    .line 7497
    const-wide/16 v0, 0x0

    #@4b
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStartTime:J

    #@4d
    .line 7498
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStarts:I

    #@4f
    .line 7499
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastLaunches:I

    #@51
    .line 7500
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@54
    move-result-wide v0

    #@55
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    #@57
    .line 7501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v0

    #@5b
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    #@5d
    .line 7502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v0

    #@61
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    #@63
    .line 7485
    return-void

    #@64
    :cond_0
    move v0, v2

    #@65
    .line 7488
    goto :goto_0

    #@66
    :cond_1
    move v1, v2

    #@67
    .line 7492
    goto :goto_1
.end method

.method public startLaunchedLocked()V
    .locals 2

    #@0
    .prologue
    .line 7533
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7534
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@a
    .line 7535
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@12
    .line 7536
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@15
    .line 7532
    :cond_0
    return-void
.end method

.method public startRunningLocked()V
    .locals 2

    #@0
    .prologue
    .line 7553
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7554
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@a
    .line 7555
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@12
    .line 7556
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@15
    .line 7552
    :cond_0
    return-void
.end method

.method public stopLaunchedLocked()V
    .locals 6

    #@0
    .prologue
    .line 7541
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 7542
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@9
    move-result-wide v2

    #@a
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@c
    sub-long v0, v2, v4

    #@e
    .line 7543
    .local v0, "time":J
    const-wide/16 v2, 0x0

    #@10
    cmp-long v2, v0, v2

    #@12
    if-lez v2, :cond_1

    #@14
    .line 7544
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@16
    add-long/2addr v2, v0

    #@17
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@19
    .line 7548
    :goto_0
    const/4 v2, 0x0

    #@1a
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@1c
    .line 7540
    .end local v0    # "time":J
    :cond_0
    return-void

    #@1d
    .line 7546
    .restart local v0    # "time":J
    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@1f
    add-int/lit8 v2, v2, -0x1

    #@21
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@23
    goto :goto_0
.end method

.method public stopRunningLocked()V
    .locals 6

    #@0
    .prologue
    .line 7561
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 7562
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@9
    move-result-wide v2

    #@a
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@c
    sub-long v0, v2, v4

    #@e
    .line 7563
    .local v0, "time":J
    const-wide/16 v2, 0x0

    #@10
    cmp-long v2, v0, v2

    #@12
    if-lez v2, :cond_1

    #@14
    .line 7564
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@16
    add-long/2addr v2, v0

    #@17
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@19
    .line 7568
    :goto_0
    const/4 v2, 0x0

    #@1a
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@1c
    .line 7560
    .end local v0    # "time":J
    :cond_0
    return-void

    #@1d
    .line 7566
    .restart local v0    # "time":J
    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@1f
    add-int/lit8 v2, v2, -0x1

    #@21
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@23
    goto :goto_0
.end method

.method public writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 7506
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@4
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@7
    .line 7507
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@9
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@c
    .line 7508
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 7509
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 7510
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@1b
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 7511
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@20
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 7512
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 7513
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 7514
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    #@31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@34
    .line 7515
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 7516
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    #@3b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 7517
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    #@40
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@43
    .line 7518
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    #@45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 7519
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    #@4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 7505
    return-void

    #@4e
    :cond_0
    move v0, v2

    #@4f
    .line 7508
    goto :goto_0

    #@50
    :cond_1
    move v1, v2

    #@51
    .line 7512
    goto :goto_1
.end method
