.class abstract Ljava/util/TreeMap$NavigableSubMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NavigableSubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;,
        Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;,
        Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;,
        Ljava/util/TreeMap$NavigableSubMap$SubMapEntryIterator;,
        Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;,
        Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x26617d4eacdd5933L


# instance fields
.field transient greylist-max-o descendingMapView:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient greylist-max-o entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$NavigableSubMap<",
            "TK;TV;>.EntrySetView;"
        }
    .end annotation
.end field

.field final greylist-max-o fromStart:Z

.field final greylist-max-o hi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final greylist-max-o hiInclusive:Z

.field final greylist-max-o lo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final greylist-max-o loInclusive:Z

.field final greylist-max-o m:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient greylist-max-o navigableKeySetView:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$KeySet<",
            "TK;>;"
        }
    .end annotation
.end field

.field final greylist-max-o toEnd:Z


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

    .line 1685
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "lo":Ljava/lang/Object;, "TK;"
    .local p6, "hi":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1686
    if-nez p2, :cond_16

    if-nez p5, :cond_16

    .line 1687
    invoke-virtual {p1, p3, p6}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_20

    .line 1688
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromKey > toKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1690
    :cond_16
    if-nez p2, :cond_1b

    .line 1691
    invoke-virtual {p1, p3, p3}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1692
    :cond_1b
    if-nez p5, :cond_20

    .line 1693
    invoke-virtual {p1, p6, p6}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1696
    :cond_20
    :goto_20
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    .line 1697
    iput-boolean p2, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    .line 1698
    iput-object p3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    .line 1699
    iput-boolean p4, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    .line 1700
    iput-boolean p5, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    .line 1701
    iput-object p6, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    .line 1702
    iput-boolean p7, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    .line 1703
    return-void
.end method


# virtual methods
.method final greylist-max-o absCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1761
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1762
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0

    .line 1763
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1764
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1e

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move-object v1, v0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    :goto_1f
    return-object v1
.end method

.method final greylist-max-o absFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1775
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1776
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0

    .line 1777
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1778
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1e

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move-object v1, v0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    :goto_1f
    return-object v1
.end method

.method final greylist-max-o absHighFence()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1790
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1b

    :cond_6
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    if-eqz v0, :cond_13

    .line 1791
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_1b

    .line 1792
    :cond_13
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1790
    :goto_1b
    return-object v0
.end method

.method final greylist-max-o absHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1768
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1769
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0

    .line 1770
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1771
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1e

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move-object v1, v0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    :goto_1f
    return-object v1
.end method

.method final greylist-max-o absHighest()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1754
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_20

    .line 1755
    :cond_b
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_20

    .line 1756
    :cond_18
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :goto_20
    nop

    .line 1757
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_2e

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2e

    :cond_2c
    move-object v1, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    :goto_2f
    return-object v1
.end method

.method final greylist-max-o absLowFence()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1797
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1b

    :cond_6
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    if-eqz v0, :cond_13

    .line 1798
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_1b

    .line 1799
    :cond_13
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1797
    :goto_1b
    return-object v0
.end method

.method final greylist-max-o absLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1782
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1783
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0

    .line 1784
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1785
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1e

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move-object v1, v0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    :goto_1f
    return-object v1
.end method

.method final greylist-max-o absLowest()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1746
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_20

    .line 1747
    :cond_b
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_20

    .line 1748
    :cond_18
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :goto_20
    nop

    .line 1749
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_2e

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2e

    :cond_2c
    move-object v1, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    :goto_2f
    return-object v1
.end method

.method public final whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1885
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1889
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1863
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1866
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v0

    .line 1867
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :cond_16
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1853
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1856
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 1857
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1859
    :cond_16
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1873
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public final whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1831
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method abstract greylist-max-o descendingKeyIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation
.end method

.method public whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1964
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1925
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1917
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1901
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1905
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1877
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public final whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1972
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap$NavigableSubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1893
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1897
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o inClosedRange(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 1730
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1d

    :cond_e
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    .line 1731
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 1730
    :goto_20
    return v0
.end method

.method final greylist-max-o inRange(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1726
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method final greylist-max-o inRange(Ljava/lang/Object;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    .line 1735
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inClosedRange(Ljava/lang/Object;)Z

    move-result v0

    :goto_b
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1823
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    :goto_17
    return v0
.end method

.method abstract greylist-max-o keyIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation
.end method

.method public final whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1960
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract greylist-max-o keySpliterator()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation
.end method

.method public final whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1929
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1921
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1909
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1913
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1847
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1849
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/TreeMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1848
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1954
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->navigableKeySetView:Ljava/util/TreeMap$KeySet;

    .line 1955
    .local v0, "nksv":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    .line 1956
    :cond_6
    new-instance v1, Ljava/util/TreeMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->navigableKeySetView:Ljava/util/TreeMap$KeySet;

    .line 1955
    :goto_d
    return-object v1
.end method

.method public final whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1933
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1934
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 1935
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 1936
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v2, v0}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1937
    :cond_f
    return-object v1
.end method

.method public final whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1941
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1942
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 1943
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 1944
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v2, v0}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1945
    :cond_f
    return-object v1
.end method

.method public final whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1835
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1837
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1836
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1841
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1843
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1842
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1881
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1827
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_17
    return v0
.end method

.method abstract greylist-max-o subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o subHighest()Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract greylist-max-o subLowest()Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1968
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap$NavigableSubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1976
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap$NavigableSubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o tooHigh(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 1717
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-nez v0, :cond_16

    .line 1718
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1719
    .local v0, "c":I
    if-gtz v0, :cond_14

    if-nez v0, :cond_16

    iget-boolean v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    if-nez v1, :cond_16

    .line 1720
    :cond_14
    const/4 v1, 0x1

    return v1

    .line 1722
    .end local v0    # "c":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o tooLow(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 1708
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-nez v0, :cond_16

    .line 1709
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1710
    .local v0, "c":I
    if-ltz v0, :cond_14

    if-nez v0, :cond_16

    iget-boolean v1, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    if-nez v1, :cond_16

    .line 1711
    :cond_14
    const/4 v1, 0x1

    return v1

    .line 1713
    .end local v0    # "c":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
