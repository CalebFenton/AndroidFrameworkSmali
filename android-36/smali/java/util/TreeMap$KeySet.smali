.class final Ljava/util/TreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
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
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o m:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TE;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/NavigableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TE;*>;)V"
        }
    .end annotation

    .line 1430
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TE;*>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    return-void
.end method


# virtual methods
.method public whitelist test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1452
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 1449
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    return-void
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 1456
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1448
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1440
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_f

    .line 1441
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1443
    :cond_f
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    check-cast v0, Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->descendingKeyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingSet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1491
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    new-instance v0, Ljava/util/TreeMap$KeySet;

    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1454
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1451
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1476
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeMap$KeySet;

    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1485
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap$KeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1453
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1447
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1433
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_f

    .line 1434
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1436
    :cond_f
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    check-cast v0, Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1455
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1450
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1458
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1459
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;*>;"
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
            "()TE;"
        }
    .end annotation

    .line 1462
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1463
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;*>;"
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
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1466
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySet;->size()I

    move-result v0

    .line 1467
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySet;->size()I

    move-result v1

    if-eq v1, v0, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1446
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1495
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/util/TreeMap;->keySpliteratorFor(Ljava/util/NavigableMap;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1472
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeMap$KeySet;

    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1482
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap$KeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1479
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeMap$KeySet;

    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1488
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap$KeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
