.class final Ljava/util/TreeMap$DescendingSubMap;
.super Ljava/util/TreeMap$NavigableSubMap;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DescendingSubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;
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
.field private static final whitelist serialVersionUID:J = 0xcab946d1f0f9d0cL


# instance fields
.field private final greylist-max-o reverseComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V
    .registers 10
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

    .line 2301
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "lo":Ljava/lang/Object;, "TK;"
    .local p6, "hi":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p7}, Ljava/util/TreeMap$NavigableSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .line 2304
    move v0, p7

    move-object p7, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local v0, "hiInclusive":Z
    .local p2, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "fromStart":Z
    .local p4, "lo":Ljava/lang/Object;, "TK;"
    .local p5, "loInclusive":Z
    .local p6, "toEnd":Z
    .local p7, "hi":Ljava/lang/Object;, "TK;"
    iget-object v1, p1, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetcomparator(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v1

    .line 2306
    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p1, Ljava/util/TreeMap$DescendingSubMap;->reverseComparator:Ljava/util/Comparator;

    .line 2302
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

    .line 2309
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->reverseComparator:Ljava/util/Comparator;

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

    .line 2365
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absHighFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

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

    .line 2348
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->descendingMapView:Ljava/util/NavigableMap;

    .line 2349
    .local v0, "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_1b

    .line 2350
    :cond_6
    new-instance v1, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v2, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    iget-boolean v3, p0, Ljava/util/TreeMap$DescendingSubMap;->fromStart:Z

    iget-object v4, p0, Ljava/util/TreeMap$DescendingSubMap;->lo:Ljava/lang/Object;

    iget-boolean v5, p0, Ljava/util/TreeMap$DescendingSubMap;->loInclusive:Z

    iget-boolean v6, p0, Ljava/util/TreeMap$DescendingSubMap;->toEnd:Z

    iget-object v7, p0, Ljava/util/TreeMap$DescendingSubMap;->hi:Ljava/lang/Object;

    iget-boolean v8, p0, Ljava/util/TreeMap$DescendingSubMap;->hiInclusive:Z

    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    iput-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->descendingMapView:Ljava/util/NavigableMap;

    .line 2349
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

    .line 2375
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    .line 2376
    .local v0, "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;-><init>(Ljava/util/TreeMap$DescendingSubMap;)V

    iput-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

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

    .line 2326
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Ljava/util/TreeMap$DescendingSubMap;->fromStart:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Ljava/util/TreeMap$DescendingSubMap;->loInclusive:Z

    if-nez v0, :cond_1b

    if-nez p2, :cond_1b

    goto :goto_23

    .line 2329
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2330
    :cond_23
    :goto_23
    new-instance v2, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v3, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    iget-boolean v7, p0, Ljava/util/TreeMap$DescendingSubMap;->toEnd:Z

    iget-object v8, p0, Ljava/util/TreeMap$DescendingSubMap;->hi:Ljava/lang/Object;

    iget-boolean v9, p0, Ljava/util/TreeMap$DescendingSubMap;->hiInclusive:Z

    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    .end local p1    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "inclusive":Z
    .local v5, "toKey":Ljava/lang/Object;, "TK;"
    .local v6, "inclusive":Z
    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

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

    .line 2357
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

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

    .line 2361
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

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

    .line 2381
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->absFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

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

    .line 2383
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->absCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

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

    .line 2382
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->absLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

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

    .line 2380
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

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

    .line 2384
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->absHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

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

    .line 2379
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

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

    .line 2314
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2316
    invoke-virtual {p0, p3, p4}, Ljava/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2318
    new-instance v1, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v2, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    move v8, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .end local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p4    # "toInclusive":Z
    .local v4, "toKey":Ljava/lang/Object;, "TK;"
    .local v5, "toInclusive":Z
    .local v7, "fromKey":Ljava/lang/Object;, "TK;"
    .local v8, "fromInclusive":Z
    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v1

    .line 2317
    .end local v4    # "toKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "toInclusive":Z
    .end local v7    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local v8    # "fromInclusive":Z
    .restart local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local p2    # "fromInclusive":Z
    .restart local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .restart local p4    # "toInclusive":Z
    :cond_1a
    move-object v7, p1

    move v8, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .restart local v7    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local v8    # "fromInclusive":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "toKey out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2315
    .end local v7    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local v8    # "fromInclusive":Z
    .restart local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local p2    # "fromInclusive":Z
    :cond_24
    move-object v7, p1

    move v8, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .restart local v7    # "fromKey":Ljava/lang/Object;, "TK;"
    .restart local v8    # "fromInclusive":Z
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

    .line 2338
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Ljava/util/TreeMap$DescendingSubMap;->toEnd:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Ljava/util/TreeMap$DescendingSubMap;->hiInclusive:Z

    if-nez v0, :cond_1b

    if-nez p2, :cond_1b

    goto :goto_23

    .line 2341
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2342
    :cond_23
    :goto_23
    new-instance v2, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v3, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    iget-boolean v4, p0, Ljava/util/TreeMap$DescendingSubMap;->fromStart:Z

    iget-object v5, p0, Ljava/util/TreeMap$DescendingSubMap;->lo:Ljava/lang/Object;

    iget-boolean v6, p0, Ljava/util/TreeMap$DescendingSubMap;->loInclusive:Z

    const/4 v7, 0x0

    move-object v8, p1

    move v9, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "inclusive":Z
    .local v8, "fromKey":Ljava/lang/Object;, "TK;"
    .local v9, "inclusive":Z
    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v2
.end method
