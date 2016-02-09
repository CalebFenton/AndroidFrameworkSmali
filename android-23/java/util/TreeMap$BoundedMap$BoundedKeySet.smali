.class final Ljava/util/TreeMap$BoundedMap$BoundedKeySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$BoundedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;",
        "Ljava/util/NavigableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$BoundedMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$BoundedMap;)V
    .locals 0

    #@0
    .prologue
    .line 1535
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "this$1":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1599
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1607
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    const/4 v0, 0x0

    #@1
    .line 1561
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@3
    invoke-static {v1, p1}, Ljava/util/TreeMap$BoundedMap;->-wrap0(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@b
    iget-object v1, v1, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1553
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@4
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-static {v2, v3}, Ljava/util/TreeMap$BoundedMap;->-wrap2(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;-><init>(Ljava/util/TreeMap$BoundedMap$BoundedKeySet;Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V

    #@e
    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1639
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@4
    iget-object v1, v1, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@6
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@8
    invoke-static {v2}, Ljava/util/TreeMap$BoundedMap;->-get0(Ljava/util/TreeMap$BoundedMap;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    const/4 v2, 0x0

    #@f
    :goto_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@11
    invoke-static {v3}, Ljava/util/TreeMap$BoundedMap;->-get1(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@17
    invoke-static {v4}, Ljava/util/TreeMap$BoundedMap;->-get2(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;

    #@1a
    move-result-object v4

    #@1b
    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@1d
    invoke-static {v5}, Ljava/util/TreeMap$BoundedMap;->-get3(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@23
    invoke-static {v6}, Ljava/util/TreeMap$BoundedMap;->-get4(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;

    #@26
    move-result-object v6

    #@27
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@2a
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    :cond_0
    const/4 v2, 0x1

    #@30
    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1573
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->firstKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1595
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1623
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "to":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1627
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "toExclusive":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1603
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1541
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1545
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@4
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@6
    const/4 v3, 0x1

    #@7
    invoke-static {v2, v3}, Ljava/util/TreeMap$BoundedMap;->-wrap2(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;-><init>(Ljava/util/TreeMap$BoundedMap$BoundedKeySet;Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V

    #@e
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1582
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->lastKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1591
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    const/4 v1, 0x0

    #@1
    .line 1577
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@3
    invoke-virtual {v2}, Ljava/util/TreeMap$BoundedMap;->pollFirstEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1578
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    const/4 v1, 0x0

    #@1
    .line 1586
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@3
    invoke-virtual {v2}, Ljava/util/TreeMap$BoundedMap;->pollLastEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1587
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    const/4 v0, 0x0

    #@1
    .line 1565
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@3
    invoke-static {v1, p1}, Ljava/util/TreeMap$BoundedMap;->-wrap0(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@b
    iget-object v1, v1, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1537
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1615
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1619
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    .local p2, "toExclusive":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1631
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1635
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
