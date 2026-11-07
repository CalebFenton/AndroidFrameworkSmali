.class public Landroid/media/tv/tuner/dvr/DvrPlayback;
.super Ljava/lang/Object;
.source "DvrPlayback.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/dvr/DvrPlayback$PlaybackStatus;
    }
.end annotation


# static fields
.field public static final whitelist PLAYBACK_STATUS_ALMOST_EMPTY:I = 0x2

.field public static final whitelist PLAYBACK_STATUS_ALMOST_FULL:I = 0x4

.field public static final whitelist PLAYBACK_STATUS_EMPTY:I = 0x1

.field public static final whitelist PLAYBACK_STATUS_FULL:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "TvTunerPlayback"

.field private static blacklist sInstantId:I


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

.field private final blacklist mListenerLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J

.field private blacklist mSegmentId:I

.field private blacklist mUnderflow:I

.field private blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$iPKk6gYgL0KbRpwD7rJSqepibZs(Landroid/media/tv/tuner/dvr/DvrPlayback;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrPlayback;->lambda$onPlaybackStatusChanged$0(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    const/4 v0, 0x0

    sput v0, Landroid/media/tv/tuner/dvr/DvrPlayback;->sInstantId:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListenerLock:Ljava/lang/Object;

    .line 106
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUserId:I

    .line 107
    sget v0, Landroid/media/tv/tuner/dvr/DvrPlayback;->sInstantId:I

    const v1, 0xffff

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    .line 108
    sget v0, Landroid/media/tv/tuner/dvr/DvrPlayback;->sInstantId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/tv/tuner/dvr/DvrPlayback;->sInstantId:I

    .line 109
    return-void
.end method

.method private synthetic blacklist lambda$onPlaybackStatusChanged$0(I)V
    .registers 4
    .param p1, "status"    # I

    .line 127
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    if-eqz v1, :cond_c

    .line 129
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;->onPlaybackStatusChanged(I)V

    .line 131
    :cond_c
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private native blacklist nativeAttachFilter(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeConfigureDvr(Landroid/media/tv/tuner/dvr/DvrSettings;)I
.end method

.method private native blacklist nativeDetachFilter(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeFlushDvr()I
.end method

.method private native blacklist nativeRead(J)J
.end method

.method private native blacklist nativeRead([BJJ)J
.end method

.method private native blacklist nativeSeek(J)J
.end method

.method private native blacklist nativeSetFileDescriptor(I)V
.end method

.method private native blacklist nativeSetStatusCheckIntervalHint(J)I
.end method

.method private native blacklist nativeStartDvr()I
.end method

.method private native blacklist nativeStopDvr()I
.end method

.method private blacklist onPlaybackStatusChanged(I)V
    .registers 5
    .param p1, "status"    # I

    .line 121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 122
    iget v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUnderflow:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUnderflow:I

    .line 124
    :cond_8
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_b
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    if-eqz v1, :cond_1d

    .line 126
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/dvr/DvrPlayback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/dvr/DvrPlayback$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/dvr/DvrPlayback;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    :cond_1d
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public whitelist attachFilter(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 3
    .param p1, "filter"    # Landroid/media/tv/tuner/filter/Filter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 264
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeClose()I

    move-result v0

    .line 265
    .local v0, "res":I
    if-eqz v0, :cond_b

    .line 266
    const-string v1, "failed to close DVR playback"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 268
    :cond_b
    return-void
.end method

.method public whitelist configure(Landroid/media/tv/tuner/dvr/DvrSettings;)I
    .registers 3
    .param p1, "settings"    # Landroid/media/tv/tuner/dvr/DvrSettings;

    .line 178
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeConfigureDvr(Landroid/media/tv/tuner/dvr/DvrSettings;)I

    move-result v0

    return v0
.end method

.method public whitelist detachFilter(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 3
    .param p1, "filter"    # Landroid/media/tv/tuner/filter/Filter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist flush()I
    .registers 2

    .line 256
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeFlushDvr()I

    move-result v0

    return v0
.end method

.method public whitelist read(J)J
    .registers 5
    .param p1, "size"    # J

    .line 292
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeRead(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist read([BJJ)J
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 305
    add-long v0, p4, p2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    .line 309
    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeRead([BJJ)J

    move-result-wide v0

    return-wide v0

    .line 306
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist seek(J)J
    .registers 5
    .param p1, "position"    # J

    .line 320
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeSeek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 281
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeSetFileDescriptor(I)V

    .line 282
    return-void
.end method

.method public blacklist setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    .line 114
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 116
    iput-object p2, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mListener:Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist setPlaybackBufferStatusCheckIntervalHint(J)I
    .registers 5
    .param p1, "durationInMs"    # J

    .line 202
    const/high16 v0, 0x30000

    const-string v1, "Set status check interval hint"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_c
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeSetStatusCheckIntervalHint(J)I

    move-result v0

    return v0
.end method

.method public whitelist start()I
    .registers 9

    .line 219
    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    iget v1, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUnderflow:I

    .line 221
    const-string v0, "TvTunerPlayback"

    const-string v1, "Write Stats Log for Playback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v3, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUserId:I

    iget v6, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    .line 223
    const/16 v2, 0x117

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 226
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeStartDvr()I

    move-result v0

    return v0
.end method

.method public whitelist stop()I
    .registers 9

    .line 239
    const-string v0, "TvTunerPlayback"

    const-string v1, "Write Stats Log for Playback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget v3, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUserId:I

    iget v6, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mSegmentId:I

    iget v7, p0, Landroid/media/tv/tuner/dvr/DvrPlayback;->mUnderflow:I

    .line 241
    const/16 v2, 0x117

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 244
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrPlayback;->nativeStopDvr()I

    move-result v0

    return v0
.end method
