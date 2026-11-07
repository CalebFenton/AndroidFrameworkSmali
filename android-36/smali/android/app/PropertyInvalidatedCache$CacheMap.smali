.class Landroid/app/PropertyInvalidatedCache$CacheMap;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mIsolated:Z

.field private final blacklist mSelfUid:I

.field private final blacklist mShadowCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TQuery;>;"
        }
    .end annotation
.end field

.field private blacklist mShadowHits:I

.field private blacklist mShadowMisses:I

.field private blacklist mShadowSelfHits:I

.field private final blacklist mStatistics:Z

.field private final blacklist mTestMode:Z

.field private final blacklist mUidSeen:Landroid/util/SparseBooleanArray;

.field final synthetic blacklist this$0:Landroid/app/PropertyInvalidatedCache;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache;ZZ)V
    .registers 6
    .param p2, "isolate"    # Z
    .param p3, "testMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 463
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    .line 464
    invoke-static {}, Landroid/app/Flags;->picIsolateCacheByUid()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    move p1, v0

    goto :goto_19

    :cond_18
    move p1, v1

    :goto_19
    iput-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    .line 465
    invoke-static {}, Landroid/app/Flags;->picIsolatedCacheStatistics()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    .line 466
    iget-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz p1, :cond_3c

    .line 467
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    .line 468
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    goto :goto_41

    .line 470
    :cond_3c
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    .line 471
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    .line 473
    :goto_41
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mSelfUid:I

    .line 474
    iput-boolean p3, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mTestMode:Z

    .line 475
    return-void
.end method

.method private blacklist callerUid()I
    .registers 2

    .line 480
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    if-nez v0, :cond_6

    .line 481
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_6
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mTestMode:Z

    if-eqz v0, :cond_f

    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v0

    return v0

    .line 485
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private blacklist createMap()Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation

    .line 407
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    new-instance v0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/app/PropertyInvalidatedCache$CacheMap$1;-><init>(Landroid/app/PropertyInvalidatedCache$CacheMap;IFZ)V

    return-object v0
.end method


# virtual methods
.method blacklist clear()V
    .registers 2

    .line 577
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v0, :cond_9

    .line 578
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 581
    :cond_9
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 582
    return-void
.end method

.method blacklist containsKey(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 519
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 520
    .local v0, "uid":I
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 521
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    if-eqz v1, :cond_13

    .line 522
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 524
    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 586
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v0, :cond_44

    .line 587
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    .line 588
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 587
    const-string v1, "    ShadowHits: %d, ShadowMisses: %d, ShadowSize: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    .line 590
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 589
    const-string v1, "    ShadowUids: %d, SelfUid: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    :cond_44
    return-void
.end method

.method blacklist dumpDetailed(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 596
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 597
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 598
    .local v1, "uid":I
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 600
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 601
    .local v3, "cacheEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TQuery;TResult;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_22

    .line 602
    goto :goto_69

    .line 605
    :cond_22
    const-string v4, "    Contents:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "      Uid: %d\n"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 608
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TQuery;TResult;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 611
    .local v7, "value":Ljava/lang/String;
    const-string v8, "      Key: %s\n      Value: %s\n"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TQuery;TResult;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_3c

    .line 596
    .end local v1    # "uid":I
    .end local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    .end local v3    # "cacheEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TQuery;TResult;>;>;"
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 614
    .end local v0    # "i":I
    :cond_69
    :goto_69
    return-void
.end method

.method blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 493
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 496
    .local v0, "uid":I
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_27

    .line 497
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 498
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    .line 499
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mSelfUid:I

    if-ne v0, v1, :cond_27

    .line 500
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    goto :goto_27

    .line 503
    :cond_21
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    .line 507
    :cond_27
    :goto_27
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 508
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    if-eqz v1, :cond_36

    .line 509
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 511
    :cond_36
    const/4 v2, 0x0

    return-object v2
.end method

.method blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)V"
        }
    .end annotation

    .line 547
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    .local p2, "result":Ljava/lang/Object;, "TResult;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 548
    .local v0, "uid":I
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_13

    .line 549
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 553
    :cond_13
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 554
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    if-nez v1, :cond_26

    .line 555
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 556
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 558
    :cond_26
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-void
.end method

.method blacklist remove(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)V"
        }
    .end annotation

    .line 532
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 533
    .local v0, "uid":I
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_d

    .line 534
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_d
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 538
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    if-eqz v1, :cond_1a

    .line 539
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_1a
    return-void
.end method

.method blacklist size()I
    .registers 5

    .line 565
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    const/4 v0, 0x0

    .line 566
    .local v0, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 567
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 568
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 566
    .end local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 570
    .end local v1    # "i":I
    :cond_1a
    return v0
.end method
