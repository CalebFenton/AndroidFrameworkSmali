.class public Lcom/android/org/bouncycastle/util/BigIntegers$Cache;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# instance fields
.field private final blacklist preserve:[Ljava/math/BigInteger;

.field private blacklist preserveCounter:I

.field private final blacklist values:Ljava/util/Map;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    const/16 v0, 0x8

    .line 381
    new-array v0, v0, [Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 383
    iput v0, p0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist add(Ljava/math/BigInteger;)V
    .registers 4

    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 389
    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 390
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist contains(Ljava/math/BigInteger;)Z
    .registers 3

    monitor-enter p0

    .line 394
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method
