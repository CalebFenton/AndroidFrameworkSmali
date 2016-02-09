.class final Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;*>;"
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
            "<TE;*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2288
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TE;*>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@5
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2296
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2293
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    #@5
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2298
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2291
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2332
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->descendingSet()Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2357
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 2316
    if-ne p1, p0, :cond_0

    #@3
    .line 2317
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 2318
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 2319
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 2320
    check-cast v0, Ljava/util/Collection;

    #@d
    .line 2322
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->containsAll(Ljava/util/Collection;)Z

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
    .line 2325
    :catch_0
    move-exception v2

    #@19
    .line 2326
    .local v2, "unused":Ljava/lang/NullPointerException;
    return v3

    #@1a
    .line 2323
    .end local v2    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@1b
    .line 2324
    .local v1, "unused":Ljava/lang/ClassCastException;
    return v3
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2299
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2295
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2351
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2342
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "toElement"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2350
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2297
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2290
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2310
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2311
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@8
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keyIterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 2313
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@11
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keyIterator()Ljava/util/Iterator;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2300
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2294
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 2302
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 2303
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;*>;"
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 2306
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 2307
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;*>;"
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2292
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 2289
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2348
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2338
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;
    .param p2, "toElement"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2347
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2354
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2345
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2353
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2329
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
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
    .line 2330
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySet<TE;>;"
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
