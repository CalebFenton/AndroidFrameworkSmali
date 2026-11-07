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
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
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

    .line 2315
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2316
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 2317
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 2345
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 2346
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2325
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2326
    return v1

    .line 2327
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 2328
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2329
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2348
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2349
    return v0

    .line 2350
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2351
    return v2

    .line 2352
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 2354
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_d
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_17} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_17} :catch_1c

    if-eqz v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    return v0

    .line 2355
    :catch_1c
    move-exception v0

    .line 2356
    .local v0, "unused":Ljava/lang/RuntimeException;
    return v2
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 2339
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2319
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_13

    .line 2320
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    goto :goto_1f

    .line 2321
    :cond_13
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    .line 2319
    :goto_1f
    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2332
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 2333
    const/4 v0, 0x0

    return v0

    .line 2334
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 2335
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2335
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 2368
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_43

    .line 2369
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_11

    .line 2370
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->removeEntryIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    .line 2372
    :cond_11
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    .line 2373
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    .line 2374
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    .line 2375
    .local v1, "removed":Z
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2377
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2378
    const/4 v1, 0x1

    .line 2379
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_41
    goto :goto_1e

    .line 2380
    :cond_42
    return v1

    .line 2368
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v1    # "removed":Z
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 2342
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2363
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_f

    .line 2364
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    move-result-object v0

    goto :goto_1b

    .line 2365
    :cond_f
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    .line 2363
    :goto_1b
    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 2359
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
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

    .line 2360
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
