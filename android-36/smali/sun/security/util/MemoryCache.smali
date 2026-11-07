.class Lsun/security/util/MemoryCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/MemoryCache$CacheEntry;,
        Lsun/security/util/MemoryCache$SoftCacheEntry;,
        Lsun/security/util/MemoryCache$HardCacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lsun/security/util/Cache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOAD_FACTOR:F = 0.75f


# instance fields
.field private final blacklist cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lsun/security/util/MemoryCache$CacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private blacklist lifetime:J

.field private blacklist maxSize:I

.field private blacklist nextExpirationTime:J

.field private final blacklist queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ZI)V
    .registers 4
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I

    .line 267
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    .line 268
    return-void
.end method

.method public constructor blacklist <init>(ZII)V
    .registers 7
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I
    .param p3, "lifetime"    # I

    .line 270
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    .line 260
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lsun/security/util/MemoryCache;->nextExpirationTime:J

    .line 271
    iput p2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    .line 272
    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J

    .line 273
    if-eqz p1, :cond_1b

    .line 274
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    goto :goto_1e

    .line 276
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 278
    :goto_1e
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    .line 279
    return-void
.end method

.method private blacklist emptyQueue()V
    .registers 6

    .line 289
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    iget-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_5

    .line 290
    return-void

    .line 292
    :cond_5
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 295
    .local v0, "startSize":I
    :goto_b
    iget-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 296
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-nez v1, :cond_17

    .line 297
    nop

    .line 318
    .end local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    return-void

    .line 299
    .restart local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_17
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 300
    .local v2, "key":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_1e

    .line 302
    goto :goto_b

    .line 304
    :cond_1e
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/util/MemoryCache$CacheEntry;

    .line 307
    .local v3, "currentEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v3, :cond_2f

    if-eq v1, v3, :cond_2f

    .line 308
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "currentEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_2f
    goto :goto_b
.end method

.method private blacklist expungeExpiredEntries()V
    .registers 10

    .line 324
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 325
    iget-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 326
    return-void

    .line 328
    :cond_c
    const/4 v0, 0x0

    .line 329
    .local v0, "cnt":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 330
    .local v1, "time":J
    iget-wide v3, p0, Lsun/security/util/MemoryCache;->nextExpirationTime:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_18

    .line 331
    return-void

    .line 333
    :cond_18
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lsun/security/util/MemoryCache;->nextExpirationTime:J

    .line 334
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 335
    .local v3, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 336
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/util/MemoryCache$CacheEntry;

    .line 337
    .local v4, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v4, v1, v2}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v5

    if-nez v5, :cond_41

    .line 338
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 340
    :cond_41
    iget-wide v5, p0, Lsun/security/util/MemoryCache;->nextExpirationTime:J

    invoke-interface {v4}, Lsun/security/util/MemoryCache$CacheEntry;->getExpirationTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_51

    .line 341
    invoke-interface {v4}, Lsun/security/util/MemoryCache$CacheEntry;->getExpirationTime()J

    move-result-wide v5

    iput-wide v5, p0, Lsun/security/util/MemoryCache;->nextExpirationTime:J

    .line 343
    .end local v4    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_51
    :goto_51
    goto :goto_29

    .line 350
    .end local v3    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_52
    return-void
.end method

.method private blacklist getCachedEntries()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 486
    .local v0, "kvmap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/util/MemoryCache$CacheEntry;

    .line 487
    .local v2, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v2}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .end local v2    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    goto :goto_15

    .line 490
    :cond_2d
    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist accept(Lsun/security/util/Cache$CacheVisitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    monitor-enter p0

    .line 477
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 478
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->getCachedEntries()Ljava/util/Map;

    move-result-object v0

    .line 480
    .local v0, "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1, v0}, Lsun/security/util/Cache$CacheVisitor;->visit(Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 481
    monitor-exit p0

    return-void

    .line 476
    .end local v0    # "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .end local p1    # "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized blacklist clear()V
    .registers 3

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 358
    :try_start_1
    iget-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_28

    .line 361
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 362
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V

    .line 363
    .end local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    goto :goto_f

    .line 364
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_28

    goto :goto_1f

    .line 368
    :cond_28
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 369
    monitor-exit p0

    return-void

    .line 357
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public declared-synchronized blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 400
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 401
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_31

    .line 402
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 403
    monitor-exit p0

    return-object v1

    .line 405
    :cond_11
    :try_start_11
    iget-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 406
    .local v4, "time":J
    :goto_1e
    invoke-interface {v0, v4, v5}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 410
    iget-object v2, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_31

    .line 411
    monitor-exit p0

    return-object v1

    .line 413
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_2b
    :try_start_2b
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v1

    .line 399
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v4    # "time":J
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method protected blacklist newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;
    .registers 12
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)",
            "Lsun/security/util/MemoryCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    if-eqz p5, :cond_c

    .line 496
    new-instance v0, Lsun/security/util/MemoryCache$SoftCacheEntry;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "expirationTime":J
    .end local p5    # "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local v1, "key":Ljava/lang/Object;, "TK;"
    .local v2, "value":Ljava/lang/Object;, "TV;"
    .local v3, "expirationTime":J
    .local v5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct/range {v0 .. v5}, Lsun/security/util/MemoryCache$SoftCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 498
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    .end local v3    # "expirationTime":J
    .end local v5    # "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "expirationTime":J
    .restart local p5    # "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    :cond_c
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "expirationTime":J
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    .restart local v3    # "expirationTime":J
    new-instance p1, Lsun/security/util/MemoryCache$HardCacheEntry;

    invoke-direct {p1, v1, v2, v3, v4}, Lsun/security/util/MemoryCache$HardCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-object p1
.end method

.method public declared-synchronized blacklist pull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 425
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 426
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2f

    .line 427
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 428
    monitor-exit p0

    return-object v1

    .line 431
    :cond_11
    :try_start_11
    iget-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 432
    .local v4, "time":J
    :goto_1e
    invoke-interface {v0, v4, v5}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 433
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 434
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2f

    .line 435
    monitor-exit p0

    return-object v1

    .line 440
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_2d
    monitor-exit p0

    return-object v1

    .line 424
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v4    # "time":J
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 372
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 373
    iget-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    goto :goto_14

    .line 374
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    add-long/2addr v2, v0

    :goto_14
    move-wide v7, v2

    .line 375
    .local v7, "expirationTime":J
    iget-wide v0, p0, Lsun/security/util/MemoryCache;->nextExpirationTime:J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_6d

    cmp-long v0, v7, v0

    if-gez v0, :cond_22

    .line 376
    :try_start_1b
    iput-wide v7, p0, Lsun/security/util/MemoryCache;->nextExpirationTime:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    goto :goto_22

    .line 371
    .end local v7    # "expirationTime":J
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_1e
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto :goto_70

    .line 378
    .restart local v7    # "expirationTime":J
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_22
    :goto_22
    :try_start_22
    iget-object v9, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_6d

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .local v5, "key":Ljava/lang/Object;, "TK;"
    .local v6, "value":Ljava/lang/Object;, "TV;"
    .restart local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :try_start_27
    invoke-virtual/range {v4 .. v9}, Lsun/security/util/MemoryCache;->newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;

    move-result-object p1

    .line 379
    .local p1, "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    iget-object p2, v4, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {p2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsun/security/util/MemoryCache$CacheEntry;

    .line 380
    .local p2, "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz p2, :cond_3a

    .line 381
    invoke-interface {p2}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_72

    .line 382
    monitor-exit p0

    return-void

    .line 384
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_3a
    :try_start_3a
    iget v0, v4, Lsun/security/util/MemoryCache;->maxSize:I

    if-lez v0, :cond_6b

    iget-object v0, v4, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, v4, Lsun/security/util/MemoryCache;->maxSize:I

    if-le v0, v1, :cond_6b

    .line 385
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 386
    iget-object v0, v4, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, v4, Lsun/security/util/MemoryCache;->maxSize:I

    if-le v0, v1, :cond_6b

    .line 387
    iget-object v0, v4, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 388
    .local v0, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 393
    .local v1, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 394
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_6b
    .catchall {:try_start_3a .. :try_end_6b} :catchall_72

    .line 397
    .end local v0    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    .end local v1    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_6b
    monitor-exit p0

    return-void

    .line 371
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    .end local v7    # "expirationTime":J
    .end local p1    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local p2    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :catchall_6d
    move-exception v0

    move-object v4, p0

    :goto_6f
    move-object p1, v0

    :goto_70
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_72

    throw p1

    :catchall_72
    move-exception v0

    goto :goto_6f
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 417
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 418
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 419
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_11

    .line 420
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 422
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_11
    monitor-exit p0

    return-void

    .line 416
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized blacklist setCapacity(I)V
    .registers 5
    .param p1, "size"    # I

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 445
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 446
    if-lez p1, :cond_30

    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_30

    .line 447
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 448
    .local v0, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .local v1, "i":I
    :goto_1f
    if-lez v1, :cond_30

    .line 449
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/util/MemoryCache$CacheEntry;

    .line 454
    .local v2, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 455
    invoke-interface {v2}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V

    .line 448
    .end local v2    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 459
    .end local v0    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    .end local v1    # "i":I
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_30
    if-lez p1, :cond_34

    move v0, p1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    iput v0, p0, Lsun/security/util/MemoryCache;->maxSize:I
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 464
    monitor-exit p0

    return-void

    .line 444
    .end local p1    # "size":I
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public declared-synchronized blacklist setTimeout(I)V
    .registers 6
    .param p1, "timeout"    # I

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 467
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 468
    if-lez p1, :cond_b

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    iput-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 473
    monitor-exit p0

    return-void

    .line 466
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .end local p1    # "timeout":I
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public declared-synchronized blacklist size()I
    .registers 2

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 353
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 354
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 352
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method
