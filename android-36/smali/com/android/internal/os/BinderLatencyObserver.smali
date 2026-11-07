.class public Lcom/android/internal/os/BinderLatencyObserver;
.super Ljava/lang/Object;
.source "BinderLatencyObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;,
        Lcom/android/internal/os/BinderLatencyObserver$Injector;
    }
.end annotation


# static fields
.field public static final blacklist BUCKET_COUNT_DEFAULT:I = 0x64

.field public static final blacklist BUCKET_SCALE_FACTOR_DEFAULT:F = 1.125f

.field public static final blacklist FIRST_BUCKET_SIZE_DEFAULT:I = 0x5

.field private static final blacklist LAST_HISTOGRAM_BUFFER_SIZE_BYTES:I = 0x3e8

.field private static final blacklist MAX_ATOM_SIZE_BYTES:I = 0xfe0

.field public static final blacklist PERIODIC_SAMPLING_INTERVAL_DEFAULT:I = 0xa

.field public static final blacklist SHARDING_MODULO_DEFAULT:I = 0x1

.field public static final blacklist STATSD_PUSH_INTERVAL_MINUTES_DEFAULT:I = 0x168

.field private static final blacklist TAG:Ljava/lang/String; = "BinderLatencyObserver"


# instance fields
.field private blacklist mBucketCount:I

.field private blacklist mBucketScaleFactor:F

.field private blacklist mFirstBucketSize:I

.field private blacklist mLatencyBuckets:Lcom/android/internal/os/BinderLatencyBuckets;

.field private final blacklist mLatencyHistograms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mLatencyObserverHandler:Landroid/os/Handler;

.field private blacklist mLatencyObserverRunnable:Ljava/lang/Runnable;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPeriodicSamplingInterval:I

.field private final blacklist mProcessSource:I

.field private final blacklist mRandom:Ljava/util/Random;

.field private blacklist mShardingModulo:I

.field private blacklist mShardingOffset:I

.field private blacklist mStatsdPushIntervalMinutes:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLatencyHistograms(Lcom/android/internal/os/BinderLatencyObserver;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/os/BinderLatencyObserver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfillApiStatsProto(Lcom/android/internal/os/BinderLatencyObserver;Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;Ljava/lang/String;[I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderLatencyObserver;->fillApiStatsProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;Ljava/lang/String;[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnoteLatencyDelayed(Lcom/android/internal/os/BinderLatencyObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BinderLatencyObserver;->noteLatencyDelayed()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderLatencyObserver$Injector;I)V
    .registers 7
    .param p1, "injector"    # Lcom/android/internal/os/BinderLatencyObserver$Injector;
    .param p2, "processSource"    # I

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    .line 67
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    .line 68
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    .line 69
    const/high16 v0, 0x3f900000    # 1.125f

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    .line 71
    const/16 v0, 0x168

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mStatsdPushIntervalMinutes:I

    .line 79
    new-instance v0, Lcom/android/internal/os/BinderLatencyObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BinderLatencyObserver$1;-><init>(Lcom/android/internal/os/BinderLatencyObserver;)V

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverRunnable:Ljava/lang/Runnable;

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/os/BinderLatencyObserver$Injector;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mRandom:Ljava/util/Random;

    .line 189
    invoke-virtual {p1}, Lcom/android/internal/os/BinderLatencyObserver$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/android/internal/os/BinderLatencyBuckets;

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    iget v3, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BinderLatencyBuckets;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyBuckets:Lcom/android/internal/os/BinderLatencyBuckets;

    .line 192
    iput p2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mProcessSource:I

    .line 193
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingOffset:I

    .line 194
    invoke-direct {p0}, Lcom/android/internal/os/BinderLatencyObserver;->noteLatencyDelayed()V

    .line 195
    return-void
.end method

.method private blacklist fillApiStatsProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;Ljava/lang/String;[I)V
    .registers 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dims"    # Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    .param p3, "transactionName"    # Ljava/lang/String;
    .param p4, "histogram"    # [I

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "firstNonEmptyBucket":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    if-ge v1, v2, :cond_f

    .line 123
    aget v2, p4, v1

    if-eqz v2, :cond_c

    .line 124
    move v0, v1

    .line 125
    goto :goto_f

    .line 122
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 128
    .end local v1    # "i":I
    :cond_f
    :goto_f
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    add-int/lit8 v1, v1, -0x1

    .line 129
    .local v1, "lastNonEmptyBucket":I
    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_22

    .line 130
    aget v3, p4, v2

    if-eqz v3, :cond_1f

    .line 131
    move v1, v2

    .line 132
    goto :goto_22

    .line 129
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 137
    .end local v2    # "i":I
    :cond_22
    :goto_22
    const-wide v2, 0x20b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 140
    .local v2, "apiStatsToken":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 141
    .local v4, "dimsToken":J
    const-wide v6, 0x10e00000001L

    iget v8, p0, Lcom/android/internal/os/BinderLatencyObserver;->mProcessSource:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 142
    invoke-virtual {p2}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getBinderClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000003L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 143
    const-wide v6, 0x10900000005L

    invoke-virtual {p1, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 144
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 147
    const-wide v6, 0x10500000002L

    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 148
    move v6, v0

    .local v6, "i":I
    :goto_62
    if-gt v6, v1, :cond_71

    .line 149
    const-wide v7, 0x20500000003L

    aget v9, p4, v6

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 152
    .end local v6    # "i":I
    :cond_71
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 153
    return-void
.end method

.method private blacklist noteLatencyDelayed()V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mStatsdPushIntervalMinutes:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    return-void
.end method


# virtual methods
.method public blacklist callEnded(Lcom/android/internal/os/BinderInternal$CallSession;)V
    .registers 12
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;

    .line 199
    if-eqz p1, :cond_5d

    iget-boolean v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->shouldKeepSample()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5d

    .line 203
    :cond_d
    iget-object v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v1, p1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    invoke-static {v0, v1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->create(Ljava/lang/Class;I)Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    move-result-object v0

    .line 205
    .local v0, "dims":Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderLatencyObserver;->shouldCollect(Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 206
    return-void

    .line 209
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->getElapsedRealtimeMicro()J

    move-result-wide v1

    .line 210
    .local v1, "elapsedTimeMicro":J
    iget-wide v3, p1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    sub-long v3, v1, v3

    .line 213
    .local v3, "callDuration":J
    iget-object v5, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyBuckets:Lcom/android/internal/os/BinderLatencyBuckets;

    .line 214
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v3, v6

    const v7, 0x7fffffff

    if-lez v6, :cond_32

    move v6, v7

    goto :goto_33

    :cond_32
    long-to-int v6, v3

    .line 213
    :goto_33
    invoke-virtual {v5, v6}, Lcom/android/internal/os/BinderLatencyBuckets;->sampleToBucket(I)I

    move-result v5

    .line 216
    .local v5, "bucketIdx":I
    iget-object v6, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 217
    :try_start_3a
    iget-object v8, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 218
    .local v8, "buckets":[I
    if-nez v8, :cond_4e

    .line 219
    iget v9, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    new-array v9, v9, [I

    move-object v8, v9

    .line 220
    iget-object v9, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_4e
    aget v9, v8, v5

    if-ge v9, v7, :cond_58

    .line 225
    aget v7, v8, v5

    add-int/lit8 v7, v7, 0x1

    aput v7, v8, v5

    .line 227
    .end local v8    # "buckets":[I
    :cond_58
    monitor-exit v6

    .line 228
    return-void

    .line 227
    :catchall_5a
    move-exception v7

    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_3a .. :try_end_5c} :catchall_5a

    throw v7

    .line 200
    .end local v0    # "dims":Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    .end local v1    # "elapsedTimeMicro":J
    .end local v3    # "callDuration":J
    .end local v5    # "bucketIdx":I
    :cond_5d
    :goto_5d
    return-void
.end method

.method protected blacklist getElapsedRealtimeMicro()J
    .registers 5

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getLatencyHistograms()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;",
            "[I>;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    return-object v0
.end method

.method protected blacklist getMaxAtomSizeBytes()I
    .registers 2

    .line 156
    const/16 v0, 0xfe0

    return v0
.end method

.method public blacklist getProcessSource()I
    .registers 2

    .line 375
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mProcessSource:I

    return v0
.end method

.method public blacklist getStatsdPushRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 309
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 311
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 312
    invoke-direct {p0}, Lcom/android/internal/os/BinderLatencyObserver;->noteLatencyDelayed()V

    .line 313
    return-void

    .line 311
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist setHistogramBucketsParams(IIF)V
    .registers 9
    .param p1, "bucketCount"    # I
    .param p2, "firstBucketSize"    # I
    .param p3, "bucketScaleFactor"    # F

    .line 294
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    if-ne p1, v1, :cond_11

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    if-ne p2, v1, :cond_11

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_27

    .line 297
    :cond_11
    iput p1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    .line 298
    iput p2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    .line 299
    iput p3, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    .line 300
    new-instance v1, Lcom/android/internal/os/BinderLatencyBuckets;

    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    iget v3, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    iget v4, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/os/BinderLatencyBuckets;-><init>(IIF)V

    iput-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyBuckets:Lcom/android/internal/os/BinderLatencyBuckets;

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    .line 304
    :cond_27
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist setPushInterval(I)V
    .registers 5
    .param p1, "pushIntervalMinutes"    # I

    .line 277
    if-gtz p1, :cond_1b

    .line 278
    const-string v0, "BinderLatencyObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid push interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 283
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mStatsdPushIntervalMinutes:I

    if-eq p1, v1, :cond_27

    .line 285
    iput p1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mStatsdPushIntervalMinutes:I

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    .line 288
    :cond_27
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist setSamplingInterval(I)V
    .registers 5
    .param p1, "samplingInterval"    # I

    .line 244
    if-gtz p1, :cond_1b

    .line 245
    const-string v0, "BinderLatencyObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    if-eq p1, v1, :cond_27

    .line 252
    iput p1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    .line 255
    :cond_27
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist setShardingModulo(I)V
    .registers 5
    .param p1, "shardingModulo"    # I

    .line 260
    if-gtz p1, :cond_1b

    .line 261
    const-string v0, "BinderLatencyObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sharding modulo (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 266
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    if-eq p1, v1, :cond_2f

    .line 268
    iput p1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    .line 269
    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingOffset:I

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    .line 272
    :cond_2f
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw v1
.end method

.method protected blacklist shouldCollect(Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;)Z
    .registers 4
    .param p1, "dims"    # Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    .line 235
    invoke-virtual {p1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected blacklist shouldKeepSample()Z
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected blacklist writeAtomToStatsd(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9
    .param p1, "atom"    # Landroid/util/proto/ProtoOutputStream;

    .line 160
    nop

    .line 162
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    int-to-float v2, v0

    iget v3, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    iget v4, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    iget v5, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    iget v6, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    .line 160
    const/16 v0, 0x156

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[BFIIIF)V

    .line 168
    return-void
.end method
