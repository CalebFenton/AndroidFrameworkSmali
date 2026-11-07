.class abstract Landroid/util/MapCollections;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MapCollections$EntrySet;,
        Landroid/util/MapCollections$KeySet;,
        Landroid/util/MapCollections$ValuesCollection;,
        Landroid/util/MapCollections$MapIterator;,
        Landroid/util/MapCollections$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field greylist-max-o mEntrySet:Landroid/util/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field greylist-max-o mKeySet:Landroid/util/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field greylist-max-o mValues:Landroid/util/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoStringHelper(Landroid/util/MapCollections;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/util/MapCollections;->toStringHelper(ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 472
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 473
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 474
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 475
    const/4 v1, 0x0

    return v1

    .line 478
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public static greylist-max-o equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 550
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 551
    return v0

    .line 553
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 554
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 557
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_c
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_1d

    invoke-interface {p0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_1a} :catch_21
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_1a} :catch_1f

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 560
    :catch_1f
    move-exception v0

    .line 561
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 558
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_21
    move-exception v0

    .line 559
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 564
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_23
    return v2
.end method

.method public static greylist-max-o removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 482
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 483
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 484
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 487
    :cond_16
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    return v2
.end method

.method public static greylist-max-o retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 491
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 492
    .local v0, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 493
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 498
    :cond_20
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    return v2
.end method

.method private blacklist toStringHelper(ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "offset"    # I
    .param p2, "thing"    # Ljava/lang/Object;
    .param p3, "thingName"    # Ljava/lang/String;

    .line 527
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 528
    .local v0, "size":I
    if-nez v0, :cond_9

    .line 529
    const-string v1, "[]"

    return-object v1

    .line 532
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 533
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_3b

    .line 535
    if-lez v2, :cond_1f

    .line 536
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_1f
    invoke-virtual {p0, v2, p1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 539
    .local v3, "entry":Ljava/lang/Object;
    if-eq v3, p2, :cond_29

    .line 540
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 542
    :cond_29
    const-string v4, "(this "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .end local v3    # "entry":Ljava/lang/Object;
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 545
    .end local v2    # "i":I
    :cond_3b
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected abstract greylist-max-o colClear()V
.end method

.method protected abstract greylist-max-o colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract greylist-max-o colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o colGetSize()I
.end method

.method protected abstract greylist-max-o colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract greylist-max-o colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract greylist-max-o colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o colRemoveAt(I)V
.end method

.method protected abstract greylist-max-o colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public greylist-max-o getEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Landroid/util/MapCollections;->mEntrySet:Landroid/util/MapCollections$EntrySet;

    if-nez v0, :cond_b

    .line 569
    new-instance v0, Landroid/util/MapCollections$EntrySet;

    invoke-direct {v0, p0}, Landroid/util/MapCollections$EntrySet;-><init>(Landroid/util/MapCollections;)V

    iput-object v0, p0, Landroid/util/MapCollections;->mEntrySet:Landroid/util/MapCollections$EntrySet;

    .line 571
    :cond_b
    iget-object v0, p0, Landroid/util/MapCollections;->mEntrySet:Landroid/util/MapCollections$EntrySet;

    return-object v0
.end method

.method public greylist-max-o getKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 575
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Landroid/util/MapCollections;->mKeySet:Landroid/util/MapCollections$KeySet;

    if-nez v0, :cond_b

    .line 576
    new-instance v0, Landroid/util/MapCollections$KeySet;

    invoke-direct {v0, p0}, Landroid/util/MapCollections$KeySet;-><init>(Landroid/util/MapCollections;)V

    iput-object v0, p0, Landroid/util/MapCollections;->mKeySet:Landroid/util/MapCollections$KeySet;

    .line 578
    :cond_b
    iget-object v0, p0, Landroid/util/MapCollections;->mKeySet:Landroid/util/MapCollections$KeySet;

    return-object v0
.end method

.method public greylist-max-o getValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 582
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Landroid/util/MapCollections;->mValues:Landroid/util/MapCollections$ValuesCollection;

    if-nez v0, :cond_b

    .line 583
    new-instance v0, Landroid/util/MapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Landroid/util/MapCollections$ValuesCollection;-><init>(Landroid/util/MapCollections;)V

    iput-object v0, p0, Landroid/util/MapCollections;->mValues:Landroid/util/MapCollections$ValuesCollection;

    .line 585
    :cond_b
    iget-object v0, p0, Landroid/util/MapCollections;->mValues:Landroid/util/MapCollections$ValuesCollection;

    return-object v0
.end method

.method public greylist-max-o toArrayHelper(I)[Ljava/lang/Object;
    .registers 6
    .param p1, "offset"    # I

    .line 502
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 503
    .local v0, "N":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 504
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 505
    invoke-virtual {p0, v2, p1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 507
    .end local v2    # "i":I
    :cond_12
    return-object v1
.end method

.method public greylist-max-o toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 6
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 511
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 512
    .local v0, "N":I
    array-length v1, p1

    if-ge v1, v0, :cond_17

    .line 513
    nop

    .line 514
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 515
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v1

    .line 517
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_23

    .line 518
    invoke-virtual {p0, v1, p2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 520
    .end local v1    # "i":I
    :cond_23
    array-length v1, p1

    if-le v1, v0, :cond_29

    .line 521
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 523
    :cond_29
    return-object p1
.end method
