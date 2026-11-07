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
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2274
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2275
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 2276
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 2285
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 2284
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 2283
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 2278
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_13

    .line 2279
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    goto :goto_1f

    .line 2280
    :cond_13
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    .line 2278
    :goto_1f
    return-object v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 2296
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    if-eqz p1, :cond_43

    .line 2297
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_11

    .line 2298
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->removeValueIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    .line 2300
    :cond_11
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    .line 2301
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    .line 2302
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    .line 2303
    .local v1, "removed":Z
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2305
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2306
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2307
    const/4 v1, 0x1

    .line 2308
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_41
    goto :goto_1e

    .line 2309
    :cond_42
    return v1

    .line 2296
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v1    # "removed":Z
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 2282
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 2290
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_f

    .line 2291
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->valueSpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    move-result-object v0

    goto :goto_1b

    .line 2292
    :cond_f
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    .line 2290
    :goto_1b
    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 2286
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2287
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
