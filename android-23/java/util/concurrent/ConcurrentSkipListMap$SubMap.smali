.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;
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
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a1fe183320cb959L


# instance fields
.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final hi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final hiInclusive:Z

.field private final isDescending:Z

.field private transient keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final lo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final loInclusive:Z

.field private final m:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V
    .locals 2
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p6, "isDescending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;TK;ZTK;ZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2480
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TK;"
    .local p4, "toKey":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 2484
    if-eqz p2, :cond_0

    #@5
    if-eqz p4, :cond_0

    #@7
    .line 2485
    invoke-virtual {p1, p2, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    if-lez v0, :cond_0

    #@d
    .line 2486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "inconsistent range"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 2487
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@18
    .line 2488
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@1a
    .line 2489
    iput-object p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@1c
    .line 2490
    iput-boolean p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    #@1e
    .line 2491
    iput-boolean p5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    #@20
    .line 2492
    iput-boolean p6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@22
    .line 2483
    return-void
.end method

.method private checkKeyBounds(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 2520
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    #@2
    .line 2521
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2522
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 2523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "key out of range"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 2519
    :cond_1
    return-void
.end method

.method private getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;
    .locals 5
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    #@1
    .line 2647
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 2648
    and-int/lit8 v4, p2, 0x2

    #@7
    if-nez v4, :cond_1

    #@9
    .line 2649
    or-int/lit8 p2, p2, 0x2

    #@b
    .line 2653
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_3

    #@11
    .line 2654
    and-int/lit8 v4, p2, 0x2

    #@13
    if-eqz v4, :cond_2

    #@15
    :goto_1
    return-object v3

    #@16
    .line 2651
    :cond_1
    and-int/lit8 p2, p2, -0x3

    #@18
    goto :goto_0

    #@19
    .line 2654
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    #@1c
    move-result-object v3

    #@1d
    goto :goto_1

    #@1e
    .line 2655
    :cond_3
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_5

    #@24
    .line 2656
    and-int/lit8 v4, p2, 0x2

    #@26
    if-eqz v4, :cond_4

    #@28
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    #@2b
    move-result-object v3

    #@2c
    :cond_4
    return-object v3

    #@2d
    .line 2658
    :cond_5
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@2f
    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@32
    move-result-object v1

    #@33
    .line 2659
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_6

    #@35
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@37
    invoke-direct {p0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_6

    #@3d
    .line 2661
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@3f
    .line 2662
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    .line 2663
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_5

    #@45
    .line 2664
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@47
    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4a
    return-object v3

    #@4b
    .line 2660
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_6
    return-object v3
.end method

.method private getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    #@1
    .line 2670
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 2671
    and-int/lit8 v4, p2, 0x2

    #@7
    if-nez v4, :cond_1

    #@9
    .line 2672
    or-int/lit8 p2, p2, 0x2

    #@b
    .line 2676
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_3

    #@11
    .line 2677
    and-int/lit8 v4, p2, 0x2

    #@13
    if-nez v4, :cond_2

    #@15
    .line 2678
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    move-result-object v2

    #@19
    .line 2679
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 2680
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@21
    return-object v4

    #@22
    .line 2674
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    and-int/lit8 p2, p2, -0x3

    #@24
    goto :goto_0

    #@25
    .line 2682
    :cond_2
    return-object v5

    #@26
    .line 2684
    :cond_3
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_5

    #@2c
    .line 2685
    and-int/lit8 v4, p2, 0x2

    #@2e
    if-eqz v4, :cond_4

    #@30
    .line 2686
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@33
    move-result-object v2

    #@34
    .line 2687
    .restart local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_4

    #@36
    .line 2688
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@38
    .line 2689
    .local v1, "last":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_4

    #@3e
    .line 2690
    return-object v1

    #@3f
    .line 2693
    .end local v1    # "last":Ljava/lang/Object;, "TK;"
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4
    return-object v5

    #@40
    .line 2696
    :cond_5
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@42
    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@45
    move-result-object v2

    #@46
    .line 2697
    .restart local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_6

    #@48
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@4a
    invoke-direct {p0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_6

    #@50
    .line 2699
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@52
    .line 2700
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@55
    move-result-object v3

    #@56
    .line 2701
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_5

    #@58
    .line 2702
    return-object v0

    #@59
    .line 2698
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_6
    return-object v5
.end method

.method private hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2561
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2562
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 2563
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 2564
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@11
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@13
    const/4 v2, 0x3

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 2566
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@1b
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@1d
    const/4 v2, 0x2

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method private highestEntry()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 2606
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 2607
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    #@7
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@9
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 2609
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@12
    move-result-object v0

    #@13
    .line 2610
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@15
    .line 2611
    return-object v0

    #@16
    .line 2608
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return-object v3
.end method

.method private highestKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2584
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v1

    #@4
    .line 2585
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_0

    #@6
    .line 2586
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@8
    .line 2587
    .local v0, "last":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2588
    return-object v0

    #@f
    .line 2590
    .end local v0    # "last":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    #@11
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@14
    throw v2
.end method

.method private inBounds(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    .line 2516
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

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

.method private isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2530
    if-nez p1, :cond_0

    #@4
    .line 2531
    return v4

    #@5
    .line 2532
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 2533
    return v5

    #@a
    .line 2534
    :cond_1
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@c
    .line 2535
    .local v1, "k":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_2

    #@e
    .line 2536
    return v5

    #@f
    .line 2537
    :cond_2
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@11
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@13
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@16
    move-result v0

    #@17
    .line 2538
    .local v0, "c":I
    if-gtz v0, :cond_4

    #@19
    if-nez v0, :cond_3

    #@1b
    iget-boolean v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    #@1d
    if-eqz v2, :cond_4

    #@1f
    .line 2540
    :cond_3
    return v5

    #@20
    .line 2539
    :cond_4
    return v4
.end method

.method private loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2548
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2549
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 2550
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 2551
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@11
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 2553
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@1b
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method private lowestEntry()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 2595
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 2596
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 2597
    return-object v3

    #@c
    .line 2598
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@f
    move-result-object v0

    #@10
    .line 2599
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@12
    .line 2600
    return-object v0
.end method

.method private lowestKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2573
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    .line 2574
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2575
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@c
    return-object v1

    #@d
    .line 2577
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@f
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@12
    throw v1
.end method

.method private newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 10
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2807
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2808
    move-object v9, p1

    #@5
    .line 2809
    .local v9, "tk":Ljava/lang/Object;, "TK;"
    move-object p1, p3

    #@6
    .line 2810
    move-object p3, v9

    #@7
    .line 2811
    move v8, p2

    #@8
    .line 2812
    .local v8, "ti":Z
    move p2, p4

    #@9
    .line 2813
    move p4, v8

    #@a
    .line 2815
    .end local v8    # "ti":Z
    .end local v9    # "tk":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2816
    if-nez p1, :cond_3

    #@10
    .line 2817
    iget-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@12
    .line 2818
    iget-boolean p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    #@14
    .line 2826
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 2827
    if-nez p3, :cond_5

    #@1a
    .line 2828
    iget-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@1c
    .line 2829
    iget-boolean p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    #@1e
    .line 2837
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@20
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@22
    .line 2838
    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@24
    move-object v2, p1

    #@25
    move v3, p2

    #@26
    move-object v4, p3

    #@27
    move v5, p4

    #@28
    .line 2837
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@2b
    return-object v0

    #@2c
    .line 2821
    :cond_3
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@2e
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@30
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@33
    move-result v7

    #@34
    .line 2822
    .local v7, "c":I
    if-ltz v7, :cond_4

    #@36
    if-nez v7, :cond_1

    #@38
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    #@3a
    if-nez v0, :cond_1

    #@3c
    if-eqz p2, :cond_1

    #@3e
    .line 2823
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    const-string/jumbo v1, "key out of range"

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 2832
    .end local v7    # "c":I
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@49
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@4b
    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@4e
    move-result v7

    #@4f
    .line 2833
    .restart local v7    # "c":I
    if-gtz v7, :cond_6

    #@51
    if-nez v7, :cond_2

    #@53
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    #@55
    if-nez v0, :cond_2

    #@57
    if-eqz p4, :cond_2

    #@59
    .line 2834
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5b
    const-string/jumbo v1, "key out of range"

    #@5e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v0
.end method

.method private removeHighest()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 2631
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 2632
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    #@7
    .line 2633
    return-object v4

    #@8
    .line 2634
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@a
    .line 2635
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_2

    #@10
    .line 2636
    return-object v4

    #@11
    .line 2637
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@13
    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    .line 2638
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    #@19
    .line 2639
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@1b
    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1e
    return-object v3
.end method

.method private removeLowest()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 2617
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 2618
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    #@7
    .line 2619
    return-object v4

    #@8
    .line 2620
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@a
    .line 2621
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_2

    #@10
    .line 2622
    return-object v4

    #@11
    .line 2623
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@13
    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    .line 2624
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    #@19
    .line 2625
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@1b
    invoke-direct {v3, v0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1e
    return-object v3
.end method

.method private tooHigh(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    #@1
    .line 2507
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2508
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@7
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@9
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    .line 2509
    .local v0, "c":I
    if-gtz v0, :cond_1

    #@f
    if-nez v0, :cond_0

    #@11
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2512
    .end local v0    # "c":I
    :cond_0
    return v3

    #@16
    .line 2510
    .restart local v0    # "c":I
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method private tooLow(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    #@1
    .line 2498
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2499
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@7
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@9
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    .line 2500
    .local v0, "c":I
    if-ltz v0, :cond_1

    #@f
    if-nez v0, :cond_0

    #@11
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2503
    .end local v0    # "c":I
    :cond_0
    return v3

    #@16
    .line 2501
    .restart local v0    # "c":I
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
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
    .line 2884
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2888
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    .line 2759
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    .line 2760
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@7
    move-result v1

    #@8
    .line 2759
    if-eqz v1, :cond_1

    #@a
    .line 2762
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 2763
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@12
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 2761
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@19
    goto :goto_0

    #@1a
    .line 2758
    :cond_1
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2792
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    .line 2793
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2794
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 2796
    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2709
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 2710
    :cond_0
    move-object v0, p1

    #@9
    .line 2711
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    :goto_0
    return v1

    #@16
    :cond_1
    const/4 v1, 0x0

    #@17
    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2746
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 2747
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 2748
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    move-result-object v0

    #@c
    .line 2749
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@f
    move-result v2

    #@10
    .line 2748
    if-eqz v2, :cond_2

    #@12
    .line 2751
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    .line 2752
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 2753
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 2750
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@22
    goto :goto_0

    #@23
    .line 2755
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v2, 0x0

    #@24
    return v2
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
    .line 2962
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    #@0
    .prologue
    .line 2876
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    #@0
    .prologue
    .line 2876
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2877
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@4
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    #@6
    iget-boolean v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    #@8
    .line 2878
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    #@a
    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    #@c
    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@e
    if-eqz v6, :cond_0

    #@10
    const/4 v6, 0x0

    #@11
    .line 2877
    :goto_0
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@14
    return-object v0

    #@15
    .line 2878
    :cond_0
    const/4 v6, 0x1

    #@16
    goto :goto_0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2974
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@5
    return-object v0
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
    .line 2957
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    #@2
    .line 2958
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@7
    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    #@c
    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
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
    .line 2924
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2916
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
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
    .line 2900
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2904
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 2715
    if-nez p1, :cond_0

    #@3
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 2716
    :cond_0
    move-object v0, p1

    #@a
    .line 2717
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    :goto_0
    return-object v1

    #@11
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 2850
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2868
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2868
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 2850
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2869
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2852
    if-nez p1, :cond_0

    #@3
    .line 2853
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 2854
    :cond_0
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, v1, v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
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
    .line 2908
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2912
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2742
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2966
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@5
    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
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
    .line 2942
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    .line 2943
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@7
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@c
    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 2941
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySet()Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
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
    .line 2928
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2920
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
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
    .line 2892
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2896
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
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
    .line 2947
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    .line 2948
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@7
    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@c
    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
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
    .line 2932
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
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
    .line 2936
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2721
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    #@3
    .line 2722
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2770
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    #@3
    .line 2771
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    .line 2726
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    move-object v0, p1

    #@1
    .line 2727
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_0
    return-object v1

    #@9
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2775
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    move-object v0, p1

    #@1
    .line 2776
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@9
    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2785
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    #@3
    .line 2786
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2780
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    #@3
    .line 2781
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public size()I
    .locals 6

    #@0
    .prologue
    .line 2731
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    #@2
    .line 2732
    .local v0, "count":J
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    move-result-object v2

    #@6
    .line 2733
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@9
    move-result v3

    #@a
    .line 2732
    if-eqz v3, :cond_1

    #@c
    .line 2735
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 2736
    const-wide/16 v4, 0x1

    #@14
    add-long/2addr v0, v4

    #@15
    .line 2734
    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@17
    goto :goto_0

    #@18
    .line 2738
    :cond_1
    const-wide/32 v4, 0x7fffffff

    #@1b
    cmp-long v3, v0, v4

    #@1d
    if-ltz v3, :cond_2

    #@1f
    const v3, 0x7fffffff

    #@22
    :goto_1
    return v3

    #@23
    :cond_2
    long-to-int v3, v0

    #@24
    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    #@0
    .prologue
    .line 2841
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2864
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2864
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "fromInclusive"    # Z
    .param p3, "toKey"    # Ljava/lang/Object;
    .param p4, "toInclusive"    # Z

    #@0
    .prologue
    .line 2841
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2865
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2845
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 2846
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2847
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 2857
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2872
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2872
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 2857
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2873
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2859
    if-nez p1, :cond_0

    #@3
    .line 2860
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 2861
    :cond_0
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, p1, p2, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2970
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    #@5
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2952
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    #@2
    .line 2953
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@7
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    #@c
    goto :goto_0
.end method
