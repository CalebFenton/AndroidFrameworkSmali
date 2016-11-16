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
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TE;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TE;*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1140
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TE;*>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

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
    .line 1162
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1159
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

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
    .line 1166
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

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
    .line 1158
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

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
    .line 1150
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/TreeMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1151
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@8
    check-cast v0, Ljava/util/TreeMap;

    #@a
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeyIterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1153
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@11
    check-cast v0, Ljava/util/TreeMap$NavigableSubMap;

    #@13
    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->descendingKeyIterator()Ljava/util/Iterator;

    #@16
    move-result-object v0

    #@17
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
    .line 1201
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    new-instance v0, Ljava/util/TreeMap$KeySet;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@4
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    #@b
    return-object v0
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
    .line 1164
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

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
    .line 1161
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
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
    .line 1186
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeMap$KeySet;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    #@b
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1195
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap$KeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
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
    .line 1163
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1157
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

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
    .line 1143
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/TreeMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1144
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@8
    check-cast v0, Ljava/util/TreeMap;

    #@a
    invoke-virtual {v0}, Ljava/util/TreeMap;->keyIterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1146
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@11
    check-cast v0, Ljava/util/TreeMap$NavigableSubMap;

    #@13
    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->keyIterator()Ljava/util/Iterator;

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
    .line 1165
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

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
    .line 1160
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

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
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 1168
    iget-object v2, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1169
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
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 1172
    iget-object v2, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1173
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
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1176
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySet;->size()I

    #@3
    move-result v0

    #@4
    .line 1177
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@6
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 1178
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySet;->size()I

    #@c
    move-result v1

    #@d
    if-eq v1, v0, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1156
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1205
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-static {v0}, Ljava/util/TreeMap;->keySpliteratorFor(Ljava/util/NavigableMap;)Ljava/util/Spliterator;

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
    .line 1182
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeMap$KeySet;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@4
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    #@b
    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1192
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap$KeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    #@5
    move-result-object v0

    #@6
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
    .line 1189
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeMap$KeySet;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->m:Ljava/util/NavigableMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    #@b
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1198
    .local p0, "this":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap$KeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
