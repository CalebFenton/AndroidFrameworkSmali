.class Lsun/security/util/MemoryCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/MemoryCache$CacheEntry;,
        Lsun/security/util/MemoryCache$HardCacheEntry;,
        Lsun/security/util/MemoryCache$SoftCacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lsun/security/util/Cache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lsun/security/util/MemoryCache$CacheEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private lifetime:J

.field private maxSize:I

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I

    #@0
    .prologue
    .line 261
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    #@4
    .line 260
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I
    .param p3, "lifetime"    # I

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const/high16 v4, 0x3f400000    # 0.75f

    #@2
    .line 264
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    #@5
    .line 265
    iput p2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    #@7
    .line 266
    mul-int/lit16 v1, p3, 0x3e8

    #@9
    int-to-long v2, v1

    #@a
    iput-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    #@c
    .line 267
    if-eqz p1, :cond_0

    #@e
    .line 268
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    #@10
    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@13
    iput-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@15
    .line 272
    :goto_0
    int-to-float v1, p2

    #@16
    div-float/2addr v1, v4

    #@17
    float-to-int v1, v1

    #@18
    add-int/lit8 v0, v1, 0x1

    #@1a
    .line 273
    .local v0, "buckets":I
    new-instance v1, Ljava/util/LinkedHashMap;

    #@1c
    const/4 v2, 0x1

    #@1d
    invoke-direct {v1, v0, v4, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@20
    iput-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@22
    .line 264
    return-void

    #@23
    .line 270
    .end local v0    # "buckets":I
    :cond_0
    const/4 v1, 0x0

    #@24
    iput-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@26
    goto :goto_0
.end method

.method private emptyQueue()V
    .locals 5

    #@0
    .prologue
    .line 284
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    iget-object v4, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 285
    return-void

    #@5
    .line 287
    :cond_0
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@7
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@a
    move-result v3

    #@b
    .line 290
    .local v3, "startSize":I
    :cond_1
    :goto_0
    iget-object v4, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@d
    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    #@13
    .line 291
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-nez v1, :cond_2

    #@15
    .line 283
    return-void

    #@16
    .line 294
    :cond_2
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    .line 295
    .local v2, "key":Ljava/lang/Object;, "TK;"
    if-eqz v2, :cond_1

    #@1c
    .line 299
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@1e
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    #@24
    .line 302
    .local v0, "currentEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    #@26
    if-eq v1, v0, :cond_1

    #@28
    .line 303
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@2a
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    goto :goto_0
.end method

.method private expungeExpiredEntries()V
    .locals 10

    #@0
    .prologue
    .line 319
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    #@3
    .line 320
    iget-wide v6, p0, Lsun/security/util/MemoryCache;->lifetime:J

    #@5
    const-wide/16 v8, 0x0

    #@7
    cmp-long v3, v6, v8

    #@9
    if-nez v3, :cond_0

    #@b
    .line 321
    return-void

    #@c
    .line 323
    :cond_0
    const/4 v0, 0x0

    #@d
    .line 324
    .local v0, "cnt":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@10
    move-result-wide v4

    #@11
    .line 325
    .local v4, "time":J
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@13
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .line 326
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v3

    #@1f
    .line 325
    if-eqz v3, :cond_2

    #@21
    .line 327
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    #@27
    .line 328
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v1, v4, v5}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 329
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@30
    .line 330
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 318
    .end local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_2
    return-void
.end method

.method private getCachedEntries()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 450
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    new-instance v2, Ljava/util/HashMap;

    #@2
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@4
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@7
    move-result v3

    #@8
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    #@b
    .line 452
    .local v2, "kvmap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@d
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    #@21
    .line 453
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    goto :goto_0

    #@2d
    .line 456
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public declared-synchronized accept(Lsun/security/util/Cache$CacheVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 443
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    #@4
    .line 444
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->getCachedEntries()Ljava/util/Map;

    #@7
    move-result-object v0

    #@8
    .line 446
    .local v0, "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1, v0}, Lsun/security/util/Cache$CacheVisitor;->visit(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 442
    return-void

    #@d
    .end local v0    # "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 347
    :try_start_0
    iget-object v2, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 350
    iget-object v2, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@7
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    #@1b
    .line 351
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@20
    monitor-exit p0

    #@21
    throw v2

    #@22
    .line 353
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@24
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@27
    move-result-object v2

    #@28
    if-nez v2, :cond_0

    #@2a
    .line 357
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@2c
    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit p0

    #@30
    .line 346
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const-wide/16 v2, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    monitor-enter p0

    #@4
    .line 386
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    #@7
    .line 387
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@9
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 388
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@11
    monitor-exit p0

    #@12
    .line 389
    return-object v6

    #@13
    .line 391
    :cond_0
    :try_start_1
    iget-wide v4, p0, Lsun/security/util/MemoryCache;->lifetime:J

    #@15
    cmp-long v1, v4, v2

    #@17
    if-nez v1, :cond_1

    #@19
    .line 392
    .local v2, "time":J
    :goto_0
    invoke-interface {v0, v2, v3}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 396
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@21
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 397
    return-object v6

    #@26
    .line 391
    .end local v2    # "time":J
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@29
    move-result-wide v2

    #@2a
    goto :goto_0

    #@2b
    .line 399
    .restart local v2    # "time":J
    :cond_2
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    move-result-object v1

    #@2f
    monitor-exit p0

    #@30
    return-object v1

    #@31
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    #@32
    monitor-exit p0

    #@33
    throw v1
.end method

.method protected newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;
    .locals 7
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)",
            "Lsun/security/util/MemoryCache$CacheEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 461
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    if-eqz p5, :cond_0

    #@2
    .line 462
    new-instance v1, Lsun/security/util/MemoryCache$SoftCacheEntry;

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-wide v4, p3

    #@7
    move-object v6, p5

    #@8
    invoke-direct/range {v1 .. v6}, Lsun/security/util/MemoryCache$SoftCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V

    #@b
    return-object v1

    #@c
    .line 464
    :cond_0
    new-instance v0, Lsun/security/util/MemoryCache$HardCacheEntry;

    #@e
    invoke-direct {v0, p1, p2, p3, p4}, Lsun/security/util/MemoryCache$HardCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    #@11
    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 361
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    #@4
    .line 362
    iget-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    #@6
    const-wide/16 v10, 0x0

    #@8
    cmp-long v1, v2, v10

    #@a
    if-nez v1, :cond_0

    #@c
    const-wide/16 v4, 0x0

    #@e
    .line 364
    .local v4, "expirationTime":J
    :goto_0
    iget-object v6, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    #@10
    move-object v1, p0

    #@11
    move-object v2, p1

    #@12
    move-object v3, p2

    #@13
    invoke-virtual/range {v1 .. v6}, Lsun/security/util/MemoryCache;->newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;

    #@16
    move-result-object v7

    #@17
    .line 365
    .local v7, "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@19
    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v8

    #@1d
    check-cast v8, Lsun/security/util/MemoryCache$CacheEntry;

    #@1f
    .line 366
    .local v8, "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v8, :cond_1

    #@21
    .line 367
    invoke-interface {v8}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 368
    return-void

    #@26
    .line 363
    .end local v4    # "expirationTime":J
    .end local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@29
    move-result-wide v2

    #@2a
    iget-wide v10, p0, Lsun/security/util/MemoryCache;->lifetime:J

    #@2c
    add-long v4, v2, v10

    #@2e
    .restart local v4    # "expirationTime":J
    goto :goto_0

    #@2f
    .line 370
    .restart local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .restart local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_1
    iget v1, p0, Lsun/security/util/MemoryCache;->maxSize:I

    #@31
    if-lez v1, :cond_2

    #@33
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@35
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@38
    move-result v1

    #@39
    iget v2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    #@3b
    if-le v1, v2, :cond_2

    #@3d
    .line 371
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    #@40
    .line 372
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@42
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@45
    move-result v1

    #@46
    iget v2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    #@48
    if-le v1, v2, :cond_2

    #@4a
    .line 373
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@4c
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@4f
    move-result-object v1

    #@50
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v9

    #@54
    .line 374
    .local v9, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    #@5a
    .line 379
    .local v0, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    #@5d
    .line 380
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    .end local v0    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v9    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_2
    monitor-exit p0

    #@61
    .line 360
    return-void

    #@62
    .end local v4    # "expirationTime":J
    .end local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :catchall_0
    move-exception v1

    #@63
    monitor-exit p0

    #@64
    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 403
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    #@4
    .line 404
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    #@c
    .line 405
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@e
    .line 406
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 402
    return-void

    #@13
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 5
    .param p1, "size"    # I

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 411
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    #@5
    .line 412
    if-lez p1, :cond_0

    #@7
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@9
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@c
    move-result v4

    #@d
    if-le v4, p1, :cond_0

    #@f
    .line 413
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@11
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@14
    move-result-object v4

    #@15
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .line 414
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@1b
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@1e
    move-result v4

    #@1f
    sub-int v0, v4, p1

    #@21
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@23
    .line 415
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    #@29
    .line 420
    .local v1, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@2c
    .line 421
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V

    #@2f
    .line 414
    add-int/lit8 v0, v0, -0x1

    #@31
    goto :goto_0

    #@32
    .line 425
    .end local v0    # "i":I
    .end local v1    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_0
    if-lez p1, :cond_1

    #@34
    .end local p1    # "size":I
    :goto_1
    iput p1, p0, Lsun/security/util/MemoryCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 410
    return-void

    #@38
    .restart local p1    # "size":I
    :cond_1
    move p1, v3

    #@39
    .line 425
    goto :goto_1

    #@3a
    .end local p1    # "size":I
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit p0

    #@3c
    throw v3
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 433
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    #@4
    .line 434
    if-lez p1, :cond_0

    #@6
    int-to-long v0, p1

    #@7
    const-wide/16 v2, 0x3e8

    #@9
    mul-long/2addr v0, v2

    #@a
    :goto_0
    iput-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 432
    return-void

    #@e
    .line 434
    :cond_0
    const-wide/16 v0, 0x0

    #@10
    goto :goto_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 342
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    #@4
    .line 343
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
