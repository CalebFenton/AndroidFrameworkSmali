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

.field private static final NOTIFY_TRACK_DATA:I = 0x4

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
.method static synthetic -get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

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

.method static synthetic -wrap3(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V
    .locals 0
    .param p1, "trackData"    # Landroid/util/Pair;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

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
    .line 3562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 3535
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@9
    .line 3537
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@b
    .line 3538
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@d
    .line 3548
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    #@f
    .line 3549
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@11
    .line 3550
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@13
    .line 3560
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@15
    .line 3563
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    #@17
    .line 3565
    const/4 v2, 0x1

    #@18
    const/4 v3, 0x0

    #@19
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 3572
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1f
    move-result-object v1

    #@20
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    #@22
    .line 3573
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@25
    move-result-object v1

    #@26
    if-nez v1, :cond_0

    #@28
    .line 3575
    new-instance v2, Landroid/os/HandlerThread;

    #@2a
    const-string/jumbo v3, "MediaPlayerMTPEventThread"

    #@2d
    .line 3576
    const/4 v4, -0x2

    #@2e
    .line 3575
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@31
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@33
    .line 3577
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@35
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    #@38
    .line 3578
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@3a
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3d
    move-result-object v1

    #@3e
    .line 3580
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    #@40
    invoke-direct {v2, p0, v1}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    #@43
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@45
    .line 3582
    new-array v2, v5, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@47
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@49
    .line 3583
    new-array v2, v5, [J

    #@4b
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@4d
    .line 3584
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@4f
    .line 3585
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@51
    .line 3562
    return-void

    #@52
    .line 3566
    .end local v1    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v0

    #@53
    .line 3568
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
    .line 3847
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@4
    if-eqz v4, :cond_1

    #@6
    .line 3848
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@8
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@a
    add-long/2addr v4, v6

    #@b
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@d
    .line 3862
    :cond_0
    :goto_0
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@f
    return-wide v4

    #@10
    .line 3850
    :cond_1
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    #@12
    sub-long v4, p1, v4

    #@14
    const-wide/16 v6, 0x3e8

    #@16
    div-long v2, v4, v6

    #@18
    .line 3851
    .local v2, "timeSinceRead":J
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@1a
    add-long/2addr v4, v2

    #@1b
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@1d
    .line 3852
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@1f
    cmp-long v4, v4, v8

    #@21
    if-lez v4, :cond_0

    #@23
    .line 3854
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@25
    const-wide/16 v6, 0x2

    #@27
    div-long v6, v2, v6

    #@29
    sub-long v0, v4, v6

    #@2b
    .line 3855
    .local v0, "adjustment":J
    cmp-long v4, v0, v8

    #@2d
    if-gtz v4, :cond_2

    #@2f
    .line 3856
    iput-wide v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@31
    goto :goto_0

    #@32
    .line 3858
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
    .line 3677
    const/4 v5, 0x0

    #@3
    :try_start_0
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 3679
    const/4 v5, 0x1

    #@6
    const/4 v6, 0x0

    #@7
    :try_start_1
    invoke-virtual {p0, v5, v6}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    #@a
    move-result-wide v2

    #@b
    .line 3680
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
    .line 3682
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
    .line 3683
    .local v1, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v1, :cond_2

    #@32
    .end local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "timeUs":J
    :cond_1
    :goto_1
    monitor-exit p0

    #@33
    .line 3676
    return-void

    #@34
    .line 3686
    .restart local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .restart local v2    # "timeUs":J
    :cond_2
    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    .line 3682
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 3688
    .end local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "timeUs":J
    :catch_0
    move-exception v0

    #@3b
    .line 3690
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
    .line 3691
    :cond_3
    const/4 v4, 0x1

    #@49
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@4b
    .line 3692
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
    .line 3703
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
    .line 3704
    .local v0, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v0, :cond_1

    #@b
    .end local v0    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_0
    monitor-exit p0

    #@c
    .line 3702
    return-void

    #@d
    .line 3707
    .restart local v0    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 3703
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
    .line 3784
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
    .line 3791
    .local v12, "nowUs":J
    :goto_0
    move-wide v10, v12

    #@b
    .line 3793
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
    .line 3795
    return-void

    #@13
    .line 3785
    .end local v10    # "nextTimeUs":J
    .end local v12    # "nowUs":J
    :catch_0
    move-exception v5

    #@14
    .line 3787
    .local v5, "e":Ljava/lang/IllegalStateException;
    const/4 v15, 0x1

    #@15
    :try_start_2
    move-object/from16 v0, p0

    #@17
    iput-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    #@19
    .line 3788
    const/4 v15, 0x1

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@1e
    .line 3789
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
    .line 3798
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    .restart local v10    # "nextTimeUs":J
    :cond_0
    move-object/from16 v0, p0

    #@2a
    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    #@2c
    if-eqz v15, :cond_4

    #@2e
    .line 3799
    new-instance v14, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    .line 3800
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
    .line 3801
    const-string/jumbo v18, ") from {"

    #@56
    .line 3800
    move-object/from16 v0, v18

    #@58
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 3802
    const/4 v6, 0x1

    #@5c
    .line 3803
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
    .line 3804
    .local v16, "time":J
    const-wide/16 v20, -0x1

    #@70
    cmp-long v20, v16, v20

    #@72
    if-nez v20, :cond_1

    #@74
    .line 3803
    :goto_2
    add-int/lit8 v15, v15, 0x1

    #@76
    goto :goto_1

    #@77
    .line 3807
    :cond_1
    if-nez v6, :cond_2

    #@79
    const-string/jumbo v20, ", "

    #@7c
    move-object/from16 v0, v20

    #@7e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 3808
    :cond_2
    move-wide/from16 v0, v16

    #@83
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@86
    .line 3809
    const/4 v6, 0x0

    #@87
    goto :goto_2

    #@88
    .line 3811
    .end local v16    # "time":J
    :cond_3
    const-string/jumbo v15, "}"

    #@8b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 3812
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
    .line 3816
    .end local v6    # "first":Z
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v4, Ljava/util/Vector;

    #@9c
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@9f
    .line 3817
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
    .line 3818
    move-object/from16 v0, p0

    #@a9
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@ab
    aget-object v15, v15, v7

    #@ad
    if-nez v15, :cond_7

    #@af
    .line 3832
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
    .line 3837
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
    .line 3841
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
    .line 3842
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
    .line 3821
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
    .line 3817
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    #@e9
    goto :goto_3

    #@ea
    .line 3823
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
    .line 3824
    move-object/from16 v0, p0

    #@fa
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@fc
    aget-object v15, v15, v7

    #@fe
    invoke-virtual {v4, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@101
    .line 3825
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
    .line 3826
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
    .line 3827
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
    .line 3828
    :cond_c
    move-object/from16 v0, p0

    #@12b
    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@12d
    aget-wide v10, v15, v7

    #@12f
    goto :goto_6

    #@130
    .line 3834
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
    .line 3835
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
    .line 3780
    return-void
.end method

.method private declared-synchronized notifyTrackData(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/media/SubtitleTrack;",
            "[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    monitor-enter p0

    #@1
    .line 3697
    :try_start_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3
    check-cast v1, Landroid/media/SubtitleTrack;

    #@5
    .line 3698
    .local v1, "track":Landroid/media/SubtitleTrack;
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@7
    check-cast v0, [B

    #@9
    .line 3699
    .local v0, "data":[B
    const-wide/16 v2, -0x1

    #@b
    const/4 v4, 0x1

    #@c
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 3696
    return-void

    #@11
    .end local v0    # "data":[B
    .end local v1    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v2

    #@12
    monitor-exit p0

    #@13
    throw v2
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3712
    const/4 v0, 0x0

    #@2
    .line 3713
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@4
    array-length v3, v3

    #@5
    if-ge v0, v3, :cond_0

    #@7
    .line 3714
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
    .line 3720
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@15
    array-length v3, v3

    #@16
    if-lt v0, v3, :cond_1

    #@18
    .line 3722
    add-int/lit8 v3, v0, 0x1

    #@1a
    new-array v1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@1c
    .line 3723
    .local v1, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v0, 0x1

    #@1e
    new-array v2, v3, [J

    #@20
    .line 3724
    .local v2, "newTimes":[J
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@22
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@24
    array-length v4, v4

    #@25
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 3725
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@2a
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@2c
    array-length v4, v4

    #@2d
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@30
    .line 3726
    iput-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@32
    .line 3727
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@34
    .line 3730
    .end local v1    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "newTimes":[J
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@36
    aget-object v3, v3, v0

    #@38
    if-nez v3, :cond_2

    #@3a
    .line 3731
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@3c
    aput-object p1, v3, v0

    #@3e
    .line 3732
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@40
    const-wide/16 v4, -0x1

    #@42
    aput-wide v4, v3, v0

    #@44
    .line 3734
    :cond_2
    return v0

    #@45
    .line 3713
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
    .line 3590
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 3591
    if-eqz p1, :cond_0

    #@8
    if-ne p1, v4, :cond_1

    #@a
    .line 3592
    :cond_0
    return-void

    #@b
    .line 3595
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
    .line 3596
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@36
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@39
    .line 3597
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@3b
    invoke-virtual {v1, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@3e
    move-result-object v0

    #@3f
    .line 3598
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
    .line 3588
    return-void
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@0
    .prologue
    .line 3760
    monitor-enter p0

    #@1
    .line 3761
    const/4 v0, 0x0

    #@2
    .line 3762
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 3763
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@9
    aget-object v1, v1, v0

    #@b
    if-ne v1, p1, :cond_1

    #@d
    .line 3764
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    #@f
    add-int/lit8 v2, v0, 0x1

    #@11
    .line 3765
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
    .line 3764
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 3766
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@1e
    add-int/lit8 v2, v0, 0x1

    #@20
    .line 3767
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
    .line 3766
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@2b
    .line 3768
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
    .line 3769
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
    .line 3776
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
    .line 3759
    return-void

    #@48
    .line 3771
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
    .line 3762
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 3760
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
    .line 3603
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@7
    .line 3604
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 3605
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@d
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    #@10
    .line 3606
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@12
    .line 3602
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 3612
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3613
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    #@6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    #@9
    .line 3611
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
    .line 3867
    monitor-enter p0

    #@2
    .line 3870
    :try_start_0
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    if-eqz p1, :cond_5

    #@8
    .line 3874
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v2

    #@c
    .line 3875
    .local v2, "nanoTime":J
    if-nez p1, :cond_1

    #@e
    .line 3876
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
    .line 3878
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
    .line 3879
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
    .line 3880
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
    .line 3893
    :cond_3
    :try_start_2
    iput-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    #@5f
    .line 3894
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
    .line 3896
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    #@6b
    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    #@6d
    sub-long/2addr v4, v6

    #@6e
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@70
    .line 3897
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    #@72
    const-wide/32 v6, 0xf4240

    #@75
    cmp-long v1, v4, v6

    #@77
    if-lez v1, :cond_4

    #@79
    .line 3900
    const/4 v1, 0x0

    #@7a
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@7c
    .line 3901
    const/4 v1, 0x1

    #@7d
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@7f
    .line 3902
    const-wide/16 v4, 0x0

    #@81
    const/4 v1, 0x3

    #@82
    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    #@85
    .line 3909
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
    .line 3871
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
    .line 3880
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
    .line 3881
    :catch_0
    move-exception v0

    #@94
    .line 3882
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@96
    if-eqz v1, :cond_8

    #@98
    .line 3884
    const/4 v1, 0x0

    #@99
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@9b
    .line 3885
    invoke-direct {p0, v2, v3, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J

    #@9e
    .line 3886
    const/4 v1, 0x1

    #@9f
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@a1
    .line 3887
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
    .line 3888
    :cond_7
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c3
    monitor-exit p0

    #@c4
    return-wide v4

    #@c5
    .line 3891
    :cond_8
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c6
    .line 3867
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "nanoTime":J
    :catchall_0
    move-exception v1

    #@c7
    monitor-exit p0

    #@c8
    throw v1

    #@c9
    .line 3905
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
    .line 3739
    monitor-enter p0

    #@1
    .line 3740
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
    .line 3741
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@21
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    #@24
    move-result v1

    #@25
    aput-wide p1, v0, v1

    #@27
    .line 3742
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
    .line 3738
    return-void

    #@2f
    .line 3739
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
    .line 3635
    monitor-enter p0

    #@1
    .line 3636
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
    .line 3637
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    #@21
    .line 3638
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
    .line 3634
    return-void

    #@29
    .line 3635
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
    .line 3666
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3667
    monitor-enter p0

    #@5
    .line 3668
    const/4 v0, 0x0

    #@6
    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@8
    .line 3669
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@b
    .line 3670
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    #@e
    .line 3671
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
    .line 3665
    :cond_0
    return-void

    #@16
    .line 3667
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
    .line 3619
    monitor-enter p0

    #@1
    .line 3620
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
    .line 3621
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 3622
    const/4 v0, 0x0

    #@24
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@26
    .line 3623
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@29
    .line 3624
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
    .line 3618
    return-void

    #@31
    .line 3626
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    #@33
    .line 3627
    const/4 v0, 0x0

    #@34
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@36
    .line 3628
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
    .line 3619
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
    .line 3657
    monitor-enter p0

    #@1
    .line 3658
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@4
    .line 3659
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@7
    .line 3660
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
    .line 3656
    return-void

    #@f
    .line 3657
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
    .line 3644
    monitor-enter p0

    #@1
    .line 3645
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
    .line 3646
    :cond_0
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    #@11
    .line 3647
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@14
    .line 3648
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    #@17
    .line 3649
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    #@1a
    .line 3650
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
    .line 3643
    return-void

    #@22
    .line 3644
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
    .line 3747
    monitor-enter p0

    #@1
    .line 3748
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
    .line 3749
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    #@11
    move-result v0

    #@12
    .line 3751
    .local v0, "i":I
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    #@14
    if-nez v1, :cond_1

    #@16
    .line 3752
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    #@18
    const-wide/16 v2, 0x0

    #@1a
    aput-wide v2, v1, v0

    #@1c
    .line 3753
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
    .line 3746
    return-void

    #@24
    .line 3747
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@25
    monitor-exit p0

    #@26
    throw v1
.end method
