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
        "<K1:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK1;TV1;>;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK1;TV1;>;"
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
            "<TK1;TV1;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2390
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK1;TV1;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 2391
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@5
    .line 2390
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2422
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    #@5
    .line 2421
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
    const/4 v2, 0x0

    #@1
    .line 2402
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2403
    return v2

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2404
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 2405
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
    .line 2406
    .local v1, "v":Ljava/lang/Object;, "TV1;"
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
    const/4 v3, 0x0

    #@1
    .line 2425
    if-ne p1, p0, :cond_0

    #@3
    .line 2426
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 2427
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 2428
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 2429
    check-cast v0, Ljava/util/Collection;

    #@d
    .line 2431
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->containsAll(Ljava/util/Collection;)Z

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
    .line 2434
    :catch_0
    move-exception v2

    #@19
    .line 2435
    .local v2, "unused":Ljava/lang/NullPointerException;
    return v3

    #@1a
    .line 2432
    .end local v2    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@1b
    .line 2433
    .local v1, "unused":Ljava/lang/ClassCastException;
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2416
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK1;TV1;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2395
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2396
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@8
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entryIterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 2398
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@11
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entryIterator()Ljava/util/Iterator;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2409
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2410
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2411
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 2412
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    .line 2413
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    .line 2412
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 2419
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2438
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
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
    .line 2439
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySet<TK1;TV1;>;"
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
