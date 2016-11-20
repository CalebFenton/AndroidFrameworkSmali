.class final Ljava/util/concurrent/ConcurrentSkipListMap$Values;
.super Ljava/util/AbstractCollection;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;"
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
    .line 2413
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 2414
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@5
    .line 2413
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2424
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2423
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2422
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2417
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2418
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;

    #@8
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@a
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    #@12
    move-object v0, v1

    #@13
    .line 2417
    :goto_0
    return-object v0

    #@14
    .line 2419
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    #@16
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@18
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@20
    move-object v0, v1

    #@21
    goto :goto_0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2435
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 2436
    :cond_0
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@a
    instance-of v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 2437
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@10
    check-cast v4, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@12
    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->removeValueIf(Ljava/util/function/Predicate;)Z

    #@15
    move-result v4

    #@16
    return v4

    #@17
    .line 2440
    :cond_1
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    #@19
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@1b
    check-cast v4, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@1d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    invoke-direct {v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@23
    .line 2441
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v2, 0x0

    #@24
    .line 2442
    .local v2, "removed":Z
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 2443
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/util/Map$Entry;

    #@30
    .line 2444
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    .line 2445
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_2

    #@3a
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_2

    #@46
    .line 2446
    const/4 v2, 0x1

    #@47
    goto :goto_0

    #@48
    .line 2448
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    return v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 2421
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2429
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2430
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@8
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->valueSpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    #@d
    move-result-object v0

    #@e
    .line 2429
    :goto_0
    return-object v0

    #@f
    .line 2431
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    #@11
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@13
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@1b
    move-object v0, v1

    #@1c
    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2425
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
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
    .line 2426
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TK;TV;>;"
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
