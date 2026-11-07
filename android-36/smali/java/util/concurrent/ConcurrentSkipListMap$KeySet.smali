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
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TK;>;",
        "Ljava/util/NavigableSet<",
        "TK;>;"
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

    .line 2196
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-void
.end method


# virtual methods
.method public whitelist test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2204
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 2201
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2206
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 2199
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 2237
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingSet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2262
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2223
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2224
    return v0

    .line 2225
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2226
    return v2

    .line 2227
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 2229
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_d
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->containsAll(Ljava/util/Collection;)Z

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

    .line 2230
    :catch_1c
    move-exception v0

    .line 2231
    .local v0, "unused":Ljava/lang/RuntimeException;
    return v2
.end method

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2207
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2203
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2256
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2247
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2193
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2205
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 2198
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "TK;>;"
        }
    .end annotation

    .line 2218
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_13

    .line 2219
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    goto :goto_1f

    .line 2220
    :cond_13
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    .line 2218
    :goto_1f
    return-object v0
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2208
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2202
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2210
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2211
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2214
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2215
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 2200
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 2197
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "TK;>;"
        }
    .end annotation

    .line 2266
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_f

    .line 2267
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySpliterator()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    move-result-object v0

    goto :goto_1b

    .line 2268
    :cond_f
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    .line 2266
    :goto_1b
    return-object v0
.end method

.method public greylist-max-o subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2253
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2243
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p3, "toElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2193
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2259
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2250
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2193
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 2234
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
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

    .line 2235
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
