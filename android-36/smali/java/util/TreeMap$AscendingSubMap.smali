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
        "Ljava/util/TreeMap$NavigableSubMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xcab946d1f0fab1cL


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V
    .registers 8
    .param p2, "fromStart"    # Z
    .param p4, "loInclusive"    # Z
    .param p5, "toEnd"    # Z
    .param p7, "hiInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "TK;TV;>;ZTK;ZZTK;Z)V"
        }
    .end annotation

    .line 2210
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    .local p1, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "lo":Ljava/lang/Object;, "TK;"
    .local p6, "hi":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p7}, Ljava/util/TreeMap$NavigableSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .line 2211
    return-void
.end method


# virtual methods
.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2214
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o descendingKeyIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 2270
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2253
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->descendingMapView:Ljava/util/NavigableMap;

    .line 2254
    .local v0, "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_1b

    .line 2255
    :cond_6
    new-instance v1, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v2, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    iget-boolean v3, p0, Ljava/util/TreeMap$AscendingSubMap;->fromStart:Z

    iget-object v4, p0, Ljava/util/TreeMap$AscendingSubMap;->lo:Ljava/lang/Object;

    iget-boolean v5, p0, Ljava/util/TreeMap$AscendingSubMap;->loInclusive:Z

    iget-boolean v6, p0, Ljava/util/TreeMap$AscendingSubMap;->toEnd:Z

    iget-object v7, p0, Ljava/util/TreeMap$AscendingSubMap;->hi:Ljava/lang/Object;

    iget-boolean v8, p0, Ljava/util/TreeMap$AscendingSubMap;->hiInclusive:Z

    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    iput-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->descendingMapView:Ljava/util/NavigableMap;

    .line 2254
    :goto_1b
    return-object v1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2280
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    .line 2281
    .local v0, "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;-><init>(Ljava/util/TreeMap$AscendingSubMap;)V

    iput-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    :goto_d
    return-object v1
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 13
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2231
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Ljava/util/TreeMap$AscendingSubMap;->toEnd:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Ljava/util/TreeMap$AscendingSubMap;->hiInclusive:Z

    if-nez v0, :cond_1b

    if-nez p2, :cond_1b

    goto :goto_23

    .line 2234
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2235
    :cond_23
    :goto_23
    new-instance v2, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v3, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    iget-boolean v4, p0, Ljava/util/TreeMap$AscendingSubMap;->fromStart:Z

    iget-object v5, p0, Ljava/util/TreeMap$AscendingSubMap;->lo:Ljava/lang/Object;

    iget-boolean v6, p0, Ljava/util/TreeMap$AscendingSubMap;->loInclusive:Z

    const/4 v7, 0x0

    move-object v8, p1

    move v9, p2

    .end local p1    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "inclusive":Z
    .local v8, "toKey":Ljava/lang/Object;, "TK;"
    .local v9, "inclusive":Z
    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v2
.end method

.method greylist-max-o keyIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 2262
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absHighFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method greylist-max-o keySpliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 2266
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absHighFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method greylist-max-o subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2286
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->absCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2288
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->absFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2287
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->absHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o subHighest()Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2285
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2289
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->absLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o subLowest()Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2284
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$AscendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 14
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2219
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2221
    invoke-virtual {p0, p3, p4}, Ljava/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2223
    new-instance v1, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v2, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    move v8, p4

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .end local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p4    # "toInclusive":Z
    .local v4, "fromKey":Ljava/lang/Object;, "TK;"
    .local v5, "fromInclusive":Z
    .local v7, "toKey":Ljava/lang/Object;, "TK;"
    .local v8, "toInclusive":Z
    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v1

    .line 2222
    .end local v4    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "fromInclusive":Z
    .end local v7    # "toKey":Ljava/lang/Object;, "TK;"
    .end local v8    # "toInclusive":Z
    .restart local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local p2    # "fromInclusive":Z
    .restart local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .restart local p4    # "toInclusive":Z
    :cond_1a
    move-object v4, p1

    move v5, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .restart local v4    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local v5    # "fromInclusive":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "toKey out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2220
    .end local v4    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "fromInclusive":Z
    .restart local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local p2    # "fromInclusive":Z
    :cond_24
    move-object v4, p1

    move v5, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .restart local v4    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local v5    # "fromInclusive":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromKey out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 13
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2243
    .local p0, "this":Ljava/util/TreeMap$AscendingSubMap;, "Ljava/util/TreeMap$AscendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$AscendingSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Ljava/util/TreeMap$AscendingSubMap;->fromStart:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Ljava/util/TreeMap$AscendingSubMap;->loInclusive:Z

    if-nez v0, :cond_1b

    if-nez p2, :cond_1b

    goto :goto_23

    .line 2246
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2247
    :cond_23
    :goto_23
    new-instance v2, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v3, p0, Ljava/util/TreeMap$AscendingSubMap;->m:Ljava/util/TreeMap;

    iget-boolean v7, p0, Ljava/util/TreeMap$AscendingSubMap;->toEnd:Z

    iget-object v8, p0, Ljava/util/TreeMap$AscendingSubMap;->hi:Ljava/lang/Object;

    iget-boolean v9, p0, Ljava/util/TreeMap$AscendingSubMap;->hiInclusive:Z

    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "inclusive":Z
    .local v5, "fromKey":Ljava/lang/Object;, "TK;"
    .local v6, "inclusive":Z
    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v2
.end method
