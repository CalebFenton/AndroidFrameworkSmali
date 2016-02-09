.class Ljava/util/TreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
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
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    #@0
    .prologue
    .line 951
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

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
    .line 1009
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 981
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    #@5
    .line 980
    return-void
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
    .line 985
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

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
    .line 973
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
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
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    #@1
    .line 965
    new-instance v1, Ljava/util/TreeMap$KeySet$2;

    #@3
    iget-object v2, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@5
    iget-object v3, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@7
    iget-object v3, v3, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@9
    if-nez v3, :cond_0

    #@b
    :goto_0
    invoke-direct {v1, p0, v2, v0}, Ljava/util/TreeMap$KeySet$2;-><init>(Ljava/util/TreeMap$KeySet;Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V

    #@e
    return-object v1

    #@f
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@11
    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@13
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
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
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    const/4 v3, 0x0

    #@1
    .line 1055
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@3
    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@5
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@7
    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@9
    const/4 v2, 0x0

    #@a
    move-object v5, v3

    #@b
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@e
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@11
    move-result-object v0

    #@12
    return-object v0
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
    .line 993
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

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
    .line 1005
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 1039
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "to":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1043
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "toExclusive":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@a
    move-result-object v0

    #@b
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
    .line 1013
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    #@1
    .line 957
    new-instance v1, Ljava/util/TreeMap$KeySet$1;

    #@3
    iget-object v2, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@5
    iget-object v3, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@7
    iget-object v3, v3, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@9
    if-nez v3, :cond_0

    #@b
    :goto_0
    invoke-direct {v1, p0, v2, v0}, Ljava/util/TreeMap$KeySet$1;-><init>(Ljava/util/TreeMap$KeySet;Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V

    #@e
    return-object v1

    #@f
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@11
    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@13
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
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
    .line 997
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

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
    .line 1001
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

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
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    const/4 v1, 0x0

    #@1
    .line 1017
    iget-object v2, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@3
    invoke-static {v2}, Ljava/util/TreeMap;->-wrap1(Ljava/util/TreeMap;)Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1018
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
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
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    const/4 v1, 0x0

    #@1
    .line 1022
    iget-object v2, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@3
    invoke-static {v2}, Ljava/util/TreeMap;->-wrap2(Ljava/util/TreeMap;)Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1023
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
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
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 977
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

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
    .line 953
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    iget v0, v0, Ljava/util/TreeMap;->size:I

    #@4
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
    .line 1031
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1035
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    .local p2, "toExclusive":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, p1, v1, p2, v2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@b
    move-result-object v0

    #@c
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
    .line 1047
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1051
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method
