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
        Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;,
        Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;,
        Ljava/util/TreeMap$NavigableSubMap$EntrySetView;,
        Ljava/util/TreeMap$NavigableSubMap$SubMapEntryIterator;,
        Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;,
        Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x26617d4eacdd5933L


# instance fields
.field transient descendingMapView:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$NavigableSubMap",
            "<TK;TV;>.EntrySetView;"
        }
    .end annotation
.end field

.field final fromStart:Z

.field final hi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final hiInclusive:Z

.field final lo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final loInclusive:Z

.field final m:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient navigableKeySetView:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field final toEnd:Z


# direct methods
.method constructor <init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V
    .locals 2
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
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "lo":Ljava/lang/Object;, "TK;"
    .local p6, "hi":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    .line 1389
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 1619
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->descendingMapView:Ljava/util/NavigableMap;

    #@6
    .line 1620
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    #@8
    .line 1621
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->navigableKeySetView:Ljava/util/TreeMap$KeySet;

    #@a
    .line 1392
    if-nez p2, :cond_0

    #@c
    if-eqz p5, :cond_3

    #@e
    .line 1396
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 1397
    invoke-virtual {p1, p3, p3}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@13
    .line 1398
    :cond_1
    if-nez p5, :cond_2

    #@15
    .line 1399
    invoke-virtual {p1, p6, p6}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@18
    .line 1402
    :cond_2
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@1a
    .line 1403
    iput-boolean p2, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@1c
    .line 1404
    iput-object p3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@1e
    .line 1405
    iput-boolean p4, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    #@20
    .line 1406
    iput-boolean p5, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@22
    .line 1407
    iput-object p6, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@24
    .line 1408
    iput-boolean p7, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    #@26
    .line 1391
    return-void

    #@27
    .line 1393
    :cond_3
    invoke-virtual {p1, p3, p6}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    if-lez v0, :cond_2

    #@2d
    .line 1394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v1, "fromKey > toKey"

    #@32
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0
.end method


# virtual methods
.method final absCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 1467
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1468
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 1469
    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@e
    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@11
    move-result-object v0

    #@12
    .line 1470
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    #@14
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@16
    invoke-virtual {p0, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    :cond_1
    move-object v0, v1

    #@1d
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    return-object v0
.end method

.method final absFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 1481
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1482
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 1483
    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@e
    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@11
    move-result-object v0

    #@12
    .line 1484
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    #@14
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@16
    invoke-virtual {p0, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    :cond_1
    move-object v0, v1

    #@1d
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    return-object v0
.end method

.method final absHighFence()Ljava/util/TreeMap$TreeMapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1496
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1497
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@c
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@11
    move-result-object v0

    #@12
    goto :goto_0

    #@13
    .line 1498
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@15
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_0
.end method

.method final absHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 1474
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1475
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 1476
    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@e
    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@11
    move-result-object v0

    #@12
    .line 1477
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    #@14
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@16
    invoke-virtual {p0, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    :cond_1
    move-object v0, v1

    #@1d
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    return-object v0
.end method

.method final absHighest()Ljava/util/TreeMap$TreeMapEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1460
    iget-boolean v2, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@3
    if-eqz v2, :cond_2

    #@5
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@7
    invoke-virtual {v2}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@a
    move-result-object v0

    #@b
    .line 1463
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@d
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@f
    invoke-virtual {p0, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    :cond_0
    move-object v0, v1

    #@16
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1
    return-object v0

    #@17
    .line 1461
    :cond_2
    iget-boolean v2, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    #@19
    if-eqz v2, :cond_3

    #@1b
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@1d
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@1f
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@22
    move-result-object v0

    #@23
    goto :goto_0

    #@24
    .line 1462
    :cond_3
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@26
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@28
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@2b
    move-result-object v0

    #@2c
    goto :goto_0
.end method

.method final absLowFence()Ljava/util/TreeMap$TreeMapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1503
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1504
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@c
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@11
    move-result-object v0

    #@12
    goto :goto_0

    #@13
    .line 1505
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@15
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_0
.end method

.method final absLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 1488
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1489
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 1490
    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@e
    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@11
    move-result-object v0

    #@12
    .line 1491
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    #@14
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@16
    invoke-virtual {p0, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    :cond_1
    move-object v0, v1

    #@1d
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    return-object v0
.end method

.method final absLowest()Ljava/util/TreeMap$TreeMapEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1452
    iget-boolean v2, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@3
    if-eqz v2, :cond_2

    #@5
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@7
    invoke-virtual {v2}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@a
    move-result-object v0

    #@b
    .line 1455
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@d
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@f
    invoke-virtual {p0, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    :cond_0
    move-object v0, v1

    #@16
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1
    return-object v0

    #@17
    .line 1453
    :cond_2
    iget-boolean v2, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    #@19
    if-eqz v2, :cond_3

    #@1b
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@1d
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@1f
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@22
    move-result-object v0

    #@23
    goto :goto_0

    #@24
    .line 1454
    :cond_3
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@26
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@28
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@2b
    move-result-object v0

    #@2c
    goto :goto_0
.end method

.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1555
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1559
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1537
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method abstract descendingKeyIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1634
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->descendingMap()Ljava/util/NavigableMap;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1595
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1587
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1571
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1575
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1547
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1642
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap$NavigableSubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1563
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1567
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method final inClosedRange(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1436
    iget-boolean v2, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@4
    if-nez v2, :cond_0

    #@6
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@8
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@a
    invoke-virtual {v2, p1, v3}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@d
    move-result v2

    #@e
    if-ltz v2, :cond_2

    #@10
    .line 1437
    :cond_0
    iget-boolean v2, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@12
    if-nez v2, :cond_1

    #@14
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@16
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@18
    invoke-virtual {v2, v3, p1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1b
    move-result v2

    #@1c
    if-ltz v2, :cond_3

    #@1e
    :cond_1
    :goto_0
    move v1, v0

    #@1f
    .line 1436
    :cond_2
    return v1

    #@20
    :cond_3
    move v0, v1

    #@21
    .line 1437
    goto :goto_0
.end method

.method final inRange(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1432
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooLow(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method final inRange(Ljava/lang/Object;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 1441
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inClosedRange(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1529
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@a
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->entrySet()Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@16
    move-result v0

    #@17
    goto :goto_0
.end method

.method abstract keyIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1630
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method abstract keySpliterator()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1599
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subHighest()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1591
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subHighest()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1579
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1583
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1624
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->navigableKeySetView:Ljava/util/TreeMap$KeySet;

    #@2
    .line 1625
    .local v0, "nksv":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "nksv":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    #@5
    .line 1626
    .restart local v0    # "nksv":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$KeySet;

    #@7
    .end local v0    # "nksv":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->navigableKeySetView:Ljava/util/TreeMap$KeySet;

    #@c
    goto :goto_0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1603
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subLowest()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    .line 1604
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v1

    #@8
    .line 1605
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@a
    .line 1606
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@c
    invoke-static {v2, v0}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@f
    .line 1607
    :cond_0
    return-object v1
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1611
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->subHighest()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    .line 1612
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v1

    #@8
    .line 1613
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@a
    .line 1614
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@c
    invoke-static {v2, v0}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@f
    .line 1615
    :cond_0
    return-object v1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1541
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "key out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1543
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@11
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1551
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1533
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@a
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->entrySet()Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@16
    move-result v0

    #@17
    goto :goto_0
.end method

.method abstract subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract subHighest()Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract subLowest()Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1638
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap$NavigableSubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1646
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap$NavigableSubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method final tooHigh(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 1423
    iget-boolean v1, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1424
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@7
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    #@9
    invoke-virtual {v1, p1, v2}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    .line 1425
    .local v0, "c":I
    if-gtz v0, :cond_1

    #@f
    if-nez v0, :cond_0

    #@11
    iget-boolean v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1428
    .end local v0    # "c":I
    :cond_0
    return v3

    #@16
    .line 1426
    .restart local v0    # "c":I
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method final tooLow(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 1414
    iget-boolean v1, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1415
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@7
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    #@9
    invoke-virtual {v1, p1, v2}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    .line 1416
    .local v0, "c":I
    if-ltz v0, :cond_1

    #@f
    if-nez v0, :cond_0

    #@11
    iget-boolean v1, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1419
    .end local v0    # "c":I
    :cond_0
    return v3

    #@16
    .line 1417
    .restart local v0    # "c":I
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method
