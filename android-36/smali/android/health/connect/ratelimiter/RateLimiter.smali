.class public final Landroid/health/connect/ratelimiter/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/ratelimiter/RateLimiter$QuotaBucket;,
        Landroid/health/connect/ratelimiter/RateLimiter$QuotaCategory;
    }
.end annotation


# static fields
.field public static final blacklist CHUNK_SIZE_LIMIT_IN_BYTES:Ljava/lang/String; = "chunk_size_limit_in_bytes"

.field public static final blacklist CHUNK_SIZE_LIMIT_IN_BYTES_DEFAULT_FLAG_VALUE:I = 0x4c4b40

.field public static final blacklist DATA_PUSH_LIMIT_ACROSS_APPS_15M_DEFAULT_FLAG_VALUE:I = 0x5f5e100

.field public static final blacklist DATA_PUSH_LIMIT_PER_APP_15M_DEFAULT_FLAG_VALUE:I = 0x2160ec0

.field private static final blacklist DEFAULT_API_CALL_COST:I = 0x1

.field public static final blacklist QUOTA_BUCKET_READS_PER_15M_BACKGROUND_DEFAULT_FLAG_VALUE:I = 0x3e8

.field public static final blacklist QUOTA_BUCKET_READS_PER_15M_FOREGROUND_DEFAULT_FLAG_VALUE:I = 0x7d0

.field public static final blacklist QUOTA_BUCKET_READS_PER_24H_BACKGROUND_DEFAULT_FLAG_VALUE:I = 0x1f40

.field public static final blacklist QUOTA_BUCKET_READS_PER_24H_FOREGROUND_DEFAULT_FLAG_VALUE:I = 0x3e80

.field public static final blacklist QUOTA_BUCKET_WRITES_PER_15M_BACKGROUND_DEFAULT_FLAG_VALUE:I = 0x3e8

.field public static final blacklist QUOTA_BUCKET_WRITES_PER_15M_FOREGROUND_DEFAULT_FLAG_VALUE:I = 0x3e8

.field public static final blacklist QUOTA_BUCKET_WRITES_PER_24H_BACKGROUND_DEFAULT_FLAG_VALUE:I = 0x1f40

.field public static final blacklist QUOTA_BUCKET_WRITES_PER_24H_FOREGROUND_DEFAULT_FLAG_VALUE:I = 0x1f40

.field public static final blacklist RECORD_SIZE_LIMIT_IN_BYTES:Ljava/lang/String; = "record_size_limit_in_bytes"

.field public static final blacklist RECORD_SIZE_LIMIT_IN_BYTES_DEFAULT_FLAG_VALUE:I = 0xf4240


# instance fields
.field private final blacklist mLockAcrossAppQuota:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final blacklist mLocks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQuotaBucketToAcrossAppsRemainingMemoryQuota:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/ratelimiter/Quota;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQuotaBucketToMaxMemoryQuota:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQuotaBucketToMaxRollingQuota:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserIdToQuotasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/health/connect/ratelimiter/Quota;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$w06uzCC0cQeqUjoLUeDqtVPgjQk(Landroid/health/connect/ratelimiter/RateLimiter;ILjava/lang/Integer;)Ljava/lang/Float;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/health/connect/ratelimiter/RateLimiter;->lambda$getQuotaBucketToAvailableQuotaMap$3(ILjava/lang/Integer;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxMemoryQuota:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mLockAcrossAppQuota:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToAcrossAppsRemainingMemoryQuota:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mUserIdToQuotasMap:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mLocks:Ljava/util/concurrent/ConcurrentMap;

    .line 111
    invoke-direct {p0}, Landroid/health/connect/ratelimiter/RateLimiter;->initQuotaBuckets()V

    .line 112
    return-void
.end method

.method private blacklist checkIfResourcesAreAvailable(Ljava/util/Map;Ljava/util/List;J)V
    .registers 8
    .param p3, "cost"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 287
    .local p1, "quotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .local p2, "quotaBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 288
    .local v1, "quotaBucket":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2, p3, p4, v1}, Landroid/health/connect/ratelimiter/RateLimiter;->hasSufficientQuota(FJI)V

    .line 289
    .end local v1    # "quotaBucket":I
    goto :goto_4

    .line 290
    :cond_26
    return-void
.end method

.method private static blacklist getAffectedAPIQuotaBuckets(IZ)Ljava/util/List;
    .registers 4
    .param p0, "quotaCategory"    # I
    .param p1, "isInForeground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 426
    const-string v0, "Invalid quota category."

    packed-switch p0, :pswitch_data_56

    .line 451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :pswitch_b
    if-eqz p1, :cond_1d

    .line 439
    nop

    .line 440
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 441
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 439
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 443
    :cond_1d
    nop

    .line 444
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 445
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 443
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 428
    :pswitch_2e
    if-eqz p1, :cond_40

    .line 429
    nop

    .line 430
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 431
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 429
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 433
    :cond_40
    nop

    .line 434
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 435
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 449
    :pswitch_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_50
        :pswitch_50
        :pswitch_2e
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist getAffectedMemoryQuotaBuckets(IZ)Ljava/util/List;
    .registers 4
    .param p0, "quotaCategory"    # I
    .param p1, "isInForeground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 456
    const-string v0, "Invalid quota category."

    packed-switch p0, :pswitch_data_24

    .line 468
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :pswitch_b
    if-eqz p1, :cond_12

    .line 459
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 461
    :cond_12
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 466
    :pswitch_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_b
    .end packed-switch
.end method

.method private blacklist getAvailableQuota(ILandroid/health/connect/ratelimiter/Quota;)F
    .registers 14
    .param p1, "quotaBucket"    # I
    .param p2, "quota"    # Landroid/health/connect/ratelimiter/Quota;

    .line 345
    invoke-virtual {p2}, Landroid/health/connect/ratelimiter/Quota;->getLastUpdatedTimeMillis()J

    move-result-wide v0

    .line 346
    .local v0, "lastUpdatedTimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 347
    .local v2, "currentTimeMillis":J
    sub-long v4, v2, v0

    .line 348
    .local v4, "timeSinceLastQuotaSpendMillis":J
    invoke-static {p1}, Landroid/health/connect/ratelimiter/RateLimiter;->getWindowDuration(I)Ljava/time/Duration;

    move-result-object v6

    .line 349
    .local v6, "window":Ljava/time/Duration;
    long-to-float v7, v4

    .line 351
    invoke-direct {p0, p1}, Landroid/health/connect/ratelimiter/RateLimiter;->getConfiguredMaxRollingQuota(I)F

    move-result v8

    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v9

    long-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    .line 353
    .local v7, "accumulated":F
    nop

    .line 354
    invoke-virtual {p2}, Landroid/health/connect/ratelimiter/Quota;->getRemainingQuota()F

    move-result v8

    add-float/2addr v8, v7

    invoke-direct {p0, p1}, Landroid/health/connect/ratelimiter/RateLimiter;->getConfiguredMaxRollingQuota(I)F

    move-result v9

    .line 353
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    return v8
.end method

.method private blacklist getConfiguredMaxApiMemoryQuota(Ljava/lang/String;)I
    .registers 5
    .param p1, "quotaBucket"    # Ljava/lang/String;

    .line 417
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxMemoryQuota:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 421
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxMemoryQuota:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 418
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max quota not found for quotaBucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getConfiguredMaxRollingQuota(I)F
    .registers 5
    .param p1, "quotaBucket"    # I

    .line 409
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 413
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 410
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max quota not found for quotaBucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getInitialQuota(I)Landroid/health/connect/ratelimiter/Quota;
    .registers 6
    .param p1, "bucket"    # I

    .line 383
    new-instance v0, Landroid/health/connect/ratelimiter/Quota;

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 385
    invoke-direct {p0, p1}, Landroid/health/connect/ratelimiter/RateLimiter;->getConfiguredMaxRollingQuota(I)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/ratelimiter/Quota;-><init>(JF)V

    .line 383
    return-object v0
.end method

.method private blacklist getLockObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "uid"    # I

    .line 238
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mLocks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mLocks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getQuota(I)Landroid/health/connect/ratelimiter/Quota;
    .registers 8
    .param p1, "quotaBucket"    # I

    .line 372
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToAcrossAppsRemainingMemoryQuota:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 373
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToAcrossAppsRemainingMemoryQuota:Ljava/util/Map;

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/health/connect/ratelimiter/Quota;

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 377
    invoke-direct {p0, p1}, Landroid/health/connect/ratelimiter/RateLimiter;->getConfiguredMaxRollingQuota(I)F

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/health/connect/ratelimiter/Quota;-><init>(JF)V

    .line 373
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_22
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToAcrossAppsRemainingMemoryQuota:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/ratelimiter/Quota;

    return-object v0
.end method

.method private blacklist getQuota(II)Landroid/health/connect/ratelimiter/Quota;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "quotaBucket"    # I

    .line 359
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mUserIdToQuotasMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 360
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mUserIdToQuotasMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1a
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mUserIdToQuotasMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 363
    .local v0, "packageQuotas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/health/connect/ratelimiter/Quota;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/ratelimiter/Quota;

    .line 364
    .local v1, "quota":Landroid/health/connect/ratelimiter/Quota;
    if-nez v1, :cond_36

    .line 365
    invoke-direct {p0, p2}, Landroid/health/connect/ratelimiter/RateLimiter;->getInitialQuota(I)Landroid/health/connect/ratelimiter/Quota;

    move-result-object v1

    .line 367
    :cond_36
    return-object v1
.end method

.method private blacklist getQuotaBucketToAvailableQuotaMap(ILjava/util/List;)Ljava/util/Map;
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 322
    .local p2, "quotaBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda1;-><init>(Landroid/health/connect/ratelimiter/RateLimiter;I)V

    .line 324
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 323
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 322
    return-object v0
.end method

.method private static blacklist getWindowDuration(I)Ljava/time/Duration;
    .registers 3
    .param p0, "quotaBucket"    # I

    .line 389
    const-string v0, "Invalid quota bucket."

    packed-switch p0, :pswitch_data_20

    .line 405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :pswitch_b
    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 401
    :pswitch_12
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    .line 403
    :pswitch_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_12
        :pswitch_b
        :pswitch_12
        :pswitch_b
        :pswitch_12
        :pswitch_b
        :pswitch_12
        :pswitch_b
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private blacklist hasSufficientQuota(FJI)V
    .registers 8
    .param p1, "availableQuota"    # F
    .param p2, "cost"    # J
    .param p4, "quotaBucket"    # I

    .line 333
    long-to-float v0, p2

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_6

    .line 342
    return-void

    .line 334
    :cond_6
    new-instance v0, Landroid/health/connect/ratelimiter/RateLimiterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API call quota exceeded, availableQuota: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-direct {p0, p4}, Landroid/health/connect/ratelimiter/RateLimiter;->getConfiguredMaxRollingQuota(I)F

    move-result v2

    invoke-direct {v0, v1, p4, v2}, Landroid/health/connect/ratelimiter/RateLimiterException;-><init>(Ljava/lang/String;IF)V

    throw v0
.end method

.method private blacklist initQuotaBuckets()V
    .registers 5

    .line 72
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 73
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    const/16 v2, 0x3e80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 76
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 77
    const/16 v2, 0x1f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 79
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 80
    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 78
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 82
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 83
    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 81
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 85
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 86
    nop

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 88
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 89
    nop

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 91
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 92
    nop

    .line 90
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 94
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 95
    nop

    .line 93
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 97
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98
    const v2, 0x2160ec0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    .line 100
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    const v2, 0x5f5e100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxMemoryQuota:Ljava/util/Map;

    .line 104
    const v1, 0x4c4b40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 102
    const-string v2, "chunk_size_limit_in_bytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxMemoryQuota:Ljava/util/Map;

    .line 107
    const v1, 0xf4240

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 105
    const-string v2, "record_size_limit_in_bytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method static synthetic blacklist lambda$getQuotaBucketToAvailableQuotaMap$2(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 1
    .param p0, "quotaBucket"    # Ljava/lang/Integer;

    .line 325
    return-object p0
.end method

.method private synthetic blacklist lambda$getQuotaBucketToAvailableQuotaMap$3(ILjava/lang/Integer;)Ljava/lang/Float;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "quotaBucket"    # Ljava/lang/Integer;

    .line 327
    nop

    .line 328
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/health/connect/ratelimiter/RateLimiter;->getQuota(II)Landroid/health/connect/ratelimiter/Quota;

    move-result-object v1

    .line 327
    invoke-direct {p0, v0, v1}, Landroid/health/connect/ratelimiter/RateLimiter;->getAvailableQuota(ILandroid/health/connect/ratelimiter/Quota;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setLowerRateLimitsForTesting$0(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3
    .param p0, "k"    # Ljava/lang/Integer;
    .param p1, "v"    # Ljava/lang/Integer;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setLowerRateLimitsForTesting$1(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3
    .param p0, "k"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/Integer;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private blacklist spendApiAndMemoryResourcesIfAvailable(ILjava/util/List;Ljava/util/List;IJZ)V
    .registers 19
    .param p1, "uid"    # I
    .param p4, "cost"    # I
    .param p5, "memoryCost"    # J
    .param p7, "isInForeground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IJZ)V"
        }
    .end annotation

    .line 256
    .local p2, "apiQuotaBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "memoryQuotaBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v6, p4

    move-wide/from16 v7, p5

    .line 257
    invoke-direct/range {p0 .. p2}, Landroid/health/connect/ratelimiter/RateLimiter;->getQuotaBucketToAvailableQuotaMap(ILjava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 258
    .local v2, "apiQuotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    nop

    .line 259
    invoke-direct {p0, p1, p3}, Landroid/health/connect/ratelimiter/RateLimiter;->getQuotaBucketToAvailableQuotaMap(ILjava/util/List;)Ljava/util/Map;

    move-result-object v9

    .line 260
    .local v9, "memoryQuotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/16 v3, 0xa

    if-nez p7, :cond_1c

    .line 261
    nop

    .line 264
    invoke-direct {p0, v3}, Landroid/health/connect/ratelimiter/RateLimiter;->getQuota(I)Landroid/health/connect/ratelimiter/Quota;

    move-result-object v4

    .line 262
    invoke-direct {p0, v3, v4}, Landroid/health/connect/ratelimiter/RateLimiter;->getAvailableQuota(ILandroid/health/connect/ratelimiter/Quota;)F

    move-result v4

    .line 261
    invoke-direct {p0, v4, v7, v8, v3}, Landroid/health/connect/ratelimiter/RateLimiter;->hasSufficientQuota(FJI)V

    .line 268
    :cond_1c
    int-to-long v4, v6

    invoke-direct {p0, v2, p2, v4, v5}, Landroid/health/connect/ratelimiter/RateLimiter;->checkIfResourcesAreAvailable(Ljava/util/Map;Ljava/util/List;J)V

    .line 269
    invoke-direct {p0, v9, p3, v7, v8}, Landroid/health/connect/ratelimiter/RateLimiter;->checkIfResourcesAreAvailable(Ljava/util/Map;Ljava/util/List;J)V

    .line 271
    if-nez p7, :cond_31

    .line 272
    nop

    .line 273
    invoke-direct {p0, v3}, Landroid/health/connect/ratelimiter/RateLimiter;->getQuota(I)Landroid/health/connect/ratelimiter/Quota;

    move-result-object v4

    .line 274
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 272
    invoke-direct {p0, v4, v3, v7, v8}, Landroid/health/connect/ratelimiter/RateLimiter;->spendAvailableResources(Landroid/health/connect/ratelimiter/Quota;Ljava/lang/Integer;J)V

    .line 277
    :cond_31
    int-to-long v4, v6

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/ratelimiter/RateLimiter;->spendAvailableResources(ILjava/util/Map;Ljava/util/List;J)V

    .line 278
    move-object v10, v2

    .end local v2    # "apiQuotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .local v10, "apiQuotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    move-object v3, p3

    move-wide v4, v7

    move-object v2, v9

    .end local v9    # "memoryQuotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .local v2, "memoryQuotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-direct/range {v0 .. v5}, Landroid/health/connect/ratelimiter/RateLimiter;->spendAvailableResources(ILjava/util/Map;Ljava/util/List;J)V

    .line 280
    return-void
.end method

.method private blacklist spendApiCallResourcesIfAvailable(ILjava/util/List;I)V
    .registers 10
    .param p1, "uid"    # I
    .param p3, "cost"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 243
    .local p2, "quotaBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 244
    invoke-direct {p0, p1, p2}, Landroid/health/connect/ratelimiter/RateLimiter;->getQuotaBucketToAvailableQuotaMap(ILjava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 245
    .local v2, "quotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    int-to-long v0, p3

    invoke-direct {p0, v2, p2, v0, v1}, Landroid/health/connect/ratelimiter/RateLimiter;->checkIfResourcesAreAvailable(Ljava/util/Map;Ljava/util/List;J)V

    .line 246
    int-to-long v4, p3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .end local p1    # "uid":I
    .end local p2    # "quotaBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "uid":I
    .local v3, "quotaBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v0 .. v5}, Landroid/health/connect/ratelimiter/RateLimiter;->spendAvailableResources(ILjava/util/Map;Ljava/util/List;J)V

    .line 247
    return-void
.end method

.method private blacklist spendAvailableResources(ILjava/util/Map;Ljava/util/List;J)V
    .registers 14
    .param p1, "uid"    # I
    .param p4, "cost"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 303
    .local p2, "quotaBucketToAvailableQuotaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .local p3, "quotaBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 304
    .local v4, "quotaBucket":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v2, p0

    move v3, p1

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p4    # "cost":J
    .local v3, "uid":I
    .local v6, "cost":J
    invoke-direct/range {v2 .. v7}, Landroid/health/connect/ratelimiter/RateLimiter;->spendResources(IIFJ)V

    .line 305
    .end local v4    # "quotaBucket":I
    goto :goto_4

    .line 306
    .end local v3    # "uid":I
    .end local v6    # "cost":J
    .restart local p1    # "uid":I
    .restart local p4    # "cost":J
    :cond_29
    return-void
.end method

.method private blacklist spendAvailableResources(Landroid/health/connect/ratelimiter/Quota;Ljava/lang/Integer;J)V
    .registers 7
    .param p1, "quota"    # Landroid/health/connect/ratelimiter/Quota;
    .param p2, "quotaBucket"    # Ljava/lang/Integer;
    .param p3, "memoryCost"    # J

    .line 293
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/health/connect/ratelimiter/RateLimiter;->getAvailableQuota(ILandroid/health/connect/ratelimiter/Quota;)F

    move-result v0

    long-to-float v1, p3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/health/connect/ratelimiter/Quota;->setRemainingQuota(Ljava/lang/Float;)V

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/health/connect/ratelimiter/Quota;->setLastUpdatedTimeMillis(J)V

    .line 295
    return-void
.end method

.method private blacklist spendResources(IIFJ)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "quotaBucket"    # I
    .param p3, "availableQuota"    # F
    .param p4, "cost"    # J

    .line 311
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mUserIdToQuotasMap:Ljava/util/Map;

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 314
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/health/connect/ratelimiter/Quota;

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-float v5, p4

    sub-float v5, p3, v5

    invoke-direct {v2, v3, v4, v5}, Landroid/health/connect/ratelimiter/Quota;-><init>(JF)V

    .line 313
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method


# virtual methods
.method public blacklist checkMaxChunkMemoryUsage(J)V
    .registers 8
    .param p1, "memoryCost"    # J

    .line 201
    const-string v0, "chunk_size_limit_in_bytes"

    invoke-direct {p0, v0}, Landroid/health/connect/ratelimiter/RateLimiter;->getConfiguredMaxApiMemoryQuota(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 202
    .local v0, "memoryLimit":J
    cmp-long v2, p1, v0

    if-gtz v2, :cond_c

    .line 210
    return-void

    .line 203
    :cond_c
    new-instance v2, Landroid/health/connect/HealthConnectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Records chunk size exceeded the max chunk limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Landroid/health/connect/HealthConnectException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public blacklist checkMaxRecordMemoryUsage(J)V
    .registers 8
    .param p1, "memoryCost"    # J

    .line 219
    const-string v0, "record_size_limit_in_bytes"

    invoke-direct {p0, v0}, Landroid/health/connect/ratelimiter/RateLimiter;->getConfiguredMaxApiMemoryQuota(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 220
    .local v0, "memoryLimit":J
    cmp-long v2, p1, v0

    if-gtz v2, :cond_c

    .line 228
    return-void

    .line 221
    :cond_c
    new-instance v2, Landroid/health/connect/HealthConnectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record size exceeded the single record size limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Landroid/health/connect/HealthConnectException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public blacklist clearCache()V
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mUserIdToQuotasMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 233
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToAcrossAppsRemainingMemoryQuota:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    return-void
.end method

.method public blacklist setLowerRateLimitsForTesting(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 116
    invoke-direct {p0}, Landroid/health/connect/ratelimiter/RateLimiter;->initQuotaBuckets()V

    .line 118
    if-eqz p1, :cond_19

    .line 119
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxRollingQuota:Ljava/util/Map;

    new-instance v1, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 120
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mQuotaBucketToMaxMemoryQuota:Ljava/util/Map;

    new-instance v1, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 122
    :cond_19
    return-void
.end method

.method public blacklist tryAcquireApiCallQuota(IIZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "quotaCategory"    # I
    .param p3, "isInForeground"    # Z

    .line 135
    if-eqz p2, :cond_18

    .line 140
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    .line 141
    return-void

    .line 144
    :cond_6
    invoke-direct {p0, p1}, Landroid/health/connect/ratelimiter/RateLimiter;->getLockObject(I)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 145
    nop

    .line 147
    :try_start_c
    invoke-static {p2, p3}, Landroid/health/connect/ratelimiter/RateLimiter;->getAffectedAPIQuotaBuckets(IZ)Ljava/util/List;

    move-result-object v2

    .line 145
    invoke-direct {p0, p1, v2, v0}, Landroid/health/connect/ratelimiter/RateLimiter;->spendApiCallResourcesIfAvailable(ILjava/util/List;I)V

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v0

    .line 136
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Quota category not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist tryAcquireApiCallQuota(IIZJ)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "quotaCategory"    # I
    .param p3, "isInForeground"    # Z
    .param p4, "memoryCost"    # J

    .line 167
    if-eqz p2, :cond_5c

    .line 172
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    .line 173
    return-void

    .line 175
    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_52

    .line 178
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter;->mLockAcrossAppQuota:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 180
    :try_start_12
    invoke-direct {p0, p1}, Landroid/health/connect/ratelimiter/RateLimiter;->getLockObject(I)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_42

    .line 181
    nop

    .line 183
    :try_start_18
    invoke-static {p2, p3}, Landroid/health/connect/ratelimiter/RateLimiter;->getAffectedAPIQuotaBuckets(IZ)Ljava/util/List;

    move-result-object v4

    .line 184
    invoke-static {p2, p3}, Landroid/health/connect/ratelimiter/RateLimiter;->getAffectedMemoryQuotaBuckets(IZ)Ljava/util/List;

    move-result-object v5
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_34

    .line 181
    const/4 v6, 0x1

    move-object v2, p0

    move v3, p1

    move v9, p3

    move-wide v7, p4

    .end local p1    # "uid":I
    .end local p3    # "isInForeground":Z
    .end local p4    # "memoryCost":J
    .local v3, "uid":I
    .local v7, "memoryCost":J
    .local v9, "isInForeground":Z
    :try_start_25
    invoke-direct/range {v2 .. v9}, Landroid/health/connect/ratelimiter/RateLimiter;->spendApiAndMemoryResourcesIfAvailable(ILjava/util/List;Ljava/util/List;IJZ)V

    .line 188
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_3f

    .line 190
    iget-object p1, v2, Landroid/health/connect/ratelimiter/RateLimiter;->mLockAcrossAppQuota:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 191
    nop

    .line 192
    return-void

    .line 188
    .end local v3    # "uid":I
    .end local v7    # "memoryCost":J
    .end local v9    # "isInForeground":Z
    .restart local p1    # "uid":I
    .restart local p3    # "isInForeground":Z
    .restart local p4    # "memoryCost":J
    :catchall_34
    move-exception v0

    move-object v2, p0

    move v3, p1

    move v9, p3

    move-wide v7, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p3    # "isInForeground":Z
    .end local p4    # "memoryCost":J
    .restart local v3    # "uid":I
    .restart local v7    # "memoryCost":J
    .restart local v9    # "isInForeground":Z
    :goto_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3f

    .end local v3    # "uid":I
    .end local v7    # "memoryCost":J
    .end local v9    # "isInForeground":Z
    .end local p0    # "this":Landroid/health/connect/ratelimiter/RateLimiter;
    .end local p2    # "quotaCategory":I
    :try_start_3b
    throw p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 190
    .restart local v3    # "uid":I
    .restart local v7    # "memoryCost":J
    .restart local v9    # "isInForeground":Z
    .restart local p0    # "this":Landroid/health/connect/ratelimiter/RateLimiter;
    .restart local p2    # "quotaCategory":I
    :catchall_3c
    move-exception v0

    move-object p1, v0

    goto :goto_48

    .line 188
    :catchall_3f
    move-exception v0

    move-object p1, v0

    goto :goto_3a

    .line 190
    .end local v3    # "uid":I
    .end local v7    # "memoryCost":J
    .end local v9    # "isInForeground":Z
    .restart local p1    # "uid":I
    .restart local p3    # "isInForeground":Z
    .restart local p4    # "memoryCost":J
    :catchall_42
    move-exception v0

    move-object v2, p0

    move v3, p1

    move v9, p3

    move-wide v7, p4

    move-object p1, v0

    .end local p1    # "uid":I
    .end local p3    # "isInForeground":Z
    .end local p4    # "memoryCost":J
    .restart local v3    # "uid":I
    .restart local v7    # "memoryCost":J
    .restart local v9    # "isInForeground":Z
    :goto_48
    iget-object p3, v2, Landroid/health/connect/ratelimiter/RateLimiter;->mLockAcrossAppQuota:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 191
    throw p1

    .line 176
    .end local v3    # "uid":I
    .end local v7    # "memoryCost":J
    .end local v9    # "isInForeground":Z
    .restart local p1    # "uid":I
    .restart local p3    # "isInForeground":Z
    .restart local p4    # "memoryCost":J
    :cond_52
    move v3, p1

    move v9, p3

    .end local p1    # "uid":I
    .end local p3    # "isInForeground":Z
    .restart local v3    # "uid":I
    .restart local v9    # "isInForeground":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Quota category must be QUOTA_CATEGORY_WRITE."

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    .end local v3    # "uid":I
    .end local v9    # "isInForeground":Z
    .restart local p1    # "uid":I
    .restart local p3    # "isInForeground":Z
    :cond_5c
    move v3, p1

    move v9, p3

    .end local p1    # "uid":I
    .end local p3    # "isInForeground":Z
    .restart local v3    # "uid":I
    .restart local v9    # "isInForeground":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Quota category not defined."

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
