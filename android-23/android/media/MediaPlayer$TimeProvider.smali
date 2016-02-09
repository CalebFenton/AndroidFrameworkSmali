.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final NOTIFY:I = 0x1

.field private static final NOTIFY_SEEK:I = 0x3

.field private static final NOTIFY_STOP:I = 0x2

.field private static final NOTIFY_TIME:I = 0x0

.field private static final REFRESH_AND_NOTIFY_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MTP"

.field private static final TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public DEBUG:Z

.field private mBuffering:Z

.field private mEventHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastNanoTime:J

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimeAdjustment:J

.field private mTimes:[J


# direct methods
.method static synthetic -wrap0(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .locals 0
    .param p1, "refreshTime"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 3490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 3464
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@9
    .line 3466
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@b
    .line 3467
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@d
    .line 3477
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    #@f
    .line 3478
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@11
    .line 3479
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@13
    .line 3488
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@15
    .line 3491
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    #@17
    .line 3493
    const/4 v2, 0x1

    #@18
    const/4 v3, 0x0

    #@19
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 3500
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1f
    move-result-object v1

    #@20
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    #@22
    .line 3501
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@25
    move-result-object v1

    #@26
    if-nez v1, :cond_0

    #@28
    .line 3503
    new-instance v2, Landroid/os/HandlerThread;

    #@2a
    const-string/jumbo v3, "MediaPlayerMTPEventThread"

    #@2d
    .line 3504
    const/4 v4, -0x2

    #@2e
    .line 3503
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@31
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@33
    .line 3505
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@35
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    #@38
    .line 3506
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@3a
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3d
    move-result-object v1

    #@3e
    .line 3508
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    #@40
    invoke-direct {v2, p0, v1}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    #@43
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@45
    .line 3510
    new-array v2, v5, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@47
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@49
    .line 3511
    new-array v2, v5, [J

    #@4b
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@4d
    .line 3512
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@4f
    .line 3513
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@51
    .line 3490
    return-void

    #@52
    .line 3494
    .end local v1    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v0

    #@53
    .line 3496
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    #@55
    goto :goto_0
.end method

.method private getEstimatedTime(JZ)J
    .locals 11
    .param p1, "nanoTime"    # J
    .param p3, "monotonic"    # Z

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 3769
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@4
    if-eqz v4, :cond_1

    #@6
    .line 3770
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@8
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@a
    add-long/2addr v4, v6

    #@b
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@d
    .line 3784
    :cond_0
    :goto_0
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@f
    return-wide v4

    #@10
    .line 3772
    :cond_1
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    #@12
    sub-long v4, p1, v4

    #@14
    const-wide/16 v6, 0x3e8

    #@16
    div-long v2, v4, v6

    #@18
    .line 3773
    .local v2, "timeSinceRead":J
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@1a
    add-long/2addr v4, v2

    #@1b
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@1d
    .line 3774
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@1f
    cmp-long v4, v4, v8

    #@21
    if-lez v4, :cond_0

    #@23
    .line 3776
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@25
    const-wide/16 v6, 0x2

    #@27
    div-long v6, v2, v6

    #@29
    sub-long v0, v4, v6

    #@2b
    .line 3777
    .local v0, "adjustment":J
    cmp-long v4, v0, v8

    #@2d
    if-gtz v4, :cond_2

    #@2f
    .line 3778
    iput-wide v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@31
    goto :goto_0

    #@32
    .line 3780
    :cond_2
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@34
    add-long/2addr v4, v0

    #@35
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@37
    goto :goto_0
.end method

.method private declared-synchronized notifySeek()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 3605
    const/4 v5, 0x0

    #@3
    :try_start_0
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 3607
    const/4 v5, 0x1

    #@6
    const/4 v6, 0x0

    #@7
    :try_start_1
    invoke-virtual {p0, v5, v6}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    #@a
    move-result-wide v2

    #@b
    .line 3608
    .local v2, "timeUs":J
    iget-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@d
    if-eqz v5, :cond_0

    #@f
    const-string/jumbo v5, "MTP"

    #@12
    new-instance v6, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v7, "onSeekComplete at "

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 3610
    :cond_0
    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@2b
    array-length v6, v5

    #@2c
    :goto_0
    if-ge v4, v6, :cond_1

    #@2e
    aget-object v1, v5, v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 3611
    .local v1, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v1, :cond_2

    #@32
    .end local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "timeUs":J
    :cond_1
    :goto_1
    monitor-exit p0

    #@33
    .line 3604
    return-void

    #@34
    .line 3614
    .restart local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .restart local v2    # "timeUs":J
    :cond_2
    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    .line 3610
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 3616
    .end local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "timeUs":J
    :catch_0
    move-exception v0

    #@3b
    .line 3618
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@3d
    if-eqz v4, :cond_3

    #@3f
    const-string/jumbo v4, "MTP"

    #@42
    const-string/jumbo v5, "onSeekComplete but no player"

    #@45
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 3619
    :cond_3
    const/4 v4, 0x1

    #@49
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@4b
    .line 3620
    const/4 v4, 0x0

    #@4c
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4f
    goto :goto_1

    #@50
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    #@51
    monitor-exit p0

    #@52
    throw v4
.end method

.method private declared-synchronized notifyStop()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 3625
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@3
    const/4 v1, 0x0

    #@4
    array-length v3, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_0

    #@7
    aget-object v0, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 3626
    .local v0, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v0, :cond_1

    #@b
    .end local v0    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_0
    monitor-exit p0

    #@c
    .line 3624
    return-void

    #@d
    .line 3629
    .restart local v0    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 3625
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .end local v0    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .locals 22
    .param p1, "refreshTime"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 3706
    const/4 v15, 0x1

    #@2
    :try_start_0
    move-object/from16 v0, p0

    #@4
    move/from16 v1, p1

    #@6
    invoke-virtual {v0, v1, v15}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v12

    #@a
    .line 3713
    .local v12, "nowUs":J
    :goto_0
    move-wide v10, v12

    #@b
    .line 3715
    .local v10, "nextTimeUs":J
    :try_start_1
    move-object/from16 v0, p0

    #@d
    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    if-eqz v15, :cond_0

    #@11
    monitor-exit p0

    #@12
    .line 3717
    return-void

    #@13
    .line 3707
    .end local v10    # "nextTimeUs":J
    .end local v12    # "nowUs":J
    :catch_0
    move-exception v5

    #@14
    .line 3709
    .local v5, "e":Ljava/lang/IllegalStateException;
    const/4 v15, 0x1

    #@15
    :try_start_2
    move-object/from16 v0, p0

    #@17
    iput-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    #@19
    .line 3710
    const/4 v15, 0x1

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@1e
    .line 3711
    const/4 v15, 0x1

    #@1f
    move-object/from16 v0, p0

    #@21
    move/from16 v1, p1

    #@23
    invoke-virtual {v0, v1, v15}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    #@26
    move-result-wide v12

    #@27
    .restart local v12    # "nowUs":J
    goto :goto_0

    #@28
    .line 3720
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    .restart local v10    # "nextTimeUs":J
    :cond_0
    move-object/from16 v0, p0

    #@2a
    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@2c
    if-eqz v15, :cond_4

    #@2e
    .line 3721
    new-instance v14, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    .line 3722
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v15, "notifyTimedEvent("

    #@36
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v15

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-wide v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@3e
    move-wide/from16 v18, v0

    #@40
    move-wide/from16 v0, v18

    #@42
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@45
    move-result-object v15

    #@46
    const-string/jumbo v18, " -> "

    #@49
    move-object/from16 v0, v18

    #@4b
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v15

    #@4f
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@52
    move-result-object v15

    #@53
    .line 3723
    const-string/jumbo v18, ") from {"

    #@56
    .line 3722
    move-object/from16 v0, v18

    #@58
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 3724
    const/4 v6, 0x1

    #@5c
    .line 3725
    .local v6, "first":Z
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@60
    move-object/from16 v18, v0

    #@62
    const/4 v15, 0x0

    #@63
    move-object/from16 v0, v18

    #@65
    array-length v0, v0

    #@66
    move/from16 v19, v0

    #@68
    :goto_1
    move/from16 v0, v19

    #@6a
    if-ge v15, v0, :cond_3

    #@6c
    aget-wide v16, v18, v15

    #@6e
    .line 3726
    .local v16, "time":J
    const-wide/16 v20, -0x1

    #@70
    cmp-long v20, v16, v20

    #@72
    if-nez v20, :cond_1

    #@74
    .line 3725
    :goto_2
    add-int/lit8 v15, v15, 0x1

    #@76
    goto :goto_1

    #@77
    .line 3729
    :cond_1
    if-nez v6, :cond_2

    #@79
    const-string/jumbo v20, ", "

    #@7c
    move-object/from16 v0, v20

    #@7e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 3730
    :cond_2
    move-wide/from16 v0, v16

    #@83
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@86
    .line 3731
    const/4 v6, 0x0

    #@87
    goto :goto_2

    #@88
    .line 3733
    .end local v16    # "time":J
    :cond_3
    const-string/jumbo v15, "}"

    #@8b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 3734
    const-string/jumbo v15, "MTP"

    #@91
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v18

    #@95
    move-object/from16 v0, v18

    #@97
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    .line 3738
    .end local v6    # "first":Z
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v4, Ljava/util/Vector;

    #@9c
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@9f
    .line 3739
    .local v4, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    const/4 v7, 0x0

    #@a0
    .local v7, "ix":I
    :goto_3
    move-object/from16 v0, p0

    #@a2
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@a4
    array-length v15, v15

    #@a5
    if-ge v7, v15, :cond_5

    #@a7
    .line 3740
    move-object/from16 v0, p0

    #@a9
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@ab
    aget-object v15, v15, v7

    #@ad
    if-nez v15, :cond_7

    #@af
    .line 3754
    :cond_5
    cmp-long v15, v10, v12

    #@b1
    if-lez v15, :cond_6

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@b7
    if-eqz v15, :cond_d

    #@b9
    .line 3759
    :cond_6
    move-object/from16 v0, p0

    #@bb
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@bd
    const/16 v18, 0x1

    #@bf
    move/from16 v0, v18

    #@c1
    invoke-virtual {v15, v0}, Landroid/os/Handler;->removeMessages(I)V

    #@c4
    .line 3763
    :goto_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c7
    move-result-object v9

    #@c8
    .local v9, "listener$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@cb
    move-result v15

    #@cc
    if-eqz v15, :cond_f

    #@ce
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d1
    move-result-object v8

    #@d2
    check-cast v8, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@d4
    .line 3764
    .local v8, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v8, v12, v13}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d7
    goto :goto_5

    #@d8
    .end local v4    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v7    # "ix":I
    .end local v8    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    .end local v10    # "nextTimeUs":J
    .end local v12    # "nowUs":J
    :catchall_0
    move-exception v15

    #@d9
    monitor-exit p0

    #@da
    throw v15

    #@db
    .line 3743
    .restart local v4    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .restart local v7    # "ix":I
    .restart local v10    # "nextTimeUs":J
    .restart local v12    # "nowUs":J
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    #@dd
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@df
    aget-wide v18, v15, v7

    #@e1
    const-wide/16 v20, -0x1

    #@e3
    cmp-long v15, v18, v20

    #@e5
    if-gtz v15, :cond_9

    #@e7
    .line 3739
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    #@e9
    goto :goto_3

    #@ea
    .line 3745
    :cond_9
    move-object/from16 v0, p0

    #@ec
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@ee
    aget-wide v18, v15, v7

    #@f0
    const-wide/16 v20, 0x3e8

    #@f2
    add-long v20, v20, v12

    #@f4
    cmp-long v15, v18, v20

    #@f6
    if-gtz v15, :cond_b

    #@f8
    .line 3746
    move-object/from16 v0, p0

    #@fa
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@fc
    aget-object v15, v15, v7

    #@fe
    invoke-virtual {v4, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@101
    .line 3747
    move-object/from16 v0, p0

    #@103
    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@105
    if-eqz v15, :cond_a

    #@107
    const-string/jumbo v15, "MTP"

    #@10a
    const-string/jumbo v18, "removed"

    #@10d
    move-object/from16 v0, v18

    #@10f
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@112
    .line 3748
    :cond_a
    move-object/from16 v0, p0

    #@114
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@116
    const-wide/16 v18, -0x1

    #@118
    aput-wide v18, v15, v7

    #@11a
    goto :goto_6

    #@11b
    .line 3749
    :cond_b
    cmp-long v15, v10, v12

    #@11d
    if-eqz v15, :cond_c

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@123
    aget-wide v18, v15, v7

    #@125
    cmp-long v15, v18, v10

    #@127
    if-gez v15, :cond_8

    #@129
    .line 3750
    :cond_c
    move-object/from16 v0, p0

    #@12b
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@12d
    aget-wide v10, v15, v7

    #@12f
    goto :goto_6

    #@130
    .line 3756
    :cond_d
    move-object/from16 v0, p0

    #@132
    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@134
    if-eqz v15, :cond_e

    #@136
    const-string/jumbo v15, "MTP"

    #@139
    new-instance v18, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v19, "scheduling for "

    #@141
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v18

    #@145
    move-object/from16 v0, v18

    #@147
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v18

    #@14b
    const-string/jumbo v19, " and "

    #@14e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v18

    #@152
    move-object/from16 v0, v18

    #@154
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@157
    move-result-object v18

    #@158
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v18

    #@15c
    move-object/from16 v0, v18

    #@15e
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@161
    .line 3757
    :cond_e
    sub-long v18, v10, v12

    #@163
    const/4 v15, 0x0

    #@164
    move-object/from16 v0, p0

    #@166
    move-wide/from16 v1, v18

    #@168
    invoke-direct {v0, v15, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@16b
    goto/16 :goto_4

    #@16d
    .restart local v9    # "listener$iterator":Ljava/util/Iterator;
    :cond_f
    monitor-exit p0

    #@16e
    .line 3702
    return-void
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3634
    const/4 v0, 0x0

    #@2
    .line 3635
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@4
    array-length v3, v3

    #@5
    if-ge v0, v3, :cond_0

    #@7
    .line 3636
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@9
    aget-object v3, v3, v0

    #@b
    if-eq v3, p1, :cond_0

    #@d
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@f
    aget-object v3, v3, v0

    #@11
    if-nez v3, :cond_3

    #@13
    .line 3642
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@15
    array-length v3, v3

    #@16
    if-lt v0, v3, :cond_1

    #@18
    .line 3644
    add-int/lit8 v3, v0, 0x1

    #@1a
    new-array v1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@1c
    .line 3645
    .local v1, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v0, 0x1

    #@1e
    new-array v2, v3, [J

    #@20
    .line 3646
    .local v2, "newTimes":[J
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@22
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@24
    array-length v4, v4

    #@25
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 3647
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@2a
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@2c
    array-length v4, v4

    #@2d
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@30
    .line 3648
    iput-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@32
    .line 3649
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@34
    .line 3652
    .end local v1    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "newTimes":[J
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@36
    aget-object v3, v3, v0

    #@38
    if-nez v3, :cond_2

    #@3a
    .line 3653
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@3c
    aput-object p1, v3, v0

    #@3e
    .line 3654
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@40
    const-wide/16 v4, -0x1

    #@42
    aput-wide v4, v3, v0

    #@44
    .line 3656
    :cond_2
    return v0

    #@45
    .line 3635
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0
.end method

.method private scheduleNotification(IJ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 3518
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 3519
    if-eqz p1, :cond_0

    #@8
    if-ne p1, v4, :cond_1

    #@a
    .line 3520
    :cond_0
    return-void

    #@b
    .line 3523
    :cond_1
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@d
    if-eqz v1, :cond_2

    #@f
    const-string/jumbo v1, "MTP"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "scheduleNotification "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " in "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 3524
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@36
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@39
    .line 3525
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@3b
    invoke-virtual {v1, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@3e
    move-result-object v0

    #@3f
    .line 3526
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@41
    const-wide/16 v2, 0x3e8

    #@43
    div-long v2, p2, v2

    #@45
    long-to-int v2, v2

    #@46
    int-to-long v2, v2

    #@47
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@4a
    .line 3516
    return-void
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@0
    .prologue
    .line 3682
    monitor-enter p0

    #@1
    .line 3683
    const/4 v0, 0x0

    #@2
    .line 3684
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 3685
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@9
    aget-object v1, v1, v0

    #@b
    if-ne v1, p1, :cond_1

    #@d
    .line 3686
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@f
    add-int/lit8 v2, v0, 0x1

    #@11
    .line 3687
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@13
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@15
    array-length v4, v4

    #@16
    sub-int/2addr v4, v0

    #@17
    add-int/lit8 v4, v4, -0x1

    #@19
    .line 3686
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 3688
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@1e
    add-int/lit8 v2, v0, 0x1

    #@20
    .line 3689
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@22
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@24
    array-length v4, v4

    #@25
    sub-int/2addr v4, v0

    #@26
    add-int/lit8 v4, v4, -0x1

    #@28
    .line 3688
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@2b
    .line 3690
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@2d
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@2f
    array-length v2, v2

    #@30
    add-int/lit8 v2, v2, -0x1

    #@32
    const/4 v3, 0x0

    #@33
    aput-object v3, v1, v2

    #@35
    .line 3691
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@37
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@39
    array-length v2, v2

    #@3a
    add-int/lit8 v2, v2, -0x1

    #@3c
    const-wide/16 v4, -0x1

    #@3e
    aput-wide v4, v1, v2

    #@40
    .line 3698
    :cond_0
    const-wide/16 v2, 0x0

    #@42
    const/4 v1, 0x0

    #@43
    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    monitor-exit p0

    #@47
    .line 3681
    return-void

    #@48
    .line 3693
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@4a
    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    if-eqz v1, :cond_0

    #@4e
    .line 3684
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 3682
    :catchall_0
    move-exception v1

    #@52
    monitor-exit p0

    #@53
    throw v1
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3531
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 3532
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 3533
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@d
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    #@10
    .line 3534
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@12
    .line 3530
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 3540
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3541
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    #@9
    .line 3539
    :cond_0
    return-void
.end method

.method public getCurrentTimeUs(ZZ)J
    .locals 8
    .param p1, "refreshTime"    # Z
    .param p2, "monotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3789
    monitor-enter p0

    #@2
    .line 3792
    :try_start_0
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    if-eqz p1, :cond_5

    #@8
    .line 3796
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v2

    #@c
    .line 3797
    .local v2, "nanoTime":J
    if-nez p1, :cond_1

    #@e
    .line 3798
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    const-wide v6, 0x12a05f200L

    #@15
    add-long/2addr v4, v6

    #@16
    cmp-long v4, v2, v4

    #@18
    if-ltz v4, :cond_4

    #@1a
    .line 3800
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    #@1c
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    #@1f
    move-result v4

    #@20
    int-to-long v4, v4

    #@21
    const-wide/16 v6, 0x3e8

    #@23
    mul-long/2addr v4, v6

    #@24
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@26
    .line 3801
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    #@28
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    #@30
    :cond_2
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@32
    .line 3802
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@34
    if-eqz v1, :cond_3

    #@36
    const-string/jumbo v4, "MTP"

    #@39
    new-instance v5, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@40
    if-eqz v1, :cond_6

    #@42
    const-string/jumbo v1, "paused"

    #@45
    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v5, " at "

    #@4c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@52
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    .line 3815
    :cond_3
    :try_start_2
    iput-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    #@5f
    .line 3816
    if-eqz p2, :cond_9

    #@61
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@63
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@65
    cmp-long v1, v4, v6

    #@67
    if-gez v1, :cond_9

    #@69
    .line 3818
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@6b
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@6d
    sub-long/2addr v4, v6

    #@6e
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@70
    .line 3819
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@72
    const-wide/32 v6, 0xf4240

    #@75
    cmp-long v1, v4, v6

    #@77
    if-lez v1, :cond_4

    #@79
    .line 3822
    const/4 v1, 0x0

    #@7a
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@7c
    .line 3823
    const/4 v1, 0x1

    #@7d
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@7f
    .line 3824
    const-wide/16 v4, 0x0

    #@81
    const/4 v1, 0x3

    #@82
    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    #@85
    .line 3831
    :cond_4
    :goto_1
    invoke-direct {p0, v2, v3, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@88
    move-result-wide v4

    #@89
    monitor-exit p0

    #@8a
    return-wide v4

    #@8b
    .line 3793
    .end local v2    # "nanoTime":J
    :cond_5
    :try_start_3
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8d
    monitor-exit p0

    #@8e
    return-wide v4

    #@8f
    .line 3802
    .restart local v2    # "nanoTime":J
    :cond_6
    :try_start_4
    const-string/jumbo v1, "playing"
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@92
    goto :goto_0

    #@93
    .line 3803
    :catch_0
    move-exception v0

    #@94
    .line 3804
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@96
    if-eqz v1, :cond_8

    #@98
    .line 3806
    const/4 v1, 0x0

    #@99
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@9b
    .line 3807
    invoke-direct {p0, v2, v3, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J

    #@9e
    .line 3808
    const/4 v1, 0x1

    #@9f
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@a1
    .line 3809
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@a3
    if-eqz v1, :cond_7

    #@a5
    const-string/jumbo v1, "MTP"

    #@a8
    new-instance v4, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v5, "illegal state, but pausing: estimating at "

    #@b0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v4

    #@b4
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@b6
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v4

    #@be
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 3810
    :cond_7
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c3
    monitor-exit p0

    #@c4
    return-wide v4

    #@c5
    .line 3813
    :cond_8
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c6
    .line 3789
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "nanoTime":J
    :catchall_0
    move-exception v1

    #@c7
    monitor-exit p0

    #@c8
    throw v1

    #@c9
    .line 3827
    .restart local v2    # "nanoTime":J
    :cond_9
    const-wide/16 v4, 0x0

    #@cb
    :try_start_7
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@cd
    goto :goto_1
.end method

.method public notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@0
    .prologue
    .line 3661
    monitor-enter p0

    #@1
    .line 3662
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "MTP"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "notifyAt "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 3663
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@21
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    #@24
    move-result v1

    #@25
    aput-wide p1, v0, v1

    #@27
    .line 3664
    const-wide/16 v0, 0x0

    #@29
    const/4 v2, 0x0

    #@2a
    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit p0

    #@2e
    .line 3660
    return-void

    #@2f
    .line 3661
    :catchall_0
    move-exception v0

    #@30
    monitor-exit p0

    #@31
    throw v0
.end method

.method public onBuffering(Z)V
    .locals 3
    .param p1, "buffering"    # Z

    #@0
    .prologue
    .line 3563
    monitor-enter p0

    #@1
    .line 3564
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "MTP"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "onBuffering: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 3565
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    #@21
    .line 3566
    const-wide/16 v0, 0x0

    #@23
    const/4 v2, 0x1

    #@24
    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 3562
    return-void

    #@29
    .line 3563
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public onNewPlayer()V
    .locals 3

    #@0
    .prologue
    .line 3594
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3595
    monitor-enter p0

    #@5
    .line 3596
    const/4 v0, 0x0

    #@6
    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@8
    .line 3597
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@b
    .line 3598
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    #@e
    .line 3599
    const-wide/16 v0, 0x0

    #@10
    const/4 v2, 0x3

    #@11
    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 3593
    :cond_0
    return-void

    #@16
    .line 3595
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public onPaused(Z)V
    .locals 3
    .param p1, "paused"    # Z

    #@0
    .prologue
    .line 3547
    monitor-enter p0

    #@1
    .line 3548
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "MTP"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "onPaused: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 3549
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 3550
    const/4 v0, 0x0

    #@24
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@26
    .line 3551
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@29
    .line 3552
    const-wide/16 v0, 0x0

    #@2b
    const/4 v2, 0x3

    #@2c
    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :goto_0
    monitor-exit p0

    #@30
    .line 3546
    return-void

    #@31
    .line 3554
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@33
    .line 3555
    const/4 v0, 0x0

    #@34
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@36
    .line 3556
    const-wide/16 v0, 0x0

    #@38
    const/4 v2, 0x1

    #@39
    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 3547
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit p0

    #@3f
    throw v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    .line 3585
    monitor-enter p0

    #@1
    .line 3586
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@4
    .line 3587
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@7
    .line 3588
    const-wide/16 v0, 0x0

    #@9
    const/4 v2, 0x3

    #@a
    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 3584
    return-void

    #@f
    .line 3585
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public onStopped()V
    .locals 3

    #@0
    .prologue
    .line 3572
    monitor-enter p0

    #@1
    .line 3573
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "MTP"

    #@8
    const-string/jumbo v1, "onStopped"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 3574
    :cond_0
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@11
    .line 3575
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@14
    .line 3576
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@17
    .line 3577
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    #@1a
    .line 3578
    const-wide/16 v0, 0x0

    #@1c
    const/4 v2, 0x2

    #@1d
    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 3571
    return-void

    #@22
    .line 3572
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method public scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@0
    .prologue
    .line 3669
    monitor-enter p0

    #@1
    .line 3670
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    const-string/jumbo v1, "MTP"

    #@8
    const-string/jumbo v2, "scheduleUpdate"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 3671
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    #@11
    move-result v0

    #@12
    .line 3673
    .local v0, "i":I
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@14
    if-nez v1, :cond_1

    #@16
    .line 3674
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@18
    const-wide/16 v2, 0x0

    #@1a
    aput-wide v2, v1, v0

    #@1c
    .line 3675
    const-wide/16 v2, 0x0

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_1
    monitor-exit p0

    #@23
    .line 3668
    return-void

    #@24
    .line 3669
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@25
    monitor-exit p0

    #@26
    throw v1
.end method
