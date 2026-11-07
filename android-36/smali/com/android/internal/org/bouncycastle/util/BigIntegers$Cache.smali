.class public Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/util/BigIntegers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# instance fields
.field private final blacklist preserve:[Ljava/math/BigInteger;

.field private blacklist preserveCounter:I

.field private final blacklist values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/math/BigInteger;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    .line 381
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist add(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "value"    # Ljava/math/BigInteger;

    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    aput-object p1, v0, v1

    .line 389
    iget v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserveCounter:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 390
    monitor-exit p0

    return-void

    .line 386
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;
    .end local p1    # "value":Ljava/math/BigInteger;
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized blacklist clear()V
    .registers 4

    monitor-enter p0

    .line 404
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    array-length v1, v1

    if-eq v0, v1, :cond_14

    .line 407
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->preserve:[Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 409
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;
    :cond_14
    monitor-exit p0

    return-void

    .line 403
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized blacklist contains(Ljava/math/BigInteger;)Z
    .registers 3
    .param p1, "value"    # Ljava/math/BigInteger;

    monitor-enter p0

    .line 394
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 394
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;
    .end local p1    # "value":Ljava/math/BigInteger;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized blacklist size()I
    .registers 2

    monitor-enter p0

    .line 399
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 399
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method
