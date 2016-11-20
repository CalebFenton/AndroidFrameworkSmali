.class abstract Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private transient size:I

.field private transient sizeModCount:I

.field final synthetic this$1:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$NavigableSubMap;)V
    .locals 1

    #@0
    .prologue
    .line 1651
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.EntrySetView;"
    .local p1, "this$1":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    .line 1652
    const/4 v0, -0x1

    #@6
    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    #@8
    .line 1651
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.EntrySetView;"
    const/4 v3, 0x0

    #@1
    .line 1675
    instance-of v4, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 1676
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1677
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 1678
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .line 1679
    .local v1, "key":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@f
    invoke-virtual {v4, v1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_1

    #@15
    .line 1680
    return v3

    #@16
    .line 1681
    :cond_1
    iget-object v4, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@18
    iget-object v4, v4, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@1a
    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@1d
    move-result-object v2

    #@1e
    .line 1682
    .local v2, "node":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<**>;"
    if-eqz v2, :cond_2

    #@20
    .line 1683
    invoke-virtual {v2}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    invoke-static {v3, v4}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    .line 1682
    :cond_2
    return v3
.end method

.method public isEmpty()Z
    .locals 3

    #@0
    .prologue
    .line 1670
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.EntrySetView;"
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2
    invoke-virtual {v1}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@5
    move-result-object v0

    #@6
    .line 1671
    .local v0, "n":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@a
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@c
    invoke-virtual {v1, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x1

    #@12
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.EntrySetView;"
    const/4 v5, 0x0

    #@1
    .line 1687
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1688
    return v5

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1689
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 1690
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .line 1691
    .local v1, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@f
    invoke-virtual {v3, v1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 1692
    return v5

    #@16
    .line 1693
    :cond_1
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@18
    iget-object v3, v3, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@1a
    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@1d
    move-result-object v2

    #@1e
    .line 1694
    .local v2, "node":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_2

    #@20
    invoke-virtual {v2}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    .line 1695
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    .line 1694
    invoke-static {v3, v4}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 1696
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@30
    iget-object v3, v3, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@32
    invoke-static {v3, v2}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@35
    .line 1697
    const/4 v3, 0x1

    #@36
    return v3

    #@37
    .line 1699
    :cond_2
    return v5
.end method

.method public size()I
    .locals 3

    #@0
    .prologue
    .line 1655
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.EntrySetView;"
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2
    iget-boolean v1, v1, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@8
    iget-boolean v1, v1, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1656
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@e
    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@10
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 1657
    :cond_0
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    #@17
    const/4 v2, -0x1

    #@18
    if-eq v1, v2, :cond_1

    #@1a
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->sizeModCount:I

    #@1c
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@1e
    iget-object v2, v2, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@20
    invoke-static {v2}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@23
    move-result v2

    #@24
    if-eq v1, v2, :cond_2

    #@26
    .line 1658
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@28
    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@2a
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@2d
    move-result v1

    #@2e
    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->sizeModCount:I

    #@30
    .line 1659
    const/4 v1, 0x0

    #@31
    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    #@33
    .line 1660
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v0

    #@37
    .line 1661
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_2

    #@3d
    .line 1662
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    #@3f
    add-int/lit8 v1, v1, 0x1

    #@41
    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    #@43
    .line 1663
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    goto :goto_0

    #@47
    .line 1666
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    #@49
    return v1
.end method
