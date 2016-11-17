.class public Ljava/util/TreeMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$DescendingKeyIterator;,
        Ljava/util/TreeMap$DescendingKeySpliterator;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$EntryIterator;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$EntrySpliterator;,
        Ljava/util/TreeMap$KeyIterator;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$KeySpliterator;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$PrivateEntryIterator;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$TreeMapEntry;,
        Ljava/util/TreeMap$TreeMapSpliterator;,
        Ljava/util/TreeMap$ValueIterator;,
        Ljava/util/TreeMap$ValueSpliterator;,
        Ljava/util/TreeMap$Values;
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
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BLACK:Z = true

.field private static final RED:Z = false

.field private static final UNBOUNDED:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient navigableKeySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient root:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient size:I


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/TreeMap;)Ljava/util/Comparator;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/util/TreeMap;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    #@2
    return v0
.end method

.method static synthetic -get3(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Ljava/util/TreeMap;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/TreeMap;->size:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 0
    .param p1, "p"    # Ljava/util/TreeMap$TreeMapEntry;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1359
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    #@7
    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 148
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@5
    .line 124
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@7
    .line 129
    iput v1, p0, Ljava/util/TreeMap;->size:I

    #@9
    .line 134
    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    #@b
    .line 812
    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@d
    .line 813
    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    #@f
    .line 814
    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    #@11
    .line 149
    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@13
    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 166
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@5
    .line 124
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@7
    .line 129
    iput v1, p0, Ljava/util/TreeMap;->size:I

    #@9
    .line 134
    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    #@b
    .line 812
    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@d
    .line 813
    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    #@f
    .line 814
    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    #@11
    .line 167
    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@13
    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 184
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@5
    .line 124
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@7
    .line 129
    iput v1, p0, Ljava/util/TreeMap;->size:I

    #@9
    .line 134
    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    #@b
    .line 812
    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@d
    .line 813
    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    #@f
    .line 814
    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    #@11
    .line 185
    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@13
    .line 186
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    #@16
    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 198
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@5
    .line 124
    iput-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@7
    .line 129
    iput v3, p0, Ljava/util/TreeMap;->size:I

    #@9
    .line 134
    iput v3, p0, Ljava/util/TreeMap;->modCount:I

    #@b
    .line 812
    iput-object v2, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@d
    .line 813
    iput-object v2, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    #@f
    .line 814
    iput-object v2, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    #@11
    .line 199
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@17
    .line 201
    :try_start_0
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    #@1a
    move-result v2

    #@1b
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@1e
    move-result-object v3

    #@1f
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v3

    #@23
    const/4 v4, 0x0

    #@24
    const/4 v5, 0x0

    #@25
    invoke-direct {p0, v2, v3, v4, v5}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@28
    .line 198
    :goto_0
    return-void

    #@29
    .line 202
    :catch_0
    move-exception v0

    #@2a
    .local v0, "cannotHappen":Ljava/io/IOException;
    goto :goto_0

    #@2b
    .line 203
    .end local v0    # "cannotHappen":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@2c
    .local v1, "cannotHappen":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method private final buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 17
    .param p1, "level"    # I
    .param p2, "lo"    # I
    .param p3, "hi"    # I
    .param p4, "redLevel"    # I
    .param p6, "str"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/io/ObjectInputStream;",
            "TV;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2591
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p7, "defaultVal":Ljava/lang/Object;, "TV;"
    move/from16 v0, p3

    #@2
    move/from16 v1, p2

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2593
    :cond_0
    add-int v2, p2, p3

    #@a
    ushr-int/lit8 v13, v2, 0x1

    #@c
    .line 2595
    .local v13, "mid":I
    const/4 v12, 0x0

    #@d
    .line 2596
    .local v12, "left":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move/from16 v0, p2

    #@f
    if-ge v0, v13, :cond_1

    #@11
    .line 2597
    add-int/lit8 v3, p1, 0x1

    #@13
    add-int/lit8 v5, v13, -0x1

    #@15
    move-object/from16 v2, p0

    #@17
    move/from16 v4, p2

    #@19
    move/from16 v6, p4

    #@1b
    move-object/from16 v7, p5

    #@1d
    move-object/from16 v8, p6

    #@1f
    move-object/from16 v9, p7

    #@21
    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@24
    move-result-object v12

    #@25
    .line 2603
    .end local v12    # "left":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1
    if-eqz p5, :cond_6

    #@27
    .line 2604
    if-nez p7, :cond_5

    #@29
    .line 2605
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v10

    #@2d
    check-cast v10, Ljava/util/Map$Entry;

    #@2f
    .line 2606
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v11

    #@33
    .line 2607
    .local v11, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36
    move-result-object v16

    #@37
    .line 2617
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local v16, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    new-instance v14, Ljava/util/TreeMap$TreeMapEntry;

    #@39
    const/4 v2, 0x0

    #@3a
    move-object/from16 v0, v16

    #@3c
    invoke-direct {v14, v11, v0, v2}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    #@3f
    .line 2620
    .local v14, "middle":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move/from16 v0, p1

    #@41
    move/from16 v1, p4

    #@43
    if-ne v0, v1, :cond_2

    #@45
    .line 2621
    const/4 v2, 0x0

    #@46
    iput-boolean v2, v14, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@48
    .line 2623
    :cond_2
    if-eqz v12, :cond_3

    #@4a
    .line 2624
    iput-object v12, v14, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@4c
    .line 2625
    iput-object v14, v12, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@4e
    .line 2628
    :cond_3
    move/from16 v0, p3

    #@50
    if-ge v13, v0, :cond_4

    #@52
    .line 2629
    add-int/lit8 v3, p1, 0x1

    #@54
    add-int/lit8 v4, v13, 0x1

    #@56
    move-object/from16 v2, p0

    #@58
    move/from16 v5, p3

    #@5a
    move/from16 v6, p4

    #@5c
    move-object/from16 v7, p5

    #@5e
    move-object/from16 v8, p6

    #@60
    move-object/from16 v9, p7

    #@62
    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@65
    move-result-object v15

    #@66
    .line 2631
    .local v15, "right":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object v15, v14, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@68
    .line 2632
    iput-object v14, v15, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@6a
    .line 2635
    .end local v15    # "right":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_4
    return-object v14

    #@6b
    .line 2609
    .end local v11    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "middle":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v16    # "value":Ljava/lang/Object;, "TV;"
    :cond_5
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v11

    #@6f
    .line 2610
    .restart local v11    # "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v16, p7

    #@71
    .restart local v16    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    #@72
    .line 2613
    .end local v11    # "key":Ljava/lang/Object;, "TK;"
    .end local v16    # "value":Ljava/lang/Object;, "TV;"
    :cond_6
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@75
    move-result-object v11

    #@76
    .line 2614
    .restart local v11    # "key":Ljava/lang/Object;, "TK;"
    if-eqz p7, :cond_7

    #@78
    move-object/from16 v16, p7

    #@7a
    .restart local v16    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    #@7b
    .end local v16    # "value":Ljava/lang/Object;, "TV;"
    :cond_7
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@7e
    move-result-object v16

    #@7f
    .restart local v16    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method private buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    .locals 8
    .param p1, "size"    # I
    .param p3, "str"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/io/ObjectInputStream;",
            "TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p4, "defaultVal":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    #@1
    .line 2553
    iput p1, p0, Ljava/util/TreeMap;->size:I

    #@3
    .line 2554
    add-int/lit8 v3, p1, -0x1

    #@5
    invoke-static {p1}, Ljava/util/TreeMap;->computeRedLevel(I)I

    #@8
    move-result v4

    #@9
    move-object v0, p0

    #@a
    move v2, v1

    #@b
    move-object v5, p2

    #@c
    move-object v6, p3

    #@d
    move-object v7, p4

    #@e
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@14
    .line 2552
    return-void
.end method

.method private static colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2246
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    iget-boolean v0, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@6
    goto :goto_0
.end method

.method private static computeRedLevel(I)I
    .locals 3
    .param p0, "sz"    # I

    #@0
    .prologue
    .line 2648
    const/4 v0, 0x0

    #@1
    .line 2649
    .local v0, "level":I
    add-int/lit8 v1, p0, -0x1

    #@3
    .local v1, "m":I
    :goto_0
    if-ltz v1, :cond_0

    #@5
    .line 2650
    add-int/lit8 v0, v0, 0x1

    #@7
    .line 2649
    div-int/lit8 v2, v1, 0x2

    #@9
    add-int/lit8 v1, v2, -0x1

    #@b
    goto :goto_0

    #@c
    .line 2651
    :cond_0
    return v0
.end method

.method private deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 2348
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Ljava/util/TreeMap;->modCount:I

    #@7
    .line 2349
    iget v2, p0, Ljava/util/TreeMap;->size:I

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    iput v2, p0, Ljava/util/TreeMap;->size:I

    #@d
    .line 2353
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@f
    if-eqz v2, :cond_0

    #@11
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 2354
    invoke-static {p1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@18
    move-result-object v1

    #@19
    .line 2355
    .local v1, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@1b
    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@1d
    .line 2356
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@1f
    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@21
    .line 2357
    move-object p1, v1

    #@22
    .line 2361
    .end local v1    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_0
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@24
    if-eqz v2, :cond_2

    #@26
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@28
    .line 2363
    .local v0, "replacement":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_5

    #@2a
    .line 2365
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@2c
    iput-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@2e
    .line 2366
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@30
    if-nez v2, :cond_3

    #@32
    .line 2367
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@34
    .line 2374
    :goto_1
    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@36
    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@38
    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@3a
    .line 2377
    iget-boolean v2, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@3c
    if-eqz v2, :cond_1

    #@3e
    .line 2378
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    #@41
    .line 2347
    :cond_1
    :goto_2
    return-void

    #@42
    .line 2361
    .end local v0    # "replacement":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@44
    goto :goto_0

    #@45
    .line 2368
    .restart local v0    # "replacement":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_3
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@47
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@49
    if-ne p1, v2, :cond_4

    #@4b
    .line 2369
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@4d
    iput-object v0, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@4f
    goto :goto_1

    #@50
    .line 2371
    :cond_4
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@52
    iput-object v0, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@54
    goto :goto_1

    #@55
    .line 2379
    :cond_5
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@57
    if-nez v2, :cond_6

    #@59
    .line 2380
    iput-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@5b
    goto :goto_2

    #@5c
    .line 2382
    :cond_6
    iget-boolean v2, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@5e
    if-eqz v2, :cond_7

    #@60
    .line 2383
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    #@63
    .line 2385
    :cond_7
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@65
    if-eqz v2, :cond_1

    #@67
    .line 2386
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@69
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@6b
    if-ne p1, v2, :cond_9

    #@6d
    .line 2387
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@6f
    iput-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@71
    .line 2390
    :cond_8
    :goto_3
    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@73
    goto :goto_2

    #@74
    .line 2388
    :cond_9
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@76
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@78
    if-ne p1, v2, :cond_8

    #@7a
    .line 2389
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@7c
    iput-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@7e
    goto :goto_3
.end method

.method static exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1331
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    .line 1332
    :cond_0
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@6
    invoke-direct {v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    #@9
    goto :goto_0
.end method

.method private fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "x":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 2397
    :goto_0
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@4
    if-eq p1, v1, :cond_7

    #@6
    invoke-static {p1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_7

    #@c
    .line 2398
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@13
    move-result-object v1

    #@14
    if-ne p1, v1, :cond_3

    #@16
    .line 2399
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1d
    move-result-object v0

    #@1e
    .line 2401
    .local v0, "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    .line 2402
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@27
    .line 2403
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@2e
    .line 2404
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@31
    move-result-object v1

    #@32
    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    #@35
    .line 2405
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@38
    move-result-object v1

    #@39
    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@3c
    move-result-object v0

    #@3d
    .line 2408
    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@40
    move-result-object v1

    #@41
    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 2409
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@4a
    move-result-object v1

    #@4b
    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 2410
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@54
    .line 2411
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@57
    move-result-object p1

    #@58
    goto :goto_0

    #@59
    .line 2413
    :cond_1
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@5c
    move-result-object v1

    #@5d
    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_2

    #@63
    .line 2414
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@66
    move-result-object v1

    #@67
    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@6a
    .line 2415
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@6d
    .line 2416
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    #@70
    .line 2417
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@73
    move-result-object v1

    #@74
    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@77
    move-result-object v0

    #@78
    .line 2419
    :cond_2
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@7b
    move-result-object v1

    #@7c
    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@7f
    move-result v1

    #@80
    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@83
    .line 2420
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@86
    move-result-object v1

    #@87
    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@8a
    .line 2421
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@8d
    move-result-object v1

    #@8e
    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@91
    .line 2422
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@94
    move-result-object v1

    #@95
    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    #@98
    .line 2423
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@9a
    goto/16 :goto_0

    #@9c
    .line 2426
    .end local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_3
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@9f
    move-result-object v1

    #@a0
    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@a3
    move-result-object v0

    #@a4
    .line 2428
    .restart local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@a7
    move-result v1

    #@a8
    if-nez v1, :cond_4

    #@aa
    .line 2429
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@ad
    .line 2430
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@b0
    move-result-object v1

    #@b1
    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@b4
    .line 2431
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@b7
    move-result-object v1

    #@b8
    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    #@bb
    .line 2432
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@be
    move-result-object v1

    #@bf
    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@c2
    move-result-object v0

    #@c3
    .line 2435
    :cond_4
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@c6
    move-result-object v1

    #@c7
    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@ca
    move-result v1

    #@cb
    if-eqz v1, :cond_5

    #@cd
    .line 2436
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@d0
    move-result-object v1

    #@d1
    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@d4
    move-result v1

    #@d5
    if-eqz v1, :cond_5

    #@d7
    .line 2437
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@da
    .line 2438
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@dd
    move-result-object p1

    #@de
    goto/16 :goto_0

    #@e0
    .line 2440
    :cond_5
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@e3
    move-result-object v1

    #@e4
    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@e7
    move-result v1

    #@e8
    if-eqz v1, :cond_6

    #@ea
    .line 2441
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@ed
    move-result-object v1

    #@ee
    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@f1
    .line 2442
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@f4
    .line 2443
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    #@f7
    .line 2444
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@fa
    move-result-object v1

    #@fb
    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@fe
    move-result-object v0

    #@ff
    .line 2446
    :cond_6
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@102
    move-result-object v1

    #@103
    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@106
    move-result v1

    #@107
    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@10a
    .line 2447
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@10d
    move-result-object v1

    #@10e
    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@111
    .line 2448
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@114
    move-result-object v1

    #@115
    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@118
    .line 2449
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@11b
    move-result-object v1

    #@11c
    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    #@11f
    .line 2450
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@121
    goto/16 :goto_0

    #@123
    .line 2455
    .end local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_7
    invoke-static {p1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@126
    .line 2396
    return-void
.end method

.method private fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "x":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 2304
    iput-boolean v4, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@4
    .line 2306
    :goto_0
    if-eqz p1, :cond_5

    #@6
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@8
    if-eq p1, v1, :cond_5

    #@a
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@c
    iget-boolean v1, v1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@e
    if-nez v1, :cond_5

    #@10
    .line 2307
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@13
    move-result-object v1

    #@14
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@17
    move-result-object v2

    #@18
    invoke-static {v2}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v2}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1f
    move-result-object v2

    #@20
    if-ne v1, v2, :cond_2

    #@22
    .line 2308
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@2d
    move-result-object v0

    #@2e
    .line 2309
    .local v0, "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_0

    #@34
    .line 2310
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@37
    move-result-object v1

    #@38
    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@3b
    .line 2311
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@3e
    .line 2312
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@41
    move-result-object v1

    #@42
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@45
    move-result-object v1

    #@46
    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@49
    .line 2313
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@4c
    move-result-object v1

    #@4d
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@50
    move-result-object p1

    #@51
    goto :goto_0

    #@52
    .line 2315
    :cond_0
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@55
    move-result-object v1

    #@56
    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@59
    move-result-object v1

    #@5a
    if-ne p1, v1, :cond_1

    #@5c
    .line 2316
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@5f
    move-result-object p1

    #@60
    .line 2317
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    #@63
    .line 2319
    :cond_1
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@66
    move-result-object v1

    #@67
    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@6a
    .line 2320
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@6d
    move-result-object v1

    #@6e
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@71
    move-result-object v1

    #@72
    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@75
    .line 2321
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@78
    move-result-object v1

    #@79
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@7c
    move-result-object v1

    #@7d
    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    #@80
    goto :goto_0

    #@81
    .line 2324
    .end local v0    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@84
    move-result-object v1

    #@85
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@88
    move-result-object v1

    #@89
    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@8c
    move-result-object v0

    #@8d
    .line 2325
    .restart local v0    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    #@90
    move-result v1

    #@91
    if-nez v1, :cond_3

    #@93
    .line 2326
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@96
    move-result-object v1

    #@97
    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@9a
    .line 2327
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@9d
    .line 2328
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@a0
    move-result-object v1

    #@a1
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@a4
    move-result-object v1

    #@a5
    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@a8
    .line 2329
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@ab
    move-result-object v1

    #@ac
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@af
    move-result-object p1

    #@b0
    goto/16 :goto_0

    #@b2
    .line 2331
    :cond_3
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@b5
    move-result-object v1

    #@b6
    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@b9
    move-result-object v1

    #@ba
    if-ne p1, v1, :cond_4

    #@bc
    .line 2332
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@bf
    move-result-object p1

    #@c0
    .line 2333
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    #@c3
    .line 2335
    :cond_4
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@c6
    move-result-object v1

    #@c7
    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@ca
    .line 2336
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@cd
    move-result-object v1

    #@ce
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@d1
    move-result-object v1

    #@d2
    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    #@d5
    .line 2337
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@d8
    move-result-object v1

    #@d9
    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@dc
    move-result-object v1

    #@dd
    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 2341
    .end local v0    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_5
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@e4
    iput-boolean v3, v1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@e6
    .line 2303
    return-void
.end method

.method static key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;*>;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1347
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;*>;"
    if-nez p0, :cond_0

    #@2
    .line 1348
    new-instance v0, Ljava/util/NoSuchElementException;

    #@4
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1349
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@a
    return-object v0
.end method

.method static keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1339
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@6
    goto :goto_0
.end method

.method static keySpliteratorFor(Ljava/util/NavigableMap;)Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;*>;)",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2664
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;*>;"
    instance-of v4, p0, Ljava/util/TreeMap;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v2, p0

    #@5
    .line 2666
    check-cast v2, Ljava/util/TreeMap;

    #@7
    .line 2667
    .local v2, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySpliterator()Ljava/util/Spliterator;

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 2669
    .end local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    :cond_0
    instance-of v4, p0, Ljava/util/TreeMap$DescendingSubMap;

    #@e
    if-eqz v4, :cond_1

    #@10
    move-object v0, p0

    #@11
    .line 2671
    check-cast v0, Ljava/util/TreeMap$DescendingSubMap;

    #@13
    .line 2672
    .local v0, "dm":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;*>;"
    iget-object v3, v0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    #@15
    .line 2673
    .local v3, "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;*>;"
    iget-object v4, v3, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    #@17
    if-ne v0, v4, :cond_1

    #@19
    .line 2674
    move-object v2, v3

    #@1a
    .line 2676
    .restart local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Ljava/util/TreeMap;->descendingKeySpliterator()Ljava/util/Spliterator;

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .end local v0    # "dm":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;*>;"
    .end local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    .end local v3    # "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;*>;"
    :cond_1
    move-object v1, p0

    #@20
    .line 2680
    check-cast v1, Ljava/util/TreeMap$NavigableSubMap;

    #@22
    .line 2681
    .local v1, "sm":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;*>;"
    invoke-virtual {v1}, Ljava/util/TreeMap$NavigableSubMap;->keySpliterator()Ljava/util/Spliterator;

    #@25
    move-result-object v4

    #@26
    return-object v4
.end method

.method private static leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2259
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    goto :goto_0
.end method

.method private static parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2250
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    goto :goto_0
.end method

.method static predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2217
    if-nez p0, :cond_0

    #@3
    .line 2218
    return-object v2

    #@4
    .line 2219
    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 2220
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@a
    .line 2221
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 2222
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@10
    goto :goto_0

    #@11
    .line 2223
    :cond_1
    return-object v1

    #@12
    .line 2225
    .end local v1    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@14
    .line 2226
    .restart local v1    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, p0

    #@15
    .line 2227
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_3

    #@17
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@19
    if-ne v0, v2, :cond_3

    #@1b
    .line 2228
    move-object v0, v1

    #@1c
    .line 2229
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@1e
    goto :goto_1

    #@1f
    .line 2231
    :cond_3
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 2495
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 2498
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@7
    move-result v0

    #@8
    .line 2500
    .local v0, "size":I
    invoke-direct {p0, v0, v1, p1, v1}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    #@b
    .line 2493
    return-void
.end method

.method private static rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2263
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    goto :goto_0
.end method

.method private rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2268
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p1, :cond_1

    #@2
    .line 2269
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@4
    .line 2270
    .local v0, "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@8
    .line 2271
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2272
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@e
    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@10
    .line 2273
    :cond_0
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@12
    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@14
    .line 2274
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@16
    if-nez v1, :cond_2

    #@18
    .line 2275
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@1a
    .line 2280
    :goto_0
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@1c
    .line 2281
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@1e
    .line 2267
    .end local v0    # "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1
    return-void

    #@1f
    .line 2276
    .restart local v0    # "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@21
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@23
    if-ne v1, p1, :cond_3

    #@25
    .line 2277
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@27
    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@29
    goto :goto_0

    #@2a
    .line 2279
    :cond_3
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@2c
    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@2e
    goto :goto_0
.end method

.method private rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2287
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p1, :cond_1

    #@2
    .line 2288
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@4
    .line 2289
    .local v0, "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@8
    .line 2290
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@e
    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@10
    .line 2291
    :cond_0
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@12
    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@14
    .line 2292
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@16
    if-nez v1, :cond_2

    #@18
    .line 2293
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@1a
    .line 2297
    :goto_0
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@1c
    .line 2298
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@1e
    .line 2286
    .end local v0    # "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1
    return-void

    #@1f
    .line 2294
    .restart local v0    # "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@21
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@23
    if-ne v1, p1, :cond_3

    #@25
    .line 2295
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@27
    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@29
    goto :goto_0

    #@2a
    .line 2296
    :cond_3
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@2c
    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@2e
    goto :goto_0
.end method

.method private static setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V
    .locals 0
    .param p1, "c"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2254
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p0, :cond_0

    #@2
    .line 2255
    iput-boolean p1, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    #@4
    .line 2253
    :cond_0
    return-void
.end method

.method static successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2195
    if-nez p0, :cond_0

    #@3
    .line 2196
    return-object v2

    #@4
    .line 2197
    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 2198
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@a
    .line 2199
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 2200
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@10
    goto :goto_0

    #@11
    .line 2201
    :cond_1
    return-object v1

    #@12
    .line 2203
    .end local v1    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@14
    .line 2204
    .restart local v1    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, p0

    #@15
    .line 2205
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_3

    #@17
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@19
    if-ne v0, v2, :cond_3

    #@1b
    .line 2206
    move-object v0, v1

    #@1c
    .line 2207
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@1e
    goto :goto_1

    #@1f
    .line 2209
    :cond_3
    return-object v1
.end method

.method static final valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1324
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2475
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 2478
    iget v2, p0, Ljava/util/TreeMap;->size:I

    #@5
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@8
    .line 2481
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 2482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/Map$Entry;

    #@1c
    .line 2483
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@23
    .line 2484
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 2473
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method addAllForTreeSet(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TK;>;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2512
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TK;>;"
    .local p2, "defaultVal":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    #@3
    move-result v2

    #@4
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    const/4 v4, 0x0

    #@9
    invoke-direct {p0, v2, v3, v4, p2}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@c
    .line 2510
    :goto_0
    return-void

    #@d
    .line 2513
    :catch_0
    move-exception v0

    #@e
    .local v0, "cannotHappen":Ljava/io/IOException;
    goto :goto_0

    #@f
    .line 2514
    .end local v0    # "cannotHappen":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@10
    .local v1, "cannotHappen":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

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
    .line 769
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
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
    .line 780
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 642
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    #@6
    .line 643
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/util/TreeMap;->size:I

    #@9
    .line 644
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@c
    .line 641
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 656
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/TreeMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 662
    .local v2, "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    iput-object v4, v2, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@a
    .line 663
    iput v5, v2, Ljava/util/TreeMap;->size:I

    #@c
    .line 664
    iput v5, v2, Ljava/util/TreeMap;->modCount:I

    #@e
    .line 665
    iput-object v4, v2, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@10
    .line 666
    iput-object v4, v2, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    #@12
    .line 667
    iput-object v4, v2, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    #@14
    .line 671
    :try_start_1
    iget v4, p0, Ljava/util/TreeMap;->size:I

    #@16
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v5

    #@1e
    const/4 v6, 0x0

    #@1f
    const/4 v7, 0x0

    #@20
    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    #@23
    .line 676
    :goto_0
    return-object v2

    #@24
    .line 657
    .end local v2    # "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    :catch_0
    move-exception v3

    #@25
    .line 658
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    #@27
    invoke-direct {v4, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw v4

    #@2b
    .line 672
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v2    # "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    :catch_1
    move-exception v0

    #@2c
    .local v0, "cannotHappen":Ljava/io/IOException;
    goto :goto_0

    #@2d
    .line 673
    .end local v0    # "cannotHappen":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@2e
    .local v1, "cannotHappen":Ljava/lang/ClassNotFoundException;
    goto :goto_0
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
    .line 284
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1315
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@2
    if-nez v0, :cond_0

    #@4
    check-cast p1, Ljava/lang/Comparable;

    #@6
    .end local p1    # "k1":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .line 1316
    .restart local p1    # "k1":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@d
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 233
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 250
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@6
    .line 251
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@8
    invoke-static {p1, v1}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 252
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 250
    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@13
    move-result-object v0

    #@14
    goto :goto_0

    #@15
    .line 253
    :cond_1
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method descendingKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1135
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$DescendingKeyIterator;

    #@2
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$DescendingKeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@9
    return-object v0
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
    .line 857
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method final descendingKeySpliterator()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2689
    new-instance v0, Ljava/util/TreeMap$DescendingKeySpliterator;

    #@4
    const/4 v5, -0x2

    #@5
    move-object v1, p0

    #@6
    move-object v3, v2

    #@7
    move v6, v4

    #@8
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$DescendingKeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    #@b
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 917
    iget-object v8, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    #@4
    .line 918
    .local v8, "km":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v8, :cond_0

    #@6
    .end local v8    # "km":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :goto_0
    return-object v8

    #@7
    .line 919
    .restart local v8    # "km":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    #@9
    move-object v1, p0

    #@a
    move v4, v2

    #@b
    move v5, v2

    #@c
    move-object v6, v3

    #@d
    move v7, v2

    #@e
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@11
    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    #@13
    move-object v8, v0

    #@14
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
    .line 909
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@2
    .line 910
    .local v0, "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$EntrySet;

    #@7
    .end local v0    # "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

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
    .line 685
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    return-object v0
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
    .line 291
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
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
    .line 747
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
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
    .line 758
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1023
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1024
    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    #@5
    .line 1025
    .local v1, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@8
    move-result-object v0

    #@9
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@b
    .line 1026
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@d
    iget-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@f
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@12
    .line 1028
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    #@14
    if-eq v1, v2, :cond_0

    #@16
    .line 1029
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@18
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1b
    throw v2

    #@1c
    .line 1025
    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1f
    move-result-object v0

    #@20
    goto :goto_0

    #@21
    .line 1022
    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 279
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@4
    move-result-object v0

    #@5
    .line 280
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@a
    goto :goto_0
.end method

.method final getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    #@1
    .line 396
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    .line 397
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_5

    #@5
    .line 398
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@7
    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@a
    move-result v1

    #@b
    .line 399
    .local v1, "cmp":I
    if-gez v1, :cond_1

    #@d
    .line 400
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 401
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@13
    goto :goto_0

    #@14
    .line 403
    :cond_0
    return-object v2

    #@15
    .line 404
    :cond_1
    if-lez v1, :cond_4

    #@17
    .line 405
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 406
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@1d
    goto :goto_0

    #@1e
    .line 408
    :cond_2
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@20
    .line 409
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, v2

    #@21
    .line 410
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_3

    #@23
    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@25
    if-ne v0, v4, :cond_3

    #@27
    .line 411
    move-object v0, v3

    #@28
    .line 412
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@2a
    goto :goto_1

    #@2b
    .line 414
    :cond_3
    return-object v3

    #@2c
    .line 417
    .end local v0    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_4
    return-object v2

    #@2d
    .line 419
    .end local v1    # "cmp":I
    :cond_5
    return-object v5
.end method

.method final getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 345
    iget-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 346
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@8
    move-result-object v3

    #@9
    return-object v3

    #@a
    .line 347
    :cond_0
    if-nez p1, :cond_1

    #@c
    .line 348
    new-instance v3, Ljava/lang/NullPointerException;

    #@e
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@11
    throw v3

    #@12
    :cond_1
    move-object v1, p1

    #@13
    .line 350
    check-cast v1, Ljava/lang/Comparable;

    #@15
    .line 351
    .local v1, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@17
    .line 352
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_4

    #@19
    .line 353
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@1b
    invoke-interface {v1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@1e
    move-result v0

    #@1f
    .line 354
    .local v0, "cmp":I
    if-gez v0, :cond_2

    #@21
    .line 355
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@23
    goto :goto_0

    #@24
    .line 356
    :cond_2
    if-lez v0, :cond_3

    #@26
    .line 357
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@28
    goto :goto_0

    #@29
    .line 359
    :cond_3
    return-object v2

    #@2a
    .line 361
    .end local v0    # "cmp":I
    :cond_4
    return-object v4
.end method

.method final getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 372
    move-object v2, p1

    #@2
    .line 373
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@4
    .line 374
    .local v1, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v1, :cond_2

    #@6
    .line 375
    iget-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@8
    .line 376
    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_2

    #@a
    .line 377
    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@c
    invoke-interface {v1, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    .line 378
    .local v0, "cmp":I
    if-gez v0, :cond_0

    #@12
    .line 379
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@14
    goto :goto_0

    #@15
    .line 380
    :cond_0
    if-lez v0, :cond_1

    #@17
    .line 381
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@19
    goto :goto_0

    #@1a
    .line 383
    :cond_1
    return-object v3

    #@1b
    .line 386
    .end local v0    # "cmp":I
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    return-object v5
.end method

.method final getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;
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
    .line 2172
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@2
    .line 2173
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .line 2174
    :goto_0
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2175
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@a
    goto :goto_0

    #@b
    .line 2176
    :cond_0
    return-object v0
.end method

.method final getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    #@1
    .line 428
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    .line 429
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_5

    #@5
    .line 430
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@7
    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@a
    move-result v1

    #@b
    .line 431
    .local v1, "cmp":I
    if-lez v1, :cond_1

    #@d
    .line 432
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 433
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@13
    goto :goto_0

    #@14
    .line 435
    :cond_0
    return-object v2

    #@15
    .line 436
    :cond_1
    if-gez v1, :cond_4

    #@17
    .line 437
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 438
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@1d
    goto :goto_0

    #@1e
    .line 440
    :cond_2
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@20
    .line 441
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, v2

    #@21
    .line 442
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_3

    #@23
    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@25
    if-ne v0, v4, :cond_3

    #@27
    .line 443
    move-object v0, v3

    #@28
    .line 444
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@2a
    goto :goto_1

    #@2b
    .line 446
    :cond_3
    return-object v3

    #@2c
    .line 449
    .end local v0    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_4
    return-object v2

    #@2d
    .line 452
    .end local v1    # "cmp":I
    :cond_5
    return-object v5
.end method

.method final getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    #@1
    .line 462
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    .line 463
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_4

    #@5
    .line 464
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@7
    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@a
    move-result v1

    #@b
    .line 465
    .local v1, "cmp":I
    if-gez v1, :cond_1

    #@d
    .line 466
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 467
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@13
    goto :goto_0

    #@14
    .line 469
    :cond_0
    return-object v2

    #@15
    .line 471
    :cond_1
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 472
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@1b
    goto :goto_0

    #@1c
    .line 474
    :cond_2
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@1e
    .line 475
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, v2

    #@1f
    .line 476
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_3

    #@21
    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@23
    if-ne v0, v4, :cond_3

    #@25
    .line 477
    move-object v0, v3

    #@26
    .line 478
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@28
    goto :goto_1

    #@29
    .line 480
    :cond_3
    return-object v3

    #@2a
    .line 484
    .end local v0    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v1    # "cmp":I
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_4
    return-object v5
.end method

.method final getLastEntry()Ljava/util/TreeMap$TreeMapEntry;
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
    .line 2184
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@2
    .line 2185
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .line 2186
    :goto_0
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2187
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@a
    goto :goto_0

    #@b
    .line 2188
    :cond_0
    return-object v0
.end method

.method final getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    #@1
    .line 493
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    .line 494
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_4

    #@5
    .line 495
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@7
    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@a
    move-result v1

    #@b
    .line 496
    .local v1, "cmp":I
    if-lez v1, :cond_1

    #@d
    .line 497
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 498
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@13
    goto :goto_0

    #@14
    .line 500
    :cond_0
    return-object v2

    #@15
    .line 502
    :cond_1
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 503
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@1b
    goto :goto_0

    #@1c
    .line 505
    :cond_2
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@1e
    .line 506
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, v2

    #@1f
    .line 507
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_3

    #@21
    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@23
    if-ne v0, v4, :cond_3

    #@25
    .line 508
    move-object v0, v3

    #@26
    .line 509
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@28
    goto :goto_1

    #@29
    .line 511
    :cond_3
    return-object v3

    #@2a
    .line 515
    .end local v0    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v1    # "cmp":I
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_4
    return-object v5
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x1

    #@1
    .line 948
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    #@3
    .line 949
    const/4 v3, 0x0

    #@4
    .line 950
    const/4 v5, 0x0

    #@5
    move-object v1, p0

    #@6
    move v4, v2

    #@7
    move-object v6, p1

    #@8
    move v7, p2

    #@9
    .line 948
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@c
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
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
    .line 986
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@4
    move-result-object v0

    #@5
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
    .line 791
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
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
    .line 802
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1131
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$KeyIterator;

    #@2
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$KeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@9
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
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
    .line 842
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final keySpliterator()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2685
    new-instance v0, Ljava/util/TreeMap$KeySpliterator;

    #@4
    const/4 v5, -0x1

    #@5
    move-object v1, p0

    #@6
    move-object v3, v2

    #@7
    move v6, v4

    #@8
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$KeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    #@b
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
    .line 692
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
    return-object v0
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
    .line 298
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
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
    .line 725
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v0

    #@8
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
    .line 736
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
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
    .line 849
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    #@2
    .line 850
    .local v0, "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$KeySet;

    #@7
    .end local v0    # "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    #@c
    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 699
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    .line 700
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v1

    #@8
    .line 701
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@a
    .line 702
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    #@d
    .line 703
    :cond_0
    return-object v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 710
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    .line 711
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    #@7
    move-result-object v1

    #@8
    .line 712
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@a
    .line 713
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    #@d
    .line 714
    :cond_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    #@1
    .line 537
    iget-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    .line 538
    .local v5, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v5, :cond_3

    #@5
    .line 552
    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@7
    if-eqz v6, :cond_1

    #@9
    .line 553
    if-nez p1, :cond_0

    #@b
    .line 554
    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@d
    invoke-interface {v6, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@10
    .line 565
    :cond_0
    new-instance v6, Ljava/util/TreeMap$TreeMapEntry;

    #@12
    invoke-direct {v6, p1, p2, v7}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    #@15
    iput-object v6, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    #@17
    .line 566
    const/4 v6, 0x1

    #@18
    iput v6, p0, Ljava/util/TreeMap;->size:I

    #@1a
    .line 567
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    #@1c
    add-int/lit8 v6, v6, 0x1

    #@1e
    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    #@20
    .line 568
    return-object v7

    #@21
    .line 557
    :cond_1
    if-nez p1, :cond_2

    #@23
    .line 558
    new-instance v6, Ljava/lang/NullPointerException;

    #@25
    const-string/jumbo v7, "key == null"

    #@28
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v6

    #@2c
    .line 559
    :cond_2
    instance-of v6, p1, Ljava/lang/Comparable;

    #@2e
    if-nez v6, :cond_0

    #@30
    .line 560
    new-instance v6, Ljava/lang/ClassCastException;

    #@32
    .line 561
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "Cannot cast"

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    const-string/jumbo v8, " to Comparable."

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    .line 560
    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@58
    throw v6

    #@59
    .line 573
    :cond_3
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@5b
    .line 574
    .local v1, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v1, :cond_8

    #@5d
    .line 576
    :cond_4
    move-object v4, v5

    #@5e
    .line 577
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v6, v5, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@60
    invoke-interface {v1, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@63
    move-result v0

    #@64
    .line 578
    .local v0, "cmp":I
    if-gez v0, :cond_6

    #@66
    .line 579
    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@68
    .line 584
    :goto_0
    if-nez v5, :cond_4

    #@6a
    .line 602
    :cond_5
    new-instance v2, Ljava/util/TreeMap$TreeMapEntry;

    #@6c
    invoke-direct {v2, p1, p2, v4}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    #@6f
    .line 603
    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-gez v0, :cond_c

    #@71
    .line 604
    iput-object v2, v4, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@73
    .line 607
    :goto_1
    invoke-direct {p0, v2}, Ljava/util/TreeMap;->fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V

    #@76
    .line 608
    iget v6, p0, Ljava/util/TreeMap;->size:I

    #@78
    add-int/lit8 v6, v6, 0x1

    #@7a
    iput v6, p0, Ljava/util/TreeMap;->size:I

    #@7c
    .line 609
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    #@7e
    add-int/lit8 v6, v6, 0x1

    #@80
    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    #@82
    .line 610
    return-object v7

    #@83
    .line 580
    .end local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_6
    if-lez v0, :cond_7

    #@85
    .line 581
    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@87
    goto :goto_0

    #@88
    .line 583
    :cond_7
    invoke-virtual {v5, p2}, Ljava/util/TreeMap$TreeMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    move-result-object v6

    #@8c
    return-object v6

    #@8d
    .line 587
    .end local v0    # "cmp":I
    .end local v4    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_8
    if-nez p1, :cond_9

    #@8f
    .line 588
    new-instance v6, Ljava/lang/NullPointerException;

    #@91
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@94
    throw v6

    #@95
    :cond_9
    move-object v3, p1

    #@96
    .line 590
    check-cast v3, Ljava/lang/Comparable;

    #@98
    .line 592
    .local v3, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_2
    move-object v4, v5

    #@99
    .line 593
    .restart local v4    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v6, v5, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@9b
    invoke-interface {v3, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@9e
    move-result v0

    #@9f
    .line 594
    .restart local v0    # "cmp":I
    if-gez v0, :cond_a

    #@a1
    .line 595
    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@a3
    .line 600
    :goto_3
    if-eqz v5, :cond_5

    #@a5
    goto :goto_2

    #@a6
    .line 596
    :cond_a
    if-lez v0, :cond_b

    #@a8
    .line 597
    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@aa
    goto :goto_3

    #@ab
    .line 599
    :cond_b
    invoke-virtual {v5, p2}, Ljava/util/TreeMap$TreeMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    move-result-object v6

    #@af
    return-object v6

    #@b0
    .line 606
    .end local v3    # "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .restart local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_c
    iput-object v2, v4, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@b2
    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v3

    #@4
    .line 315
    .local v3, "mapSize":I
    iget v4, p0, Ljava/util/TreeMap;->size:I

    #@6
    if-nez v4, :cond_1

    #@8
    if-eqz v3, :cond_1

    #@a
    instance-of v4, p1, Ljava/util/SortedMap;

    #@c
    if-eqz v4, :cond_1

    #@e
    move-object v4, p1

    #@f
    .line 316
    check-cast v4, Ljava/util/SortedMap;

    #@11
    invoke-interface {v4}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    #@14
    move-result-object v0

    #@15
    .line 317
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@17
    if-eq v0, v4, :cond_0

    #@19
    if-eqz v0, :cond_1

    #@1b
    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@1d
    invoke-interface {v0, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_1

    #@23
    .line 318
    :cond_0
    iget v4, p0, Ljava/util/TreeMap;->modCount:I

    #@25
    add-int/lit8 v4, v4, 0x1

    #@27
    iput v4, p0, Ljava/util/TreeMap;->modCount:I

    #@29
    .line 320
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2c
    move-result-object v4

    #@2d
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v4

    #@31
    .line 321
    const/4 v5, 0x0

    #@32
    const/4 v6, 0x0

    #@33
    .line 320
    invoke-direct {p0, v3, v4, v5, v6}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@36
    .line 325
    :goto_0
    return-void

    #@37
    .line 328
    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :cond_1
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    #@3a
    .line 313
    return-void

    #@3b
    .line 322
    .restart local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :catch_0
    move-exception v1

    #@3c
    .local v1, "cannotHappen":Ljava/io/IOException;
    goto :goto_0

    #@3d
    .line 323
    .end local v1    # "cannotHappen":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@3e
    .local v2, "cannotHappen":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method readTreeSet(ILjava/io/ObjectInputStream;Ljava/lang/Object;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/ObjectInputStream;",
            "TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2506
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "defaultVal":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    #@4
    .line 2505
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 628
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@4
    move-result-object v1

    #@5
    .line 629
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v1, :cond_0

    #@7
    .line 630
    return-object v2

    #@8
    .line 632
    :cond_0
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@a
    .line 633
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    #@d
    .line 634
    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    #@1
    .line 1012
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@4
    move-result-object v1

    #@5
    .line 1013
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_0

    #@7
    .line 1014
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@9
    .line 1015
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@b
    .line 1016
    return-object v0

    #@c
    .line 1018
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1002
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    .line 1003
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@6
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@8
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1004
    iput-object p3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@10
    .line 1005
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1007
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1036
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1037
    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    #@5
    .line 1039
    .local v1, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@8
    move-result-object v0

    #@9
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@b
    .line 1040
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@d
    iget-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@f
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    iput-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    #@15
    .line 1042
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    #@17
    if-eq v1, v2, :cond_0

    #@19
    .line 1043
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@1b
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 1039
    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@22
    move-result-object v0

    #@23
    goto :goto_0

    #@24
    .line 1035
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 216
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    #@2
    return v0
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    #@1
    .line 934
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    #@3
    move-object v1, p0

    #@4
    move-object v3, p1

    #@5
    move v4, p2

    #@6
    move v5, v2

    #@7
    move-object v6, p3

    #@8
    move v7, p4

    #@9
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@c
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
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
    .line 975
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    #@5
    move-result-object v0

    #@6
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x1

    #@1
    .line 962
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    #@3
    .line 963
    const/4 v2, 0x0

    #@4
    .line 964
    const/4 v6, 0x0

    #@5
    move-object v1, p0

    #@6
    move-object v3, p1

    #@7
    move v4, p2

    #@8
    move v7, v5

    #@9
    .line 962
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@c
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
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
    .line 997
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@4
    move-result-object v0

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
    .line 882
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    #@2
    .line 883
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$Values;

    #@7
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$Values;-><init>(Ljava/util/TreeMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    #@c
    goto :goto_0
.end method
