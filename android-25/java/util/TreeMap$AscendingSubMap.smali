.class final Ljava/util/TreeMap$AscendingSubMap;
.super Ljava/util/TreeMap$NavigableSubMap;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AscendingSubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcab946d1f0fab1cL


# direct methods
.method constructor <init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V
    .locals 0
    .param p2, "fromStart"    # Z
    .param p4, "loInclusive"    # Z
    .param p5, "toEnd"    # Z
    .param p7, "hiInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;ZTK;ZZTK;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1881
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "lo":Ljava/lang/Object;, "TK;"
    .local p6, "hi":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p7}, Ljava/util/TreeMap$NavigableSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@3
    .line 1880
    return-void
.end method


# virtual methods
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
    .line 1885
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method descendingKeyIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1943
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;

    #@2
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    #@d
    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1926
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$AscendingSubMap;->descendingMapView:Ljava/util/NavigableMap;

    #@2
    .line 1927
    .local v8, "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v8, :cond_0

    #@4
    .end local v8    # "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :goto_0
    return-object v8

    #@5
    .line 1929
    .restart local v8    # "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    #@7
    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    #@9
    .line 1930
    iget-boolean v2, p0, Ljava/util/TreeMap$AscendingSubMap;->fromStart:Z

    #@b
    iget-object v3, p0, Ljava/util/TreeMap$AscendingSubMap;->lo:Ljava/lang/Object;

    #@d
    iget-boolean v4, p0, Ljava/util/TreeMap$AscendingSubMap;->loInclusive:Z

    #@f
    .line 1931
    iget-boolean v5, p0, Ljava/util/TreeMap$AscendingSubMap;->toEnd:Z

    #@11
    iget-object v6, p0, Ljava/util/TreeMap$AscendingSubMap;->hi:Ljava/lang/Object;

    #@13
    iget-boolean v7, p0, Ljava/util/TreeMap$AscendingSubMap;->hiInclusive:Z

    #@15
    .line 1929
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@18
    .line 1928
    iput-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->descendingMapView:Ljava/util/NavigableMap;

    #@1a
    move-object v8, v0

    #@1b
    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1953
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    #@2
    .line 1954
    .local v0, "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;

    #@7
    .end local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;-><init>(Ljava/util/TreeMap$AscendingSubMap;)V

    #@a
    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    #@1
    .line 1903
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_2

    #@7
    iget-boolean v0, p0, Ljava/util/TreeMap$AscendingSubMap;->toEnd:Z

    #@9
    if-nez v0, :cond_0

    #@b
    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    #@d
    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->hi:Ljava/lang/Object;

    #@f
    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1906
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "toKey out of range"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1904
    :cond_1
    iget-boolean v0, p0, Ljava/util/TreeMap$AscendingSubMap;->hiInclusive:Z

    #@20
    .line 1903
    if-nez v0, :cond_0

    #@22
    if-nez p2, :cond_0

    #@24
    .line 1907
    :cond_2
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    #@26
    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    #@28
    .line 1908
    iget-boolean v2, p0, Ljava/util/TreeMap$AscendingSubMap;->fromStart:Z

    #@2a
    iget-object v3, p0, Ljava/util/TreeMap$AscendingSubMap;->lo:Ljava/lang/Object;

    #@2c
    iget-boolean v4, p0, Ljava/util/TreeMap$AscendingSubMap;->loInclusive:Z

    #@2e
    move-object v6, p1

    #@2f
    move v7, p2

    #@30
    .line 1907
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@33
    return-object v0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1935
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;

    #@2
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absHighFence()Ljava/util/TreeMap$TreeMapEntry;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    #@d
    return-object v0
.end method

.method keySpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1939
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;

    #@2
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absHighFence()Ljava/util/TreeMap$TreeMapEntry;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    #@d
    return-object v0
.end method

.method subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1959
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->absCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1961
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->absFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1960
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->absHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method subHighest()Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1958
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1962
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->absLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method subLowest()Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1957
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    #@1
    .line 1890
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1891
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "fromKey out of range"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1892
    :cond_0
    invoke-virtual {p0, p3, p4}, Ljava/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1893
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "toKey out of range"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1894
    :cond_1
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    #@21
    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    #@23
    move-object v3, p1

    #@24
    move v4, p2

    #@25
    move v5, v2

    #@26
    move-object v6, p3

    #@27
    move v7, p4

    #@28
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@2b
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.AscendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    #@1
    .line 1916
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_2

    #@7
    iget-boolean v0, p0, Ljava/util/TreeMap$AscendingSubMap;->fromStart:Z

    #@9
    if-nez v0, :cond_0

    #@b
    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    #@d
    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->lo:Ljava/lang/Object;

    #@f
    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1919
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "fromKey out of range"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1917
    :cond_1
    iget-boolean v0, p0, Ljava/util/TreeMap$AscendingSubMap;->loInclusive:Z

    #@20
    .line 1916
    if-nez v0, :cond_0

    #@22
    if-nez p2, :cond_0

    #@24
    .line 1920
    :cond_2
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    #@26
    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    #@28
    .line 1922
    iget-boolean v5, p0, Ljava/util/TreeMap$AscendingSubMap;->toEnd:Z

    #@2a
    iget-object v6, p0, Ljava/util/TreeMap$AscendingSubMap;->hi:Ljava/lang/Object;

    #@2c
    iget-boolean v7, p0, Ljava/util/TreeMap$AscendingSubMap;->hiInclusive:Z

    #@2e
    move-object v3, p1

    #@2f
    move v4, p2

    #@30
    .line 1920
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@33
    return-object v0
.end method
