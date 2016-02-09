.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Serv"
.end annotation


# instance fields
.field mLastLaunches:I

.field mLastStartTime:J

.field mLastStarts:I

.field mLaunched:Z

.field mLaunchedSince:J

.field mLaunchedTime:J

.field mLaunches:I

.field mLoadedLaunches:I

.field mLoadedStartTime:J

.field mLoadedStarts:I

.field mRunning:Z

.field mRunningSince:J

.field mStartTime:J

.field mStarts:I

.field mUnpluggedLaunches:I

.field mUnpluggedStartTime:J

.field mUnpluggedStarts:I

.field final synthetic this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V
    .locals 1
    .param p1, "this$2"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@0
    .prologue
    .line 6385
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@2
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>(Landroid/os/BatteryStats$Uid$Pkg;)V

    #@5
    .line 6386
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@7
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@b
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@e
    .line 6385
    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    #@0
    .prologue
    .line 6401
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@8
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@b
    .line 6400
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    #@0
    .prologue
    .line 6492
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@2
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@4
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    return-object v0
.end method

.method getLaunchTimeToNowLocked(J)J
    .locals 5
    .param p1, "batteryUptime"    # J

    #@0
    .prologue
    .line 6442
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@6
    return-wide v0

    #@7
    .line 6443
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
    .line 6497
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@2
    .line 6498
    .local v0, "val":I
    const/4 v1, 0x1

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 6499
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    #@7
    sub-int/2addr v0, v1

    #@8
    .line 6503
    :cond_0
    :goto_0
    return v0

    #@9
    .line 6500
    :cond_1
    const/4 v1, 0x2

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 6501
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
    .line 6508
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    #@3
    move-result-wide v0

    #@4
    .line 6509
    .local v0, "val":J
    const/4 v2, 0x1

    #@5
    if-ne p3, v2, :cond_1

    #@7
    .line 6510
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    #@9
    sub-long/2addr v0, v2

    #@a
    .line 6514
    :cond_0
    :goto_0
    return-wide v0

    #@b
    .line 6511
    :cond_1
    const/4 v2, 0x2

    #@c
    if-ne p3, v2, :cond_0

    #@e
    .line 6512
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    #@10
    sub-long/2addr v0, v2

    #@11
    goto :goto_0
.end method

.method getStartTimeToNowLocked(J)J
    .locals 5
    .param p1, "batteryUptime"    # J

    #@0
    .prologue
    .line 6447
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@6
    return-wide v0

    #@7
    .line 6448
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
    .line 6519
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@2
    .line 6520
    .local v0, "val":I
    const/4 v1, 0x1

    #@3
    if-ne p1, v1, :cond_1

    #@5
    .line 6521
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    #@7
    sub-int/2addr v0, v1

    #@8
    .line 6526
    :cond_0
    :goto_0
    return v0

    #@9
    .line 6522
    :cond_1
    const/4 v1, 0x2

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 6523
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
    .line 6391
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    #@6
    .line 6392
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@8
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    #@a
    .line 6393
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@c
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    #@e
    .line 6390
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 6397
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 6405
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@5
    move-result-wide v4

    #@6
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@8
    .line 6406
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@b
    move-result-wide v4

    #@c
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@e
    .line 6407
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
    .line 6408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@1d
    .line 6409
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@20
    move-result-wide v4

    #@21
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@23
    .line 6410
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@26
    move-result-wide v4

    #@27
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@29
    .line 6411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@31
    .line 6412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@37
    .line 6413
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3a
    move-result-wide v0

    #@3b
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    #@3d
    .line 6414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v0

    #@41
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    #@43
    .line 6415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    #@49
    .line 6416
    const-wide/16 v0, 0x0

    #@4b
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStartTime:J

    #@4d
    .line 6417
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStarts:I

    #@4f
    .line 6418
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastLaunches:I

    #@51
    .line 6419
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@54
    move-result-wide v0

    #@55
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    #@57
    .line 6420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v0

    #@5b
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    #@5d
    .line 6421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v0

    #@61
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    #@63
    .line 6404
    return-void

    #@64
    :cond_0
    move v0, v2

    #@65
    .line 6407
    goto :goto_0

    #@66
    :cond_1
    move v1, v2

    #@67
    .line 6411
    goto :goto_1
.end method

.method public startLaunchedLocked()V
    .locals 2

    #@0
    .prologue
    .line 6452
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6453
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@a
    .line 6454
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@16
    .line 6455
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@19
    .line 6451
    :cond_0
    return-void
.end method

.method public startRunningLocked()V
    .locals 2

    #@0
    .prologue
    .line 6472
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6473
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@a
    .line 6474
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@c
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@e
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@16
    .line 6475
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@19
    .line 6471
    :cond_0
    return-void
.end method

.method public stopLaunchedLocked()V
    .locals 6

    #@0
    .prologue
    .line 6460
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 6461
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@6
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@8
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@a
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@d
    move-result-wide v2

    #@e
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@10
    sub-long v0, v2, v4

    #@12
    .line 6462
    .local v0, "time":J
    const-wide/16 v2, 0x0

    #@14
    cmp-long v2, v0, v2

    #@16
    if-lez v2, :cond_1

    #@18
    .line 6463
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@1a
    add-long/2addr v2, v0

    #@1b
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@1d
    .line 6467
    :goto_0
    const/4 v2, 0x0

    #@1e
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@20
    .line 6459
    .end local v0    # "time":J
    :cond_0
    return-void

    #@21
    .line 6465
    .restart local v0    # "time":J
    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@23
    add-int/lit8 v2, v2, -0x1

    #@25
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@27
    goto :goto_0
.end method

.method public stopRunningLocked()V
    .locals 6

    #@0
    .prologue
    .line 6480
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 6481
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    #@6
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@8
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@a
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    #@d
    move-result-wide v2

    #@e
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@10
    sub-long v0, v2, v4

    #@12
    .line 6482
    .local v0, "time":J
    const-wide/16 v2, 0x0

    #@14
    cmp-long v2, v0, v2

    #@16
    if-lez v2, :cond_1

    #@18
    .line 6483
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@1a
    add-long/2addr v2, v0

    #@1b
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@1d
    .line 6487
    :goto_0
    const/4 v2, 0x0

    #@1e
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@20
    .line 6479
    .end local v0    # "time":J
    :cond_0
    return-void

    #@21
    .line 6485
    .restart local v0    # "time":J
    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@23
    add-int/lit8 v2, v2, -0x1

    #@25
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@27
    goto :goto_0
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 6425
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    #@4
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@7
    .line 6426
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    #@9
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@c
    .line 6427
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 6428
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 6429
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    #@1b
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 6430
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    #@20
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 6431
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 6432
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 6433
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    #@31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@34
    .line 6434
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 6435
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    #@3b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 6436
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    #@40
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@43
    .line 6437
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    #@45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 6438
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    #@4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 6424
    return-void

    #@4e
    :cond_0
    move v0, v2

    #@4f
    .line 6427
    goto :goto_0

    #@50
    :cond_1
    move v1, v2

    #@51
    .line 6431
    goto :goto_1
.end method
