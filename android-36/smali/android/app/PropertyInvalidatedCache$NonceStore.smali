.class public Landroid/app/PropertyInvalidatedCache$NonceStore;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonceStore"
.end annotation


# static fields
.field public static final blacklist INVALID_NONCE_INDEX:I = -0x1

.field private static final blacklist MAX_STRING_LENGTH:I = 0x3f

.field private static blacklist sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;

.field private static blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mBlockHash:I

.field private blacklist mHighestIndex:I

.field private final blacklist mLock:Ljava/lang/Object;

.field public final blacklist mMaxByte:I

.field public final blacklist mMaxNonce:I

.field private final blacklist mMutable:Z

.field private blacklist mPartialReads:I

.field private final blacklist mPtr:J

.field private blacklist mStringBytes:I

.field private final blacklist mStringHandle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStringUpdated:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2402
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache$NonceStore;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(JZ)V
    .registers 6
    .param p1, "ptr"    # J
    .param p3, "mutable"    # Z

    .line 2393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2360
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    .line 2379
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2432
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2436
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    .line 2440
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2444
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    .line 2448
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    .line 2394
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    .line 2395
    iput-boolean p3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMutable:Z

    .line 2396
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetMaxByte(J)I

    move-result v0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    .line 2397
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetMaxNonce(J)I

    move-result v0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxNonce:I

    .line 2398
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->refreshStringBlockLocked()V

    .line 2399
    return-void
.end method

.method private blacklist appendStringToMapLocked(Ljava/lang/String;[B)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "block"    # [B

    .line 2475
    const/4 v0, 0x0

    .line 2476
    .local v0, "offset":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_e

    aget-byte v1, p2, v0

    if-eqz v1, :cond_e

    .line 2477
    aget-byte v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    .line 2479
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2481
    .local v1, "strBytes":[B
    array-length v2, v1

    add-int/2addr v2, v0

    array-length v3, p2

    if-lt v2, v3, :cond_18

    .line 2483
    return-void

    .line 2486
    :cond_18
    array-length v2, v1

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 2487
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2488
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2489
    return-void
.end method

.method static blacklist getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;
    .registers 6

    .line 2409
    sget-object v0, Landroid/app/PropertyInvalidatedCache$NonceStore;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2410
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_20

    .line 2412
    :try_start_7
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v1

    .line 2413
    .local v1, "shmem":Lcom/android/internal/os/ApplicationSharedMemory;
    if-nez v1, :cond_f

    .line 2414
    const/4 v2, 0x0

    goto :goto_1c

    .line 2415
    :cond_f
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->getSystemNonceBlock()J

    move-result-wide v3

    .line 2416
    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->isMutable()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/app/PropertyInvalidatedCache$NonceStore;-><init>(JZ)V

    :goto_1c
    sput-object v2, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_1e} :catch_1f
    .catchall {:try_start_7 .. :try_end_1e} :catchall_24

    .line 2420
    .end local v1    # "shmem":Lcom/android/internal/os/ApplicationSharedMemory;
    goto :goto_20

    .line 2417
    :catch_1f
    move-exception v1

    .line 2422
    :cond_20
    :goto_20
    :try_start_20
    sget-object v1, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;

    monitor-exit v0

    return-object v1

    .line 2423
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist refreshStringBlockLocked()V
    .registers 5

    .line 2495
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v1, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlockHash(J)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2497
    return-void

    .line 2499
    :cond_b
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    new-array v0, v0, [B

    .line 2500
    .local v0, "block":[B
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    invoke-static {v1, v2, v3, v0}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlock(JI[B)I

    move-result v1

    .line 2501
    .local v1, "hash":I
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    if-eq v1, v2, :cond_27

    .line 2506
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2507
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2508
    return-void

    .line 2511
    :cond_27
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    .line 2512
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2513
    invoke-direct {p0, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->updateStringMapLocked([B)V

    .line 2514
    return-void
.end method

.method private blacklist throwIfBadHandle(I)V
    .registers 5
    .param p1, "handle"    # I

    .line 2532
    if-ltz p1, :cond_7

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    if-gt p1, v0, :cond_7

    .line 2535
    return-void

    .line 2533
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid nonce handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfBadString(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 2518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    .line 2521
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_f

    .line 2525
    return-void

    .line 2522
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot store a string longer than 63"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2519
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot store an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist throwIfImmutable()V
    .registers 3

    .line 2541
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMutable:Z

    if-eqz v0, :cond_5

    .line 2544
    return-void

    .line 2542
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "write permission denied"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateStringMapLocked([B)V
    .registers 7
    .param p1, "block"    # [B

    .line 2456
    const/4 v0, 0x0

    .line 2457
    .local v0, "index":I
    const/4 v1, 0x0

    .line 2458
    .local v1, "offset":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_29

    aget-byte v2, p1, v1

    if-eqz v2, :cond_29

    .line 2459
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    if-le v0, v2, :cond_21

    .line 2461
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v1

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2462
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2465
    .end local v2    # "s":Ljava/lang/String;
    :cond_21
    aget-byte v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 2466
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2468
    :cond_29
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    .line 2469
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "detailed"    # Z

    .line 2603
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2604
    :try_start_3
    const-string v1, "%sStringsMapped: %d, BytesUsed: %d"

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2606
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2604
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    const-string v1, "%sPartialReads: %d, StringUpdates: %d"

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2609
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2607
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    if-eqz p3, :cond_6b

    .line 2612
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2613
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2614
    .local v3, "h":I
    const-string v4, "%sHandle:%d Name:%s"

    .line 2615
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p2, v5, v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 2614
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "h":I
    goto :goto_41

    .line 2618
    :cond_6b
    monitor-exit v0

    .line 2619
    return-void

    .line 2618
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public blacklist getHandleForName(Ljava/lang/String;)I
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 2573
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2574
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2575
    .local v1, "handle":Ljava/lang/Integer;
    if-nez v1, :cond_19

    .line 2576
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->refreshStringBlockLocked()V

    .line 2577
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 2579
    :cond_19
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_21

    :cond_20
    const/4 v2, -0x1

    :goto_21
    monitor-exit v0

    return v2

    .line 2580
    .end local v1    # "handle":Ljava/lang/Integer;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist getNonce(I)J
    .registers 5
    .param p1, "handle"    # I

    .line 2593
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2594
    :try_start_3
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadHandle(I)V

    .line 2595
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v1, v2, p1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetNonce(JI)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2596
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist setNonce(IJ)Z
    .registers 7
    .param p1, "handle"    # I
    .param p2, "value"    # J

    .line 2585
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2586
    :try_start_3
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadHandle(I)V

    .line 2587
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfImmutable()V

    .line 2588
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v1, v2, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeSetNonce(JIJ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2589
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist storeName(Ljava/lang/String;)I
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .line 2552
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2553
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2554
    .local v1, "handle":Ljava/lang/Integer;
    if-nez v1, :cond_45

    .line 2555
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfImmutable()V

    .line 2556
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadString(Ljava/lang/String;)V

    .line 2557
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxNonce:I

    if-ge v2, v3, :cond_3c

    .line 2560
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    new-array v2, v2, [B

    .line 2561
    .local v2, "block":[B
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlock(JI[B)I

    .line 2562
    invoke-direct {p0, p1, v2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->appendStringToMapLocked(Ljava/lang/String;[B)V

    .line 2563
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    iget v5, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    invoke-static {v3, v4, v5, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeSetByteBlock(JI[B)V

    .line 2564
    invoke-direct {p0, v2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->updateStringMapLocked([B)V

    .line 2565
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v1, v3

    goto :goto_45

    .line 2558
    .end local v2    # "block":[B
    :cond_3c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "nonce limit exceeded"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/PropertyInvalidatedCache$NonceStore;
    .end local p1    # "str":Ljava/lang/String;
    throw v2

    .line 2567
    .restart local p0    # "this":Landroid/app/PropertyInvalidatedCache$NonceStore;
    .restart local p1    # "str":Ljava/lang/String;
    :cond_45
    :goto_45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 2568
    .end local v1    # "handle":Ljava/lang/Integer;
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method
