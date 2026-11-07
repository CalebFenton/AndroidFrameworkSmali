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
.field private static final greylist-max-o MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final greylist-max-o MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final greylist-max-o NOTIFY:I = 0x1

.field private static final greylist-max-o NOTIFY_SEEK:I = 0x3

.field private static final greylist-max-o NOTIFY_STOP:I = 0x2

.field private static final greylist-max-o NOTIFY_TIME:I = 0x0

.field private static final greylist-max-o NOTIFY_TRACK_DATA:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MTP"

.field private static final greylist-max-o TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public greylist-max-o DEBUG:Z

.field private greylist-max-o mBuffering:Z

.field private greylist-max-o mEventHandler:Landroid/os/Handler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private greylist-max-o mLastReportedTime:J

.field private greylist-max-o mLastTimeUs:J

.field private greylist-max-o mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private greylist-max-o mPaused:Z

.field private greylist-max-o mPausing:Z

.field private greylist-max-o mPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mRefresh:Z

.field private greylist-max-o mSeeking:Z

.field private greylist-max-o mStopped:Z

.field private greylist-max-o mTimes:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySeek(Landroid/media/MediaPlayer$TimeProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStop(Landroid/media/MediaPlayer$TimeProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTimedEvent(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTrackData(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/MediaPlayer;)V
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 5901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5877
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 5879
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 5880
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5888
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 5889
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5890
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5899
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 5902
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 5904
    :try_start_17
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 5908
    goto :goto_1e

    .line 5905
    :catch_1b
    move-exception v4

    .line 5907
    .local v4, "e":Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 5911
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :goto_1e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    .local v4, "looper":Landroid/os/Looper;
    if-nez v2, :cond_41

    .line 5912
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v4, v2

    if-nez v2, :cond_41

    .line 5914
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "MediaPlayerMTPEventThread"

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5916
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 5917
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 5919
    :cond_41
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v4}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 5921
    new-array v2, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 5922
    new-array v2, v3, [J

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 5923
    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 5924
    return-void
.end method

.method private declared-synchronized greylist-max-o notifySeek()V
    .registers 9

    monitor-enter p0

    .line 6022
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_4a

    .line 6024
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    .line 6025
    .local v2, "timeUs":J
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_25

    const-string v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSeekComplete at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6027
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    :cond_25
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v4

    move v6, v0

    :goto_29
    if-ge v6, v5, :cond_36

    aget-object v7, v4, v6

    .line 6028
    .local v7, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v7, :cond_30

    .line 6029
    goto :goto_36

    .line 6031
    :cond_30
    invoke-interface {v7, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_33} :catch_37
    .catchall {:try_start_5 .. :try_end_33} :catchall_4a

    .line 6027
    .end local v7    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 6038
    .end local v2    # "timeUs":J
    :cond_36
    :goto_36
    goto :goto_48

    .line 6033
    :catch_37
    move-exception v2

    .line 6035
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_38
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_43

    const-string v3, "MTP"

    const-string v4, "onSeekComplete but no player"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    :cond_43
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6037
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_4a

    .line 6039
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_48
    monitor-exit p0

    return-void

    .line 6021
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private declared-synchronized greylist-max-o notifyStop()V
    .registers 5

    monitor-enter p0

    .line 6048
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 6049
    .local v3, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v3, :cond_c

    .line 6050
    goto :goto_12

    .line 6052
    :cond_c
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    .line 6048
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6054
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 6047
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private declared-synchronized greylist-max-o notifyTimedEvent(Z)V
    .registers 20
    .param p1, "refreshTime"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 6129
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_a} :catch_e
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    .line 6135
    .local v4, "nowUs":J
    goto :goto_17

    .line 6128
    .end local v4    # "nowUs":J
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    .end local p1    # "refreshTime":Z
    :catchall_b
    move-exception v0

    goto/16 :goto_11d

    .line 6130
    .restart local p1    # "refreshTime":Z
    :catch_e
    move-exception v0

    .line 6132
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_f
    iput-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 6133
    iput-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6134
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    .line 6136
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "nowUs":J
    :goto_17
    move-wide v6, v4

    .line 6138
    .local v6, "nextTimeUs":J
    iget-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_b

    if-eqz v0, :cond_1e

    .line 6140
    monitor-exit p0

    return-void

    .line 6143
    .restart local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    :cond_1e
    :try_start_1e
    iget-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    const-wide/16 v8, -0x1

    if-eqz v0, :cond_7b

    .line 6144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6145
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v10, "notifyTimedEvent("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 6146
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") from {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6147
    const/4 v10, 0x1

    .line 6148
    .local v10, "first":Z
    iget-object v11, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v12, v11

    const/4 v13, 0x0

    :goto_49
    if-ge v13, v12, :cond_6a

    aget-wide v14, v11, v13

    .line 6149
    .local v14, "time":J
    cmp-long v16, v14, v8

    if-nez v16, :cond_54

    .line 6150
    move-wide/from16 v16, v8

    goto :goto_65

    .line 6152
    :cond_54
    if-nez v10, :cond_5e

    move-wide/from16 v16, v8

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    :cond_5e
    move-wide/from16 v16, v8

    .line 6153
    :goto_60
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6154
    const/4 v8, 0x0

    move v10, v8

    .line 6148
    .end local v14    # "time":J
    :goto_65
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v8, v16

    goto :goto_49

    .line 6156
    :cond_6a
    move-wide/from16 v16, v8

    const-string v8, "}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6157
    const-string v8, "MTP"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 6143
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "first":Z
    :cond_7b
    move-wide/from16 v16, v8

    .line 6160
    :goto_7d
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 6162
    .local v0, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    const/4 v8, 0x0

    .local v8, "ix":I
    :goto_83
    iget-object v9, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v9, v9

    if-ge v8, v9, :cond_ce

    .line 6163
    iget-object v9, v1, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v9, v9, v8

    if-nez v9, :cond_8f

    .line 6164
    goto :goto_ce

    .line 6166
    :cond_8f
    iget-object v9, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v9, v9, v8

    cmp-long v9, v9, v16

    if-gtz v9, :cond_98

    goto :goto_cb

    .line 6168
    :cond_98
    iget-object v9, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v9, v9, v8

    const-wide/16 v11, 0x3e8

    add-long/2addr v11, v4

    cmp-long v9, v9, v11

    if-gtz v9, :cond_ba

    .line 6169
    iget-object v9, v1, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v9, v9, v8

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 6170
    iget-boolean v9, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v9, :cond_b5

    const-string v9, "MTP"

    const-string v10, "removed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6171
    :cond_b5
    iget-object v9, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aput-wide v16, v9, v8

    goto :goto_cb

    .line 6172
    :cond_ba
    cmp-long v9, v6, v4

    if-eqz v9, :cond_c6

    iget-object v9, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v9, v9, v8

    cmp-long v9, v9, v6

    if-gez v9, :cond_cb

    .line 6173
    :cond_c6
    iget-object v9, v1, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v9, v9, v8

    move-wide v6, v9

    .line 6162
    :cond_cb
    :goto_cb
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 6177
    .end local v8    # "ix":I
    :cond_ce
    :goto_ce
    cmp-long v8, v6, v4

    if-lez v8, :cond_102

    iget-boolean v8, v1, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-nez v8, :cond_102

    .line 6179
    iget-boolean v3, v1, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_fc

    const-string v3, "MTP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scheduling for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6180
    :cond_fc
    iget-object v3, v1, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaPlayer;->notifyAt(J)V

    goto :goto_107

    .line 6182
    :cond_102
    iget-object v8, v1, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6186
    :goto_107
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6187
    .local v8, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v8, v4, v5}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_11a
    .catchall {:try_start_1e .. :try_end_11a} :catchall_b

    .line 6188
    .end local v8    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    goto :goto_10b

    .line 6189
    :cond_11b
    monitor-exit p0

    return-void

    .line 6128
    .end local v0    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v4    # "nowUs":J
    .end local v6    # "nextTimeUs":J
    .end local p1    # "refreshTime":Z
    :goto_11d
    :try_start_11d
    monitor-exit p0
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_b

    throw v0
.end method

.method private declared-synchronized greylist-max-o notifyTrackData(Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/media/SubtitleTrack;",
            "[B>;)V"
        }
    .end annotation

    .local p1, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    monitor-enter p0

    .line 6042
    :try_start_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 6043
    .local v0, "track":Landroid/media/SubtitleTrack;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    .line 6044
    .local v1, "data":[B
    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 6045
    monitor-exit p0

    return-void

    .line 6041
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v1    # "data":[B
    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    .end local p1    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method private greylist-max-o registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .registers 8
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6057
    const/4 v0, 0x0

    .line 6058
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 6059
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_16

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_13

    .line 6060
    goto :goto_16

    .line 6058
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6065
    :cond_16
    :goto_16
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-lt v0, v1, :cond_38

    .line 6066
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6068
    .local v1, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [J

    .line 6069
    .local v2, "newTimes":[J
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6070
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6071
    iput-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6072
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 6075
    .end local v1    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "newTimes":[J
    :cond_38
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_48

    .line 6076
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v1, v0

    .line 6077
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 6079
    :cond_48
    return v0
.end method

.method private greylist-max-o scheduleNotification(IJ)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    .line 5928
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 5929
    return-void

    .line 5932
    :cond_7
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTP"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5933
    :cond_2d
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5934
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5935
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5936
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6105
    monitor-enter p0

    .line 6106
    const/4 v0, 0x0

    .line 6107
    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    .line 6108
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_41

    .line 6109
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6111
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6113
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 6114
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    .line 6115
    goto :goto_4b

    .line 6116
    :cond_41
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_48

    .line 6117
    goto :goto_4b

    .line 6107
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6121
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6122
    .end local v0    # "i":I
    monitor-exit p0

    .line 6123
    return-void

    .line 6122
    :catchall_53
    move-exception v0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public greylist-max-o close()V
    .registers 3

    .line 5940
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5941
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_12

    .line 5942
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5943
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5945
    :cond_12
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 5949
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    .line 5950
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5952
    :cond_9
    return-void
.end method

.method public greylist-max-o getCurrentTimeUs(ZZ)J
    .registers 10
    .param p1, "refreshTime"    # Z
    .param p2, "monotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 6193
    monitor-enter p0

    .line 6196
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    .line 6197
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_bb

    return-wide v0

    .line 6201
    :cond_b
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_d
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 6202
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    if-eqz v2, :cond_26

    goto :goto_28

    :cond_26
    move v2, v1

    goto :goto_29

    :cond_28
    :goto_28
    move v2, v0

    :goto_29
    iput-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6203
    iget-boolean v2, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v2, :cond_56

    const-string v2, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_3d

    const-string v4, "paused"

    goto :goto_3f

    :cond_3d
    const-string v4, "playing"

    :goto_3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_56} :catch_80
    .catchall {:try_start_d .. :try_end_56} :catchall_bb

    .line 6217
    :cond_56
    nop

    .line 6218
    if-eqz p2, :cond_78

    :try_start_59
    iget-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_78

    .line 6220
    iget-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_7c

    .line 6223
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6224
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6225
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_7c

    .line 6228
    :cond_78
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 6231
    :cond_7c
    :goto_7c
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 6204
    :catch_80
    move-exception v2

    .line 6205
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v3, :cond_b9

    .line 6207
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 6208
    if-eqz p2, :cond_91

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_95

    .line 6209
    :cond_91
    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 6211
    :cond_95
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 6212
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_b5

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state, but pausing: estimating at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6213
    :cond_b5
    iget-wide v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide v0

    .line 6216
    :cond_b9
    nop

    .end local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    .end local p1    # "refreshTime":Z
    .end local p2    # "monotonic":Z
    throw v2

    .line 6232
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/media/MediaPlayer$TimeProvider;
    .restart local p1    # "refreshTime":Z
    .restart local p2    # "monotonic":Z
    :catchall_bb
    move-exception v0

    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_59 .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method public greylist-max-o notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 7
    .param p1, "timeUs"    # J
    .param p3, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6084
    monitor-enter p0

    .line 6085
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6086
    :cond_1d
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    .line 6087
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6088
    monitor-exit p0

    .line 6089
    return-void

    .line 6088
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public greylist-max-o onBuffering(Z)V
    .registers 5
    .param p1, "buffering"    # Z

    .line 5980
    monitor-enter p0

    .line 5981
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5982
    :cond_1d
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 5983
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5984
    monitor-exit p0

    .line 5985
    return-void

    .line 5984
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public greylist-max-o onNewPlayer()V
    .registers 4

    .line 6011
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_18

    .line 6012
    monitor-enter p0

    .line 6013
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6014
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6015
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 6016
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6017
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0

    .line 6019
    :cond_18
    :goto_18
    return-void
.end method

.method public greylist-max-o onNotifyTime()V
    .registers 4

    .line 5956
    monitor-enter p0

    .line 5957
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "MTP"

    const-string v1, "onNotifyTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    :cond_c
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5959
    monitor-exit p0

    .line 5960
    return-void

    .line 5959
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public greylist-max-o onPaused(Z)V
    .registers 6
    .param p1, "paused"    # Z

    .line 5964
    monitor-enter p0

    .line 5965
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5966
    :cond_1d
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    .line 5967
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5968
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5969
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_35

    .line 5971
    :cond_2e
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 5972
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5973
    invoke-direct {p0, v3, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5975
    :goto_35
    monitor-exit p0

    .line 5976
    return-void

    .line 5975
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public whitelist onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 6002
    monitor-enter p0

    .line 6003
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 6004
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 6005
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6006
    monitor-exit p0

    .line 6007
    return-void

    .line 6006
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public greylist-max-o onStopped()V
    .registers 4

    .line 5989
    monitor-enter p0

    .line 5990
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "MTP"

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5991
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 5992
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 5993
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 5994
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 5995
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 5996
    monitor-exit p0

    .line 5997
    return-void

    .line 5996
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public greylist-max-o scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 6092
    monitor-enter p0

    .line 6093
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "MTP"

    const-string v1, "scheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6094
    :cond_c
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    .line 6096
    .local v0, "i":I
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-nez v1, :cond_1e

    .line 6097
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 6098
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 6100
    .end local v0    # "i":I
    :cond_1e
    monitor-exit p0

    .line 6101
    return-void

    .line 6100
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method
