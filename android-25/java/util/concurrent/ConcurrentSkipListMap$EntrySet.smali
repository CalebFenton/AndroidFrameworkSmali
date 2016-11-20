.class final Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2454
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 2455
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@5
    .line 2454
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2484
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    #@5
    .line 2483
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2464
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2465
    return v2

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2466
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 2467
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 2468
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    #@15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    :cond_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 2487
    if-ne p1, p0, :cond_0

    #@3
    .line 2488
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 2489
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 2490
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 2491
    check-cast v0, Ljava/util/Collection;

    #@d
    .line 2493
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_2

    #@13
    invoke-interface {v0, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v3

    #@17
    :cond_2
    return v3

    #@18
    .line 2496
    :catch_0
    move-exception v2

    #@19
    .line 2497
    .local v2, "unused":Ljava/lang/NullPointerException;
    return v3

    #@1a
    .line 2494
    .end local v2    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@1b
    .line 2495
    .local v1, "unused":Ljava/lang/ClassCastException;
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2478
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2458
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2459
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;

    #@8
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@a
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    #@12
    move-object v0, v1

    #@13
    .line 2458
    :goto_0
    return-object v0

    #@14
    .line 2460
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    #@16
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@18
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@20
    move-object v0, v1

    #@21
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2471
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2472
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2473
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 2474
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    .line 2475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    .line 2474
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2509
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 2510
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@a
    instance-of v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 2511
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@10
    check-cast v3, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@12
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->removeEntryIf(Ljava/util/function/Predicate;)Z

    #@15
    move-result v3

    #@16
    return v3

    #@17
    .line 2514
    :cond_1
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    #@19
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@1b
    check-cast v3, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@1d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    invoke-direct {v1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@23
    .line 2515
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v2, 0x0

    #@24
    .line 2516
    .local v2, "removed":Z
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 2517
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/util/Map$Entry;

    #@30
    .line 2518
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_2

    #@46
    .line 2519
    const/4 v2, 0x1

    #@47
    goto :goto_0

    #@48
    .line 2521
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    return v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 2481
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2504
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2505
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@8
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    #@d
    move-result-object v0

    #@e
    .line 2504
    :goto_0
    return-object v0

    #@f
    .line 2506
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    #@11
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@13
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@1b
    move-object v0, v1

    #@1c
    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2500
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2501
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
