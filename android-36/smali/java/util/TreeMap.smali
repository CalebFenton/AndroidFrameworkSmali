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
        Ljava/util/TreeMap$TreeMapEntry;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$Values;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$KeyIterator;,
        Ljava/util/TreeMap$DescendingKeyIterator;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$KeySpliterator;,
        Ljava/util/TreeMap$DescendingKeySpliterator;,
        Ljava/util/TreeMap$EntrySpliterator;,
        Ljava/util/TreeMap$ValueSpliterator;,
        Ljava/util/TreeMap$TreeMapSpliterator;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$ValueIterator;,
        Ljava/util/TreeMap$EntryIterator;,
        Ljava/util/TreeMap$PrivateEntryIterator;
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
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BLACK:Z = true

.field private static final greylist-max-o RED:Z = false

.field private static final greylist-max-o UNBOUNDED:Ljava/lang/Object;

.field private static final whitelist serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field private final greylist-max-o comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o descendingMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private transient greylist-max-o modCount:I

.field private transient greylist-max-o navigableKeySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$KeySet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o root:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o size:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcomparator(Ljava/util/TreeMap;)Ljava/util/Comparator;
    .registers 1

    iget-object p0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmodCount(Ljava/util/TreeMap;)I
    .registers 1

    iget p0, p0, Ljava/util/TreeMap;->modCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetroot(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 1

    iget-object p0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsize(Ljava/util/TreeMap;)I
    .registers 1

    iget p0, p0, Ljava/util/TreeMap;->size:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUNBOUNDED()Ljava/lang/Object;
    .registers 1

    sget-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1649
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 161
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 147
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 163
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 147
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 180
    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 181
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 147
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 199
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 200
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/SortedMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 147
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 212
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 214
    :try_start_e
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1e} :catch_1f

    .line 216
    goto :goto_20

    .line 215
    :catch_1f
    move-exception v0

    .line 217
    :goto_20
    return-void
.end method

.method private blacklist addEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;Z)V
    .registers 7
    .param p4, "addToLeft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 801
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 802
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p4, :cond_a

    .line 803
    iput-object v0, p3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_c

    .line 805
    :cond_a
    iput-object v0, p3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 806
    :goto_c
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 807
    iget v1, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TreeMap;->size:I

    .line 808
    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    .line 809
    return-void
.end method

.method private blacklist addEntryToEmptyMap(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 812
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 813
    new-instance v0, Ljava/util/TreeMap$TreeMapEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 814
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 815
    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    .line 816
    return-void
.end method

.method private final greylist-max-o buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 23
    .param p1, "level"    # I
    .param p2, "lo"    # I
    .param p3, "hi"    # I
    .param p4, "redLevel"    # I
    .param p6, "str"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/io/ObjectInputStream;",
            "TV;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2930
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p7, "defaultVal":Ljava/lang/Object;, "TV;"
    move/from16 v0, p1

    move/from16 v3, p2

    move/from16 v9, p3

    const/4 v10, 0x0

    if-ge v9, v3, :cond_a

    return-object v10

    .line 2932
    :cond_a
    add-int v1, v3, v9

    ushr-int/lit8 v11, v1, 0x1

    .line 2934
    .local v11, "mid":I
    const/4 v12, 0x0

    .line 2935
    .local v12, "left":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-ge v3, v11, :cond_22

    .line 2936
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v4, v11, -0x1

    move-object v1, p0

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v12

    .line 2942
    :cond_22
    if-eqz p5, :cond_40

    .line 2943
    if-nez p7, :cond_37

    .line 2944
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2945
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2946
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2947
    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v13, v1

    move-object v14, v2

    goto :goto_4f

    .line 2948
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_37
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2949
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v1, p7

    move-object v13, v1

    move-object v14, v2

    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_4f

    .line 2952
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_40
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 2953
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    if-eqz p7, :cond_49

    move-object/from16 v1, p7

    goto :goto_4d

    :cond_49
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    :goto_4d
    move-object v13, v1

    move-object v14, v2

    .line 2956
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .local v13, "value":Ljava/lang/Object;, "TV;"
    .local v14, "key":Ljava/lang/Object;, "TK;"
    :goto_4f
    new-instance v1, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v1, v14, v13, v10}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    move-object v10, v1

    .line 2959
    .local v10, "middle":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move/from16 v5, p4

    if-ne v0, v5, :cond_5c

    .line 2960
    const/4 v1, 0x0

    iput-boolean v1, v10, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2962
    :cond_5c
    if-eqz v12, :cond_62

    .line 2963
    iput-object v12, v10, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2964
    iput-object v10, v12, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2967
    :cond_62
    if-ge v11, v9, :cond_78

    .line 2968
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v11, 0x1

    move-object v1, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move v4, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    .line 2970
    .local v2, "right":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object v2, v10, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2971
    iput-object v10, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2974
    .end local v2    # "right":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_78
    return-object v10
.end method

.method private greylist-max-o buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    .registers 13
    .param p1, "size"    # I
    .param p3, "str"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "*>;",
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

    .line 2892
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p4, "defaultVal":Ljava/lang/Object;, "TV;"
    iput p1, p0, Ljava/util/TreeMap;->size:I

    .line 2893
    add-int/lit8 v3, p1, -0x1

    invoke-static {p1}, Ljava/util/TreeMap;->computeRedLevel(I)I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local p3    # "str":Ljava/io/ObjectInputStream;
    .end local p4    # "defaultVal":Ljava/lang/Object;, "TV;"
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local v6, "str":Ljava/io/ObjectInputStream;
    .local v7, "defaultVal":Ljava/lang/Object;, "TV;"
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p2

    iput-object p2, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2895
    return-void
.end method

.method private blacklist callMappingFunctionWithCheck(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 783
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 784
    .local v0, "mc":I
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 785
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-ne v0, v2, :cond_b

    .line 788
    return-object v1

    .line 786
    :cond_b
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method private blacklist callRemappingFunctionWithCheck(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 792
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 793
    .local v0, "mc":I
    invoke-interface {p3, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 794
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-ne v0, v2, :cond_b

    .line 797
    return-object v1

    .line 795
    :cond_b
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method private static greylist-max-o colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2584
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    iget-boolean v0, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    :goto_6
    return v0
.end method

.method private static greylist-max-o computeRedLevel(I)I
    .registers 2
    .param p0, "size"    # I

    .line 2988
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private greylist-max-o deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2686
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 2687
    iget v0, p0, Ljava/util/TreeMap;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 2691
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_20

    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_20

    .line 2692
    invoke-static {p1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2693
    .local v0, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 2694
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 2695
    move-object p1, v0

    .line 2699
    .end local v0    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_20
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_27

    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_29

    :cond_27
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2701
    .local v0, "replacement":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_29
    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 2703
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2704
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v3, :cond_37

    .line 2705
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_46

    .line 2706
    :cond_37
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v3, :cond_42

    .line 2707
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_46

    .line 2709
    :cond_42
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2712
    :goto_46
    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2715
    iget-boolean v2, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-ne v2, v1, :cond_7d

    .line 2716
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    goto :goto_7d

    .line 2717
    :cond_54
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v3, :cond_5b

    .line 2718
    iput-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_7d

    .line 2720
    :cond_5b
    iget-boolean v3, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-ne v3, v1, :cond_62

    .line 2721
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2723
    :cond_62
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_7d

    .line 2724
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v1, :cond_71

    .line 2725
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_7b

    .line 2726
    :cond_71
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v1, :cond_7b

    .line 2727
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2728
    :cond_7b
    :goto_7b
    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2731
    :cond_7d
    :goto_7d
    return-void
.end method

.method static greylist-max-o exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1621
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1622
    :cond_4
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 1621
    :goto_9
    return-object v0
.end method

.method private greylist-max-o fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2735
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "x":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_123

    invoke-static {p1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v0

    if-ne v0, v1, :cond_123

    .line 2736
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_9d

    .line 2737
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2739
    .local v0, "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 2740
    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2741
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2742
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2743
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2746
    :cond_3e
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_5a

    .line 2747
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_5a

    .line 2748
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2749
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_9b

    .line 2751
    :cond_5a
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_79

    .line 2752
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2753
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2754
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2755
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2757
    :cond_79
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v2

    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2758
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2759
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2760
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2761
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2763
    .end local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_9b
    goto/16 :goto_1

    .line 2764
    :cond_9d
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2766
    .restart local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 2767
    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2768
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2769
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2770
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2773
    :cond_c4
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_e0

    .line 2774
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_e0

    .line 2775
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2776
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_121

    .line 2778
    :cond_e0
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_ff

    .line 2779
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2780
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2781
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2782
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2784
    :cond_ff
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v2

    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2785
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2786
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2787
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2788
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2790
    .end local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_121
    goto/16 :goto_1

    .line 2793
    :cond_123
    invoke-static {p1, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2794
    return-void
.end method

.method private greylist-max-o fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2642
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "x":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2644
    :goto_3
    const/4 v1, 0x1

    if-eqz p1, :cond_e1

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-eq p1, v2, :cond_e1

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-boolean v2, v2, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-nez v2, :cond_e1

    .line 2645
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    if-ne v2, v3, :cond_81

    .line 2646
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    .line 2647
    .local v2, "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v2}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 2648
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2649
    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2650
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2651
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_80

    .line 2653
    :cond_52
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    if-ne p1, v3, :cond_63

    .line 2654
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    .line 2655
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2657
    :cond_63
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2658
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2659
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2661
    .end local v2    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_80
    goto :goto_3

    .line 2662
    :cond_81
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    .line 2663
    .restart local v2    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v2}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 2664
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2665
    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2666
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2667
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_df

    .line 2669
    :cond_b1
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    if-ne p1, v3, :cond_c2

    .line 2670
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    .line 2671
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2673
    :cond_c2
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2674
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2675
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2677
    .end local v2    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_df
    goto/16 :goto_3

    .line 2679
    :cond_e1
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput-boolean v1, v0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2680
    return-void
.end method

.method static greylist-max-o key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;*>;)TK;"
        }
    .end annotation

    .line 1637
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;*>;"
    if-eqz p0, :cond_5

    .line 1639
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0

    .line 1638
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method static greylist-max-o keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 1629
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    :goto_6
    return-object v0
.end method

.method static greylist-max-o keySpliteratorFor(Ljava/util/NavigableMap;)Ljava/util/Spliterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;*>;)",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 3001
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;*>;"
    instance-of v0, p0, Ljava/util/TreeMap;

    if-eqz v0, :cond_c

    .line 3002
    move-object v0, p0

    check-cast v0, Ljava/util/TreeMap;

    .line 3004
    .local v0, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 3006
    .end local v0    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    :cond_c
    instance-of v0, p0, Ljava/util/TreeMap$DescendingSubMap;

    if-eqz v0, :cond_1f

    .line 3007
    move-object v0, p0

    check-cast v0, Ljava/util/TreeMap$DescendingSubMap;

    .line 3009
    .local v0, "dm":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;*>;"
    iget-object v1, v0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    .line 3010
    .local v1, "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;*>;"
    iget-object v2, v1, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    if-ne v0, v2, :cond_1f

    .line 3011
    move-object v2, v1

    .line 3013
    .local v2, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/TreeMap;->descendingKeySpliterator()Ljava/util/Spliterator;

    move-result-object v3

    return-object v3

    .line 3016
    .end local v0    # "dm":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;*>;"
    .end local v1    # "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;*>;"
    .end local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    :cond_1f
    move-object v0, p0

    check-cast v0, Ljava/util/TreeMap$NavigableSubMap;

    .line 3018
    .local v0, "sm":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;*>;"
    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2597
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    :goto_6
    return-object v0
.end method

.method private blacklist mergeValue(Ljava/util/TreeMap$TreeMapEntry;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 881
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 883
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_8

    .line 884
    move-object v1, p2

    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    goto :goto_13

    .line 886
    .end local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_8
    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    .line 887
    .local v1, "mc":I
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 888
    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    iget v3, p0, Ljava/util/TreeMap;->modCount:I

    if-ne v1, v3, :cond_1d

    move-object v1, v2

    .line 892
    .end local v2    # "newValue":Ljava/lang/Object;, "TV;"
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    :goto_13
    if-nez v1, :cond_1a

    .line 893
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 894
    const/4 v2, 0x0

    return-object v2

    .line 897
    :cond_1a
    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 898
    return-object v1

    .line 889
    .local v1, "mc":I
    .restart local v2    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_1d
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method private static greylist-max-o parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2588
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    :goto_6
    return-object v0
.end method

.method static greylist-max-o predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2555
    .local p0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    .line 2556
    const/4 v0, 0x0

    return-object v0

    .line 2557
    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_12

    .line 2558
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2559
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_a
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_11

    .line 2560
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_a

    .line 2561
    :cond_11
    return-object v0

    .line 2563
    .end local v0    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_12
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2564
    .restart local v0    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v1, p0

    .line 2565
    .local v1, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_15
    if-eqz v0, :cond_1f

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v2, :cond_1f

    .line 2566
    move-object v1, v0

    .line 2567
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_15

    .line 2569
    :cond_1f
    return-object v0
.end method

.method private blacklist put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 10
    .param p3, "replaceOld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 819
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 820
    .local v0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 821
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap;->addEntryToEmptyMap(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    return-object v1

    .line 827
    :cond_9
    iget-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 828
    .local v2, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v2, :cond_29

    .line 830
    :cond_d
    move-object v3, v0

    .line 831
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v4, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v2, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 832
    .local v4, "cmp":I
    if-gez v4, :cond_19

    .line 833
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1d

    .line 834
    :cond_19
    if-lez v4, :cond_20

    .line 835
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 843
    :goto_1d
    if-nez v0, :cond_d

    goto :goto_43

    .line 837
    :cond_20
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 838
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_26

    if-nez v1, :cond_28

    .line 839
    :cond_26
    iput-object p2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 841
    :cond_28
    return-object v1

    .line 845
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v4    # "cmp":I
    :cond_29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    .line 849
    .local v3, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_2f
    move-object v4, v0

    .line 850
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v5, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    .line 851
    .local v5, "cmp":I
    if-gez v5, :cond_3b

    .line 852
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3f

    .line 853
    :cond_3b
    if-lez v5, :cond_4c

    .line 854
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 862
    :goto_3f
    if-nez v0, :cond_2f

    move-object v3, v4

    move v4, v5

    .line 864
    .end local v5    # "cmp":I
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local v4, "cmp":I
    :goto_43
    if-gez v4, :cond_47

    const/4 v5, 0x1

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    :goto_48
    invoke-direct {p0, p1, p2, v3, v5}, Ljava/util/TreeMap;->addEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 865
    return-object v1

    .line 856
    .local v3, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .restart local v5    # "cmp":I
    :cond_4c
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 857
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_52

    if-nez v1, :cond_54

    .line 858
    :cond_52
    iput-object p2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 860
    :cond_54
    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2835
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2838
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 2840
    .local v0, "size":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    .line 2841
    return-void
.end method

.method private blacklist remapValue(Ljava/util/TreeMap$TreeMapEntry;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 869
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p3}, Ljava/util/TreeMap;->callRemappingFunctionWithCheck(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    .line 870
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_d

    .line 871
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 872
    const/4 v1, 0x0

    return-object v1

    .line 875
    :cond_d
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 876
    return-object v0
.end method

.method private static greylist-max-o rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2601
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    :goto_6
    return-object v0
.end method

.method private greylist-max-o rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2606
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p1, :cond_2e

    .line 2607
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2608
    .local v0, "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2609
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_10

    .line 2610
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2611
    :cond_10
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2612
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v1, :cond_1b

    .line 2613
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2a

    .line 2614
    :cond_1b
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, p1, :cond_26

    .line 2615
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2a

    .line 2617
    :cond_26
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2618
    :goto_2a
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2619
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2621
    .end local v0    # "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2e
    return-void
.end method

.method private greylist-max-o rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2625
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p1, :cond_2e

    .line 2626
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2627
    .local v0, "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2628
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_10

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2629
    :cond_10
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2630
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v1, :cond_1b

    .line 2631
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2a

    .line 2632
    :cond_1b
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, p1, :cond_26

    .line 2633
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2a

    .line 2634
    :cond_26
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2635
    :goto_2a
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2636
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2638
    .end local v0    # "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2e
    return-void
.end method

.method private static greylist-max-o setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V
    .registers 2
    .param p1, "c"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 2592
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p0, :cond_4

    .line 2593
    iput-boolean p1, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2594
    :cond_4
    return-void
.end method

.method static greylist-max-o successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2533
    .local p0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    .line 2534
    const/4 v0, 0x0

    return-object v0

    .line 2535
    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_12

    .line 2536
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2537
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_a
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_11

    .line 2538
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_a

    .line 2539
    :cond_11
    return-object v0

    .line 2541
    .end local v0    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_12
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2542
    .restart local v0    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v1, p0

    .line 2543
    .local v1, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_15
    if-eqz v0, :cond_1f

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v2, :cond_1f

    .line 2544
    move-object v1, v0

    .line 2545
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_15

    .line 2547
    :cond_1f
    return-object v0
.end method

.method static final greylist-max-o valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 1614
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2815
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2818
    iget v0, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2821
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2822
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2823
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2824
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_10

    .line 2825
    :cond_2b
    return-void
.end method


# virtual methods
.method greylist-max-o addAllForTreeSet(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "+TK;>;TV;)V"
        }
    .end annotation

    .line 2852
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TK;>;"
    .local p2, "defaultVal":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    .line 2854
    goto :goto_e

    .line 2853
    :catch_d
    move-exception v0

    .line 2855
    :goto_e
    return-void
.end method

.method public whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1057
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1068
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 931
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 932
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 934
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 945
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_25

    .line 948
    .local v0, "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    nop

    .line 951
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 952
    const/4 v2, 0x0

    iput v2, v0, Ljava/util/TreeMap;->size:I

    .line 953
    iput v2, v0, Ljava/util/TreeMap;->modCount:I

    .line 954
    iput-object v1, v0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 955
    iput-object v1, v0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    .line 956
    iput-object v1, v0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    .line 960
    :try_start_15
    iget v2, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, v1}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_22} :catch_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_22} :catch_23

    .line 962
    goto :goto_24

    .line 961
    :catch_23
    move-exception v1

    .line 964
    :goto_24
    return-object v0

    .line 946
    .end local v0    # "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    :catch_25
    move-exception v0

    .line 947
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method final greylist-max-o compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;

    .line 1605
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_12

    .line 1606
    :cond_c
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1605
    :goto_12
    return v0
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 681
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 684
    .local v0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 685
    invoke-direct {p0, p1, v1, p2}, Ljava/util/TreeMap;->callRemappingFunctionWithCheck(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v2

    .line 686
    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_12

    .line 687
    invoke-direct {p0, p1, v2}, Ljava/util/TreeMap;->addEntryToEmptyMap(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 688
    return-object v2

    .line 690
    :cond_12
    return-object v1

    .line 696
    .end local v2    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_13
    iget-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 697
    .local v2, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v2, :cond_2f

    .line 699
    :cond_17
    move-object v3, v0

    .line 700
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v4, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v2, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 701
    .local v4, "cmp":I
    if-gez v4, :cond_23

    .line 702
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_27

    .line 703
    :cond_23
    if-lez v4, :cond_2a

    .line 704
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 707
    :goto_27
    if-nez v0, :cond_17

    goto :goto_49

    .line 706
    :cond_2a
    invoke-direct {p0, v0, p1, p2}, Ljava/util/TreeMap;->remapValue(Ljava/util/TreeMap$TreeMapEntry;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 709
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v4    # "cmp":I
    :cond_2f
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    .line 713
    .local v3, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_35
    move-object v4, v0

    .line 714
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v5, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    .line 715
    .local v5, "cmp":I
    if-gez v5, :cond_41

    .line 716
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_45

    .line 717
    :cond_41
    if-lez v5, :cond_59

    .line 718
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 721
    :goto_45
    if-nez v0, :cond_35

    move-object v3, v4

    move v4, v5

    .line 723
    .end local v5    # "cmp":I
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local v4, "cmp":I
    :goto_49
    invoke-direct {p0, p1, v1, p2}, Ljava/util/TreeMap;->callRemappingFunctionWithCheck(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v5

    .line 724
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_58

    .line 725
    if-gez v4, :cond_53

    const/4 v1, 0x1

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    invoke-direct {p0, p1, v5, v3, v1}, Ljava/util/TreeMap;->addEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 726
    return-object v5

    .line 728
    :cond_58
    return-object v1

    .line 720
    .local v3, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local v5, "cmp":I
    :cond_59
    invoke-direct {p0, v0, p1, p2}, Ljava/util/TreeMap;->remapValue(Ljava/util/TreeMap$TreeMapEntry;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 590
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 593
    .local v0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 594
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap;->callMappingFunctionWithCheck(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    .line 595
    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_12

    .line 596
    invoke-direct {p0, p1, v2}, Ljava/util/TreeMap;->addEntryToEmptyMap(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 597
    return-object v2

    .line 599
    :cond_12
    return-object v1

    .line 605
    .end local v2    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_13
    iget-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 606
    .local v2, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v2, :cond_37

    .line 608
    :cond_17
    move-object v3, v0

    .line 609
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v4, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v2, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 610
    .local v4, "cmp":I
    if-gez v4, :cond_23

    .line 611
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_27

    .line 612
    :cond_23
    if-lez v4, :cond_2a

    .line 613
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 620
    :goto_27
    if-nez v0, :cond_17

    goto :goto_51

    .line 615
    :cond_2a
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_34

    .line 616
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap;->callMappingFunctionWithCheck(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 618
    :cond_34
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    return-object v1

    .line 622
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v4    # "cmp":I
    :cond_37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    .line 626
    .local v3, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_3d
    move-object v4, v0

    .line 627
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v5, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    .line 628
    .local v5, "cmp":I
    if-gez v5, :cond_49

    .line 629
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_4d

    .line 630
    :cond_49
    if-lez v5, :cond_61

    .line 631
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 638
    :goto_4d
    if-nez v0, :cond_3d

    move-object v3, v4

    move v4, v5

    .line 640
    .end local v5    # "cmp":I
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local v4, "cmp":I
    :goto_51
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap;->callMappingFunctionWithCheck(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    .line 641
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_60

    .line 642
    if-gez v4, :cond_5b

    const/4 v1, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    invoke-direct {p0, p1, v5, v3, v1}, Ljava/util/TreeMap;->addEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 643
    return-object v5

    .line 645
    :cond_60
    return-object v1

    .line 633
    .local v3, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local v5, "cmp":I
    :cond_61
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_6b

    .line 634
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap;->callMappingFunctionWithCheck(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 636
    :cond_6b
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 660
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 662
    .local v0, "oldEntry":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_12

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 663
    invoke-direct {p0, v0, p1, p2}, Ljava/util/TreeMap;->remapValue(Ljava/util/TreeMap$TreeMapEntry;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 665
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 245
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 262
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_4
    if-eqz v0, :cond_15

    .line 263
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 264
    const/4 v1, 0x1

    return v1

    .line 262
    :cond_10
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_4

    .line 265
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o descendingKeyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1425
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$DescendingKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$DescendingKeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
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

    .line 1145
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o descendingKeySpliterator()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 3026
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$DescendingKeySpliterator;

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$DescendingKeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

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

    .line 1209
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    .line 1210
    .local v0, "km":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v0, :cond_7

    move-object v2, p0

    move-object v1, v0

    goto :goto_15

    .line 1211
    :cond_7
    new-instance v1, Ljava/util/TreeMap$DescendingSubMap;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    iput-object v1, v2, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    .line 1210
    :goto_15
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

    .line 1201
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 1202
    .local v0, "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Ljava/util/TreeMap$EntrySet;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v1, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    :goto_d
    return-object v1
.end method

.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 973
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 303
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1035
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1046
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1315
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 1317
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_9
    if-eqz v1, :cond_21

    .line 1318
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1320
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-ne v0, v2, :cond_1b

    .line 1317
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    goto :goto_9

    .line 1321
    :cond_1b
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1324
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_21
    return-void
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 291
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 292
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    :goto_a
    return-object v1
.end method

.method final greylist-max-o getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 430
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_2c

    .line 431
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 432
    .local v1, "cmp":I
    if-gez v1, :cond_14

    .line 433
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_13

    .line 434
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1c

    .line 436
    :cond_13
    return-object v0

    .line 437
    :cond_14
    if-lez v1, :cond_2b

    .line 438
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1d

    .line 439
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 451
    .end local v1    # "cmp":I
    :goto_1c
    goto :goto_2

    .line 441
    .restart local v1    # "cmp":I
    :cond_1d
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 442
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v3, v0

    .line 443
    .local v3, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_20
    if-eqz v2, :cond_2a

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v3, v4, :cond_2a

    .line 444
    move-object v3, v2

    .line 445
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_20

    .line 447
    :cond_2a
    return-object v2

    .line 450
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2b
    return-object v0

    .line 452
    .end local v1    # "cmp":I
    :cond_2c
    const/4 v1, 0x0

    return-object v1
.end method

.method final greylist-max-o getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 379
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_9

    .line 380
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0

    .line 381
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 384
    .local v0, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 385
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_11
    if-eqz v1, :cond_24

    .line 386
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 387
    .local v2, "cmp":I
    if-gez v2, :cond_1e

    .line 388
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_22

    .line 389
    :cond_1e
    if-lez v2, :cond_23

    .line 390
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 393
    .end local v2    # "cmp":I
    :goto_22
    goto :goto_11

    .line 392
    .restart local v2    # "cmp":I
    :cond_23
    return-object v1

    .line 394
    .end local v2    # "cmp":I
    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method final greylist-max-o getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 405
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    move-object v0, p1

    .line 406
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 407
    .local v1, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v1, :cond_1a

    .line 408
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 409
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_7
    if-eqz v2, :cond_1a

    .line 410
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 411
    .local v3, "cmp":I
    if-gez v3, :cond_14

    .line 412
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_18

    .line 413
    :cond_14
    if-lez v3, :cond_19

    .line 414
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 417
    .end local v3    # "cmp":I
    :goto_18
    goto :goto_7

    .line 416
    .restart local v3    # "cmp":I
    :cond_19
    return-object v2

    .line 419
    .end local v2    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "cmp":I
    :cond_1a
    const/4 v2, 0x0

    return-object v2
.end method

.method final greylist-max-o getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2510
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2511
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 2512
    :goto_4
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_b

    .line 2513
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_4

    .line 2514
    :cond_b
    return-object v0
.end method

.method final greylist-max-o getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 463
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_2c

    .line 464
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 465
    .local v1, "cmp":I
    if-lez v1, :cond_14

    .line 466
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_13

    .line 467
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1c

    .line 469
    :cond_13
    return-object v0

    .line 470
    :cond_14
    if-gez v1, :cond_2b

    .line 471
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1d

    .line 472
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 485
    .end local v1    # "cmp":I
    :goto_1c
    goto :goto_2

    .line 474
    .restart local v1    # "cmp":I
    :cond_1d
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 475
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v3, v0

    .line 476
    .local v3, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_20
    if-eqz v2, :cond_2a

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v3, v4, :cond_2a

    .line 477
    move-object v3, v2

    .line 478
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_20

    .line 480
    :cond_2a
    return-object v2

    .line 483
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2b
    return-object v0

    .line 486
    .end local v1    # "cmp":I
    :cond_2c
    const/4 v1, 0x0

    return-object v1
.end method

.method final greylist-max-o getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 495
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 496
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_29

    .line 497
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 498
    .local v1, "cmp":I
    if-gez v1, :cond_14

    .line 499
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_13

    .line 500
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1a

    .line 502
    :cond_13
    return-object v0

    .line 504
    :cond_14
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1b

    .line 505
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 516
    .end local v1    # "cmp":I
    :goto_1a
    goto :goto_2

    .line 507
    .restart local v1    # "cmp":I
    :cond_1b
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 508
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v3, v0

    .line 509
    .local v3, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1e
    if-eqz v2, :cond_28

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v3, v4, :cond_28

    .line 510
    move-object v3, v2

    .line 511
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1e

    .line 513
    :cond_28
    return-object v2

    .line 517
    .end local v1    # "cmp":I
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method final greylist-max-o getLastEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2522
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2523
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 2524
    :goto_4
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_b

    .line 2525
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_4

    .line 2526
    :cond_b
    return-object v0
.end method

.method final greylist-max-o getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 526
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 527
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_29

    .line 528
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 529
    .local v1, "cmp":I
    if-lez v1, :cond_14

    .line 530
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_13

    .line 531
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1a

    .line 533
    :cond_13
    return-object v0

    .line 535
    :cond_14
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1b

    .line 536
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 547
    .end local v1    # "cmp":I
    :goto_1a
    goto :goto_2

    .line 538
    .restart local v1    # "cmp":I
    :cond_1b
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 539
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v3, v0

    .line 540
    .local v3, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1e
    if-eqz v2, :cond_28

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v3, v4, :cond_28

    .line 541
    move-object v3, v2

    .line 542
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1e

    .line 544
    :cond_28
    return-object v2

    .line 548
    .end local v1    # "cmp":I
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 11
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1240
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    .end local p1    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "inclusive":Z
    .local v6, "toKey":Ljava/lang/Object;, "TK;"
    .local v7, "inclusive":Z
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1278
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1079
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1090
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o keyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1421
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$KeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$KeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1130
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o keySpliterator()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 3022
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$KeySpliterator;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$KeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method

.method public whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 980
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 310
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1013
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1024
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 743
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 746
    .local v0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_e

    .line 747
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap;->addEntryToEmptyMap(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    return-object p2

    .line 753
    :cond_e
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 754
    .local v1, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v1, :cond_2a

    .line 756
    :cond_12
    move-object v2, v0

    .line 757
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 758
    .local v3, "cmp":I
    if-gez v3, :cond_1e

    .line 759
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_22

    .line 760
    :cond_1e
    if-lez v3, :cond_25

    .line 761
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 763
    :goto_22
    if-nez v0, :cond_12

    goto :goto_44

    .line 762
    :cond_25
    invoke-direct {p0, v0, p2, p3}, Ljava/util/TreeMap;->mergeValue(Ljava/util/TreeMap$TreeMapEntry;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 765
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "cmp":I
    :cond_2a
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    .line 769
    .local v2, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_30
    move-object v3, v0

    .line 770
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v4, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 771
    .local v4, "cmp":I
    if-gez v4, :cond_3c

    .line 772
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_40

    .line 773
    :cond_3c
    if-lez v4, :cond_4d

    .line 774
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 776
    :goto_40
    if-nez v0, :cond_30

    move-object v2, v3

    move v3, v4

    .line 778
    .end local v4    # "cmp":I
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local v3, "cmp":I
    :goto_44
    if-gez v3, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    invoke-direct {p0, p1, p2, v2, v4}, Ljava/util/TreeMap;->addEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 779
    return-object p2

    .line 775
    .local v2, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .restart local v4    # "cmp":I
    :cond_4d
    invoke-direct {p0, v0, p2, p3}, Ljava/util/TreeMap;->mergeValue(Ljava/util/TreeMap$TreeMapEntry;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1137
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    .line 1138
    .local v0, "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Ljava/util/TreeMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v1, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    :goto_d
    return-object v1
.end method

.method public whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 987
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 988
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 989
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    .line 990
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 991
    :cond_d
    return-object v1
.end method

.method public whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 998
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 999
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 1000
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    .line 1001
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1002
    :cond_d
    return-object v1
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 570
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 350
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 351
    .local v0, "mapSize":I
    iget v1, p0, Ljava/util/TreeMap;->size:I

    if-nez v1, :cond_32

    if-eqz v0, :cond_32

    instance-of v1, p1, Ljava/util/SortedMap;

    if-eqz v1, :cond_32

    .line 352
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    move-object v2, p1

    check-cast v2, Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 353
    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    .line 355
    :try_start_23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2f} :catch_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_2f} :catch_30

    .line 358
    goto :goto_31

    .line 357
    :catch_30
    move-exception v1

    .line 359
    :goto_31
    return-void

    .line 362
    :cond_32
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 363
    return-void
.end method

.method public whitelist test-api putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 322
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 575
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 334
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o readTreeSet(ILjava/io/ObjectInputStream;Ljava/lang/Object;)V
    .registers 5
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

    .line 2846
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "defaultVal":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    .line 2847
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 917
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 918
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_8

    .line 919
    const/4 v1, 0x0

    return-object v1

    .line 921
    :cond_8
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 922
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 923
    return-object v1
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1304
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1305
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 1306
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1307
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1308
    return-object v1

    .line 1310
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1294
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1295
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_12

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1296
    iput-object p3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1297
    const/4 v1, 0x1

    return v1

    .line 1299
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1328
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 1331
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_9
    if-eqz v1, :cond_24

    .line 1332
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1334
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-ne v0, v2, :cond_1e

    .line 1331
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    goto :goto_9

    .line 1335
    :cond_1e
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1338
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_24
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 228
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 13
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1226
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .end local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p4    # "toInclusive":Z
    .local v3, "fromKey":Ljava/lang/Object;, "TK;"
    .local v4, "fromInclusive":Z
    .local v6, "toKey":Ljava/lang/Object;, "TK;"
    .local v7, "toInclusive":Z
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1267
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 11
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1254
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "inclusive":Z
    .local v3, "fromKey":Ljava/lang/Object;, "TK;"
    .local v4, "inclusive":Z
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1289
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1170
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    .line 1171
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 1172
    new-instance v1, Ljava/util/TreeMap$Values;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$Values;-><init>(Ljava/util/TreeMap;)V

    move-object v0, v1

    .line 1173
    iput-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    .line 1175
    :cond_c
    return-object v0
.end method
