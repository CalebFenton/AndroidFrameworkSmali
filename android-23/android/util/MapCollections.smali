.class abstract Landroid/util/MapCollections;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MapCollections$ArrayIterator;,
        Landroid/util/MapCollections$MapIterator;,
        Landroid/util/MapCollections$EntrySet;,
        Landroid/util/MapCollections$KeySet;,
        Landroid/util/MapCollections$ValuesCollection;
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
.field mEntrySet:Landroid/util/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Landroid/util/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Landroid/util/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 457
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 458
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 460
    const/4 v1, 0x0

    #@15
    return v1

    #@16
    .line 463
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 512
    if-ne p0, p1, :cond_0

    #@3
    .line 513
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 515
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    #@7
    if-eqz v4, :cond_2

    #@9
    move-object v2, p1

    #@a
    .line 516
    check-cast v2, Ljava/util/Set;

    #@c
    .line 519
    .local v2, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    #@f
    move-result v4

    #@10
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@13
    move-result v5

    #@14
    if-ne v4, v5, :cond_1

    #@16
    invoke-interface {p0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v3

    #@1a
    :cond_1
    return v3

    #@1b
    .line 522
    :catch_0
    move-exception v0

    #@1c
    .line 523
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v3

    #@1d
    .line 520
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    #@1e
    .line 521
    .local v1, "ignored":Ljava/lang/NullPointerException;
    return v3

    #@1f
    .line 526
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    .end local v2    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_2
    return v3
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 467
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@3
    move-result v1

    #@4
    .line 468
    .local v1, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    .line 469
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    goto :goto_0

    #@16
    .line 472
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@19
    move-result v2

    #@1a
    if-eq v1, v2, :cond_1

    #@1c
    const/4 v2, 0x1

    #@1d
    :goto_1
    return v2

    #@1e
    :cond_1
    const/4 v2, 0x0

    #@1f
    goto :goto_1
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 476
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@3
    move-result v1

    #@4
    .line 477
    .local v1, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .line 478
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 479
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1f
    goto :goto_0

    #@20
    .line 483
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@23
    move-result v2

    #@24
    if-eq v1, v2, :cond_2

    #@26
    const/4 v2, 0x1

    #@27
    :goto_1
    return v2

    #@28
    :cond_2
    const/4 v2, 0x0

    #@29
    goto :goto_1
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 530
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Landroid/util/MapCollections;->mEntrySet:Landroid/util/MapCollections$EntrySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 531
    new-instance v0, Landroid/util/MapCollections$EntrySet;

    #@6
    invoke-direct {v0, p0}, Landroid/util/MapCollections$EntrySet;-><init>(Landroid/util/MapCollections;)V

    #@9
    iput-object v0, p0, Landroid/util/MapCollections;->mEntrySet:Landroid/util/MapCollections$EntrySet;

    #@b
    .line 533
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections;->mEntrySet:Landroid/util/MapCollections$EntrySet;

    #@d
    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 537
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Landroid/util/MapCollections;->mKeySet:Landroid/util/MapCollections$KeySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 538
    new-instance v0, Landroid/util/MapCollections$KeySet;

    #@6
    invoke-direct {v0, p0}, Landroid/util/MapCollections$KeySet;-><init>(Landroid/util/MapCollections;)V

    #@9
    iput-object v0, p0, Landroid/util/MapCollections;->mKeySet:Landroid/util/MapCollections$KeySet;

    #@b
    .line 540
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections;->mKeySet:Landroid/util/MapCollections$KeySet;

    #@d
    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 544
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Landroid/util/MapCollections;->mValues:Landroid/util/MapCollections$ValuesCollection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 545
    new-instance v0, Landroid/util/MapCollections$ValuesCollection;

    #@6
    invoke-direct {v0, p0}, Landroid/util/MapCollections$ValuesCollection;-><init>(Landroid/util/MapCollections;)V

    #@9
    iput-object v0, p0, Landroid/util/MapCollections;->mValues:Landroid/util/MapCollections$ValuesCollection;

    #@b
    .line 547
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections;->mValues:Landroid/util/MapCollections$ValuesCollection;

    #@d
    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 487
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/MapCollections;->colGetSize()I

    #@3
    move-result v0

    #@4
    .line 488
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/Object;

    #@6
    .line 489
    .local v2, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 490
    invoke-virtual {p0, v1, p1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    aput-object v3, v2, v1

    #@f
    .line 489
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 492
    :cond_0
    return-object v2
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 496
    .local p0, "this":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroid/util/MapCollections;->colGetSize()I

    #@3
    move-result v0

    #@4
    .line 497
    .local v0, "N":I
    array-length v3, p1

    #@5
    if-ge v3, v0, :cond_0

    #@7
    .line 499
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, [Ljava/lang/Object;

    #@15
    .line 500
    .local v2, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v2

    #@16
    .line 502
    .end local v2    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@19
    .line 503
    invoke-virtual {p0, v1, p2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    aput-object v3, p1, v1

    #@1f
    .line 502
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 505
    :cond_1
    array-length v3, p1

    #@23
    if-le v3, v0, :cond_2

    #@25
    .line 506
    const/4 v3, 0x0

    #@26
    aput-object v3, p1, v0

    #@28
    .line 508
    :cond_2
    return-object p1
.end method
