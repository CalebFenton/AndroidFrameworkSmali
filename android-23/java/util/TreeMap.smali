.class public Ljava/util/TreeMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/util/NavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$Relation;,
        Ljava/util/TreeMap$Node;,
        Ljava/util/TreeMap$MapIterator;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$Bound;,
        Ljava/util/TreeMap$BoundedMap;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$1;
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
        "Ljava/util/SortedMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static synthetic -java_util_TreeMap$RelationSwitchesValues:[I = null

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method private static synthetic -getjava_util_TreeMap$RelationSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/util/TreeMap;->-java_util_TreeMap$RelationSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/util/TreeMap;->-java_util_TreeMap$RelationSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/util/TreeMap$Relation;->values()[Ljava/util/TreeMap$Relation;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@10
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    #@19
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    #@22
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@2b
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@34
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@3d
    invoke-virtual {v1}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Ljava/util/TreeMap;->-java_util_TreeMap$RelationSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 1
    .param p1, "entry"    # Ljava/util/Map$Entry;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/TreeMap;)Ljava/util/Map$Entry;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/TreeMap;)Ljava/util/Map$Entry;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/util/TreeMap$1;

    #@2
    invoke-direct {v0}, Ljava/util/TreeMap$1;-><init>()V

    #@5
    sput-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@7
    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 78
    iput v0, p0, Ljava/util/TreeMap;->size:I

    #@6
    .line 79
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    #@8
    .line 87
    sget-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@a
    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@c
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
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
    const/4 v0, 0x0

    #@1
    .line 120
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 78
    iput v0, p0, Ljava/util/TreeMap;->size:I

    #@6
    .line 79
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    #@8
    .line 121
    if-eqz p1, :cond_0

    #@a
    .line 122
    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@c
    .line 120
    :goto_0
    return-void

    #@d
    .line 124
    :cond_0
    sget-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@f
    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@11
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 106
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "copyFrom":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    #@3
    .line 107
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 108
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p0, v2, v3}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    goto :goto_0

    #@23
    .line 105
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 5
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
    .local p1, "copyFrom":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    const/4 v3, 0x0

    #@1
    .line 143
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 78
    iput v3, p0, Ljava/util/TreeMap;->size:I

    #@6
    .line 79
    iput v3, p0, Ljava/util/TreeMap;->modCount:I

    #@8
    .line 144
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    #@b
    move-result-object v2

    #@c
    .line 145
    .local v2, "sourceComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v2, :cond_0

    #@e
    .line 146
    iput-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@10
    .line 150
    :goto_0
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/Map$Entry;

    #@24
    .line 151
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    goto :goto_1

    #@30
    .line 148
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    sget-object v3, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@32
    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@34
    goto :goto_0

    #@35
    .line 143
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method static count(Ljava/util/Iterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1654
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    #@1
    .line 1655
    .local v0, "count":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1656
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a
    .line 1657
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1659
    :cond_0
    return v0
.end method

.method private immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 584
    if-nez p1, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@6
    invoke-direct {v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    #@9
    goto :goto_0
.end method

.method private internalPollFirstEntry()Ljava/util/Map$Entry;
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 592
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 593
    return-object v2

    #@6
    .line 595
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@8
    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    #@b
    move-result-object v0

    #@c
    .line 596
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    #@f
    .line 597
    return-object v0
.end method

.method private internalPollLastEntry()Ljava/util/Map$Entry;
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 616
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 617
    return-object v2

    #@6
    .line 619
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@8
    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    #@b
    move-result-object v0

    #@c
    .line 620
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    #@f
    .line 621
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 1680
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v0

    #@5
    .line 1681
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v3, "comparator"

    #@8
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljava/util/Comparator;

    #@e
    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@10
    .line 1682
    iget-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@12
    if-nez v3, :cond_0

    #@14
    .line 1683
    sget-object v3, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@16
    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@18
    .line 1685
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@1b
    move-result v2

    #@1c
    .line 1686
    .local v2, "size":I
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@1f
    .line 1687
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 1686
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1679
    :cond_1
    return-void
.end method

.method private rebalance(Ljava/util/TreeMap$Node;Z)V
    .locals 18
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 460
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "unbalanced":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    move-object/from16 v9, p1

    #@2
    .local v9, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v9, :cond_1

    #@4
    .line 461
    iget-object v2, v9, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@6
    .line 462
    .local v2, "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v10, v9, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@8
    .line 463
    .local v10, "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v2, :cond_2

    #@a
    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    #@c
    .line 464
    .local v4, "leftHeight":I
    :goto_1
    if-eqz v10, :cond_3

    #@e
    iget v12, v10, Ljava/util/TreeMap$Node;->height:I

    #@10
    .line 466
    .local v12, "rightHeight":I
    :goto_2
    sub-int v1, v4, v12

    #@12
    .line 467
    .local v1, "delta":I
    const/16 v17, -0x2

    #@14
    move/from16 v0, v17

    #@16
    if-ne v1, v0, :cond_7

    #@18
    .line 468
    iget-object v13, v10, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@1a
    .line 469
    .local v13, "rightLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v15, v10, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@1c
    .line 470
    .local v15, "rightRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v15, :cond_4

    #@1e
    iget v0, v15, Ljava/util/TreeMap$Node;->height:I

    #@20
    move/from16 v16, v0

    #@22
    .line 471
    .local v16, "rightRightHeight":I
    :goto_3
    if-eqz v13, :cond_5

    #@24
    iget v14, v13, Ljava/util/TreeMap$Node;->height:I

    #@26
    .line 473
    .local v14, "rightLeftHeight":I
    :goto_4
    sub-int v11, v14, v16

    #@28
    .line 474
    .local v11, "rightDelta":I
    const/16 v17, -0x1

    #@2a
    move/from16 v0, v17

    #@2c
    if-eq v11, v0, :cond_6

    #@2e
    if-nez v11, :cond_0

    #@30
    if-eqz p2, :cond_6

    #@32
    .line 478
    :cond_0
    move-object/from16 v0, p0

    #@34
    invoke-direct {v0, v10}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    #@37
    .line 479
    move-object/from16 v0, p0

    #@39
    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    #@3c
    .line 481
    :goto_5
    if-eqz p2, :cond_9

    #@3e
    .line 459
    .end local v1    # "delta":I
    .end local v2    # "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v4    # "leftHeight":I
    .end local v10    # "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v11    # "rightDelta":I
    .end local v12    # "rightHeight":I
    .end local v13    # "rightLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v14    # "rightLeftHeight":I
    .end local v15    # "rightRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v16    # "rightRightHeight":I
    :cond_1
    :goto_6
    return-void

    #@3f
    .line 463
    .restart local v2    # "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v10    # "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_2
    const/4 v4, 0x0

    #@40
    .restart local v4    # "leftHeight":I
    goto :goto_1

    #@41
    .line 464
    :cond_3
    const/4 v12, 0x0

    #@42
    .restart local v12    # "rightHeight":I
    goto :goto_2

    #@43
    .line 470
    .restart local v1    # "delta":I
    .restart local v13    # "rightLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v15    # "rightRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_4
    const/16 v16, 0x0

    #@45
    .restart local v16    # "rightRightHeight":I
    goto :goto_3

    #@46
    .line 471
    :cond_5
    const/4 v14, 0x0

    #@47
    .restart local v14    # "rightLeftHeight":I
    goto :goto_4

    #@48
    .line 475
    .restart local v11    # "rightDelta":I
    :cond_6
    move-object/from16 v0, p0

    #@4a
    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    #@4d
    goto :goto_5

    #@4e
    .line 485
    .end local v11    # "rightDelta":I
    .end local v13    # "rightLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v14    # "rightLeftHeight":I
    .end local v15    # "rightRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v16    # "rightRightHeight":I
    :cond_7
    const/16 v17, 0x2

    #@50
    move/from16 v0, v17

    #@52
    if-ne v1, v0, :cond_d

    #@54
    .line 486
    iget-object v5, v2, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@56
    .line 487
    .local v5, "leftLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v7, v2, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@58
    .line 488
    .local v7, "leftRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v7, :cond_a

    #@5a
    iget v8, v7, Ljava/util/TreeMap$Node;->height:I

    #@5c
    .line 489
    .local v8, "leftRightHeight":I
    :goto_7
    if-eqz v5, :cond_b

    #@5e
    iget v6, v5, Ljava/util/TreeMap$Node;->height:I

    #@60
    .line 491
    .local v6, "leftLeftHeight":I
    :goto_8
    sub-int v3, v6, v8

    #@62
    .line 492
    .local v3, "leftDelta":I
    const/16 v17, 0x1

    #@64
    move/from16 v0, v17

    #@66
    if-eq v3, v0, :cond_c

    #@68
    if-nez v3, :cond_8

    #@6a
    if-eqz p2, :cond_c

    #@6c
    .line 496
    :cond_8
    move-object/from16 v0, p0

    #@6e
    invoke-direct {v0, v2}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    #@71
    .line 497
    move-object/from16 v0, p0

    #@73
    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    #@76
    .line 499
    :goto_9
    if-nez p2, :cond_1

    #@78
    .line 460
    .end local v3    # "leftDelta":I
    .end local v5    # "leftLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v6    # "leftLeftHeight":I
    .end local v7    # "leftRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v8    # "leftRightHeight":I
    :cond_9
    iget-object v9, v9, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@7a
    goto :goto_0

    #@7b
    .line 488
    .restart local v5    # "leftLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v7    # "leftRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_a
    const/4 v8, 0x0

    #@7c
    .restart local v8    # "leftRightHeight":I
    goto :goto_7

    #@7d
    .line 489
    :cond_b
    const/4 v6, 0x0

    #@7e
    .restart local v6    # "leftLeftHeight":I
    goto :goto_8

    #@7f
    .line 493
    .restart local v3    # "leftDelta":I
    :cond_c
    move-object/from16 v0, p0

    #@81
    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    #@84
    goto :goto_9

    #@85
    .line 503
    .end local v3    # "leftDelta":I
    .end local v5    # "leftLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v6    # "leftLeftHeight":I
    .end local v7    # "leftRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v8    # "leftRightHeight":I
    :cond_d
    if-nez v1, :cond_e

    #@87
    .line 504
    add-int/lit8 v17, v4, 0x1

    #@89
    move/from16 v0, v17

    #@8b
    iput v0, v9, Ljava/util/TreeMap$Node;->height:I

    #@8d
    .line 505
    if-eqz p2, :cond_9

    #@8f
    goto :goto_6

    #@90
    .line 511
    :cond_e
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    #@93
    move-result v17

    #@94
    add-int/lit8 v17, v17, 0x1

    #@96
    move/from16 v0, v17

    #@98
    iput v0, v9, Ljava/util/TreeMap$Node;->height:I

    #@9a
    .line 512
    if-nez p2, :cond_9

    #@9c
    goto :goto_6
.end method

.method private replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 434
    iget-object v0, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@3
    .line 435
    .local v0, "parent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v1, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@5
    .line 436
    if-eqz p2, :cond_0

    #@7
    .line 437
    iput-object v0, p2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@9
    .line 440
    :cond_0
    if-eqz v0, :cond_2

    #@b
    .line 441
    iget-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@d
    if-ne v1, p1, :cond_1

    #@f
    .line 442
    iput-object p2, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@11
    .line 433
    :goto_0
    return-void

    #@12
    .line 445
    :cond_1
    iput-object p2, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@14
    goto :goto_0

    #@15
    .line 448
    :cond_2
    iput-object p2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@17
    goto :goto_0
.end method

.method private rotateLeft(Ljava/util/TreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "root":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 523
    iget-object v0, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@3
    .line 524
    .local v0, "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@5
    .line 525
    .local v1, "pivot":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@7
    .line 526
    .local v2, "pivotLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@9
    .line 529
    .local v3, "pivotRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@b
    .line 530
    if-eqz v2, :cond_0

    #@d
    .line 531
    iput-object p1, v2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@f
    .line 534
    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    #@12
    .line 537
    iput-object p1, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@14
    .line 538
    iput-object v1, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@16
    .line 541
    if-eqz v0, :cond_2

    #@18
    iget v4, v0, Ljava/util/TreeMap$Node;->height:I

    #@1a
    move v6, v4

    #@1b
    .line 542
    :goto_0
    if-eqz v2, :cond_3

    #@1d
    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    #@1f
    .line 541
    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v4

    #@23
    add-int/lit8 v4, v4, 0x1

    #@25
    iput v4, p1, Ljava/util/TreeMap$Node;->height:I

    #@27
    .line 543
    iget v4, p1, Ljava/util/TreeMap$Node;->height:I

    #@29
    .line 544
    if-eqz v3, :cond_1

    #@2b
    iget v5, v3, Ljava/util/TreeMap$Node;->height:I

    #@2d
    .line 543
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@30
    move-result v4

    #@31
    add-int/lit8 v4, v4, 0x1

    #@33
    iput v4, v1, Ljava/util/TreeMap$Node;->height:I

    #@35
    .line 522
    return-void

    #@36
    :cond_2
    move v6, v5

    #@37
    .line 541
    goto :goto_0

    #@38
    :cond_3
    move v4, v5

    #@39
    .line 542
    goto :goto_1
.end method

.method private rotateRight(Ljava/util/TreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "root":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 551
    iget-object v0, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@3
    .line 552
    .local v0, "pivot":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@5
    .line 553
    .local v3, "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@7
    .line 554
    .local v1, "pivotLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@9
    .line 557
    .local v2, "pivotRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@b
    .line 558
    if-eqz v2, :cond_0

    #@d
    .line 559
    iput-object p1, v2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@f
    .line 562
    :cond_0
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    #@12
    .line 565
    iput-object p1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@14
    .line 566
    iput-object v0, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@16
    .line 569
    if-eqz v3, :cond_2

    #@18
    iget v4, v3, Ljava/util/TreeMap$Node;->height:I

    #@1a
    move v6, v4

    #@1b
    .line 570
    :goto_0
    if-eqz v2, :cond_3

    #@1d
    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    #@1f
    .line 569
    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v4

    #@23
    add-int/lit8 v4, v4, 0x1

    #@25
    iput v4, p1, Ljava/util/TreeMap$Node;->height:I

    #@27
    .line 571
    iget v4, p1, Ljava/util/TreeMap$Node;->height:I

    #@29
    .line 572
    if-eqz v1, :cond_1

    #@2b
    iget v5, v1, Ljava/util/TreeMap$Node;->height:I

    #@2d
    .line 571
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@30
    move-result v4

    #@31
    add-int/lit8 v4, v4, 0x1

    #@33
    iput v4, v0, Ljava/util/TreeMap$Node;->height:I

    #@35
    .line 550
    return-void

    #@36
    :cond_2
    move v6, v5

    #@37
    .line 569
    goto :goto_0

    #@38
    :cond_3
    move v4, v5

    #@39
    .line 570
    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1669
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "comparator"

    #@7
    invoke-virtual {p0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@e
    .line 1670
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@11
    .line 1671
    iget v2, p0, Ljava/util/TreeMap;->size:I

    #@13
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@16
    .line 1672
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/Map$Entry;

    #@2a
    .line 1673
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@31
    .line 1674
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@38
    goto :goto_0

    #@39
    .line 1668
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
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
    .line 654
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 658
    sget-object v2, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@3
    invoke-virtual {p0, p1, v2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@6
    move-result-object v0

    #@7
    .line 659
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 190
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@3
    .line 191
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/TreeMap;->size:I

    #@6
    .line 192
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    #@c
    .line 189
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 158
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Ljava/util/TreeMap;

    #@7
    .line 159
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@9
    if-eqz v3, :cond_0

    #@b
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v2, v3}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    #@11
    move-result-object v2

    #@12
    :cond_0
    iput-object v2, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@14
    .line 160
    const/4 v2, 0x0

    #@15
    iput-object v2, v1, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@17
    .line 161
    const/4 v2, 0x0

    #@18
    iput-object v2, v1, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 162
    return-object v1

    #@1b
    .line 163
    .end local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :catch_0
    move-exception v0

    #@1c
    .line 164
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v2
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
    .line 672
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@2
    sget-object v1, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 182
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

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

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 730
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@3
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@5
    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@7
    const/4 v2, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v5, v3

    #@a
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@d
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 7
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
    .line 726
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@3
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@5
    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@7
    const/4 v2, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v5, v3

    #@a
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@d
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
    .line 683
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@2
    .line 684
    .local v0, "result":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$EntrySet;

    #@7
    .end local v0    # "result":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    #@c
    goto :goto_0
.end method

.method find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;
    .locals 9
    .param p2, "relation"    # Ljava/util/TreeMap$Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Relation;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 252
    iget-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@4
    if-nez v5, :cond_3

    #@6
    .line 253
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@8
    sget-object v6, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@a
    if-ne v5, v6, :cond_0

    #@c
    instance-of v5, p1, Ljava/lang/Comparable;

    #@e
    if-eqz v5, :cond_1

    #@10
    .line 256
    :cond_0
    sget-object v5, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    #@12
    if-ne p2, v5, :cond_2

    #@14
    .line 257
    new-instance v5, Ljava/util/TreeMap$Node;

    #@16
    invoke-direct {v5, v7, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    #@19
    iput-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@1b
    .line 258
    iput v8, p0, Ljava/util/TreeMap;->size:I

    #@1d
    .line 259
    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    #@1f
    add-int/lit8 v5, v5, 0x1

    #@21
    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    #@23
    .line 260
    iget-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@25
    return-object v5

    #@26
    .line 254
    :cond_1
    new-instance v5, Ljava/lang/ClassCastException;

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    const-string/jumbo v7, " is not Comparable"

    #@3c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@47
    throw v5

    #@48
    .line 262
    :cond_2
    return-object v7

    #@49
    .line 271
    :cond_3
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@4b
    sget-object v6, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    #@4d
    if-ne v5, v6, :cond_5

    #@4f
    move-object v1, p1

    #@50
    .line 272
    check-cast v1, Ljava/lang/Comparable;

    #@52
    .line 275
    :goto_0
    iget-object v4, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@54
    .line 277
    .local v4, "nearest":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_6

    #@56
    .line 278
    iget-object v5, v4, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@58
    invoke-interface {v1, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@5b
    move-result v2

    #@5c
    .line 284
    .local v2, "comparison":I
    :goto_2
    if-nez v2, :cond_4

    #@5e
    .line 285
    invoke-static {}, Ljava/util/TreeMap;->-getjava_util_TreeMap$RelationSwitchesValues()[I

    #@61
    move-result-object v5

    #@62
    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@65
    move-result v6

    #@66
    aget v5, v5, v6

    #@68
    packed-switch v5, :pswitch_data_0

    #@6b
    .line 298
    :cond_4
    if-gez v2, :cond_7

    #@6d
    iget-object v0, v4, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@6f
    .line 299
    .local v0, "child":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v0, :cond_8

    #@71
    .line 300
    move-object v4, v0

    #@72
    .line 301
    goto :goto_1

    #@73
    .line 273
    .end local v0    # "child":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v2    # "comparison":I
    .end local v4    # "nearest":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_5
    const/4 v1, 0x0

    #@74
    .local v1, "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    goto :goto_0

    #@75
    .line 279
    .end local v1    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .restart local v4    # "nearest":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_6
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@77
    iget-object v6, v4, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@79
    invoke-interface {v5, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@7c
    move-result v2

    #@7d
    .restart local v2    # "comparison":I
    goto :goto_2

    #@7e
    .line 287
    :pswitch_0
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    #@81
    move-result-object v5

    #@82
    return-object v5

    #@83
    .line 292
    :pswitch_1
    return-object v4

    #@84
    .line 294
    :pswitch_2
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    #@87
    move-result-object v5

    #@88
    return-object v5

    #@89
    .line 298
    :cond_7
    iget-object v0, v4, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@8b
    .restart local v0    # "child":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_3

    #@8c
    .line 309
    :cond_8
    if-gez v2, :cond_9

    #@8e
    .line 310
    invoke-static {}, Ljava/util/TreeMap;->-getjava_util_TreeMap$RelationSwitchesValues()[I

    #@91
    move-result-object v5

    #@92
    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@95
    move-result v6

    #@96
    aget v5, v5, v6

    #@98
    packed-switch v5, :pswitch_data_1

    #@9b
    goto :goto_1

    #@9c
    .line 316
    :pswitch_3
    return-object v4

    #@9d
    .line 313
    :pswitch_4
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    #@a0
    move-result-object v5

    #@a1
    return-object v5

    #@a2
    .line 318
    :pswitch_5
    return-object v7

    #@a3
    .line 320
    :pswitch_6
    new-instance v3, Ljava/util/TreeMap$Node;

    #@a5
    invoke-direct {v3, v4, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    #@a8
    .line 321
    .local v3, "created":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v3, v4, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@aa
    .line 322
    iget v5, p0, Ljava/util/TreeMap;->size:I

    #@ac
    add-int/lit8 v5, v5, 0x1

    #@ae
    iput v5, p0, Ljava/util/TreeMap;->size:I

    #@b0
    .line 323
    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    #@b2
    add-int/lit8 v5, v5, 0x1

    #@b4
    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    #@b6
    .line 324
    invoke-direct {p0, v4, v8}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    #@b9
    .line 325
    return-object v3

    #@ba
    .line 328
    .end local v3    # "created":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_9
    invoke-static {}, Ljava/util/TreeMap;->-getjava_util_TreeMap$RelationSwitchesValues()[I

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    #@c1
    move-result v6

    #@c2
    aget v5, v5, v6

    #@c4
    packed-switch v5, :pswitch_data_2

    #@c7
    goto :goto_1

    #@c8
    .line 334
    :pswitch_7
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    #@cb
    move-result-object v5

    #@cc
    return-object v5

    #@cd
    .line 331
    :pswitch_8
    return-object v4

    #@ce
    .line 336
    :pswitch_9
    return-object v7

    #@cf
    .line 338
    :pswitch_a
    new-instance v3, Ljava/util/TreeMap$Node;

    #@d1
    invoke-direct {v3, v4, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    #@d4
    .line 339
    .restart local v3    # "created":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v3, v4, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@d6
    .line 340
    iget v5, p0, Ljava/util/TreeMap;->size:I

    #@d8
    add-int/lit8 v5, v5, 0x1

    #@da
    iput v5, p0, Ljava/util/TreeMap;->size:I

    #@dc
    .line 341
    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    #@de
    add-int/lit8 v5, v5, 0x1

    #@e0
    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    #@e2
    .line 342
    invoke-direct {p0, v4, v8}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    #@e5
    .line 343
    return-object v3

    #@e6
    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    #@f6
    .line 310
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@106
    .line 328
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    const/4 v2, 0x0

    #@1
    .line 364
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {p0, v3}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    #@8
    move-result-object v0

    #@9
    .line 365
    .local v0, "mine":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@b
    iget-object v3, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@d
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    invoke-static {v3, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 366
    :goto_0
    if-eqz v1, :cond_1

    #@17
    .end local v0    # "mine":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_1
    return-object v0

    #@18
    .line 365
    .restart local v0    # "mine":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    #@19
    .local v1, "valuesEqual":Z
    goto :goto_0

    #@1a
    .end local v1    # "valuesEqual":Z
    :cond_1
    move-object v0, v2

    #@1b
    .line 366
    goto :goto_1
.end method

.method findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 351
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    sget-object v0, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 588
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@c
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    #@f
    move-result-object v0

    #@10
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
    .line 605
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 606
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v0

    #@a
    .line 608
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@c
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
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
    .line 645
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 649
    sget-object v2, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@3
    invoke-virtual {p0, p1, v2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@6
    move-result-object v0

    #@7
    .line 650
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
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
    .line 177
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 178
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 7
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
    .line 708
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    #@2
    sget-object v6, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    .line 709
    .local v6, "toBound":Ljava/util/TreeMap$Bound;
    :goto_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@6
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@8
    const/4 v2, 0x1

    #@9
    const/4 v3, 0x0

    #@a
    move-object v1, p0

    #@b
    move-object v5, p1

    #@c
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@f
    return-object v0

    #@10
    .line 708
    .end local v6    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@12
    .restart local v6    # "toBound":Ljava/util/TreeMap$Bound;
    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 713
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toExclusive":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@2
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@4
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@6
    const/4 v2, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v5, p1

    #@a
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@d
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
    .line 663
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 667
    sget-object v2, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@3
    invoke-virtual {p0, p1, v2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@6
    move-result-object v0

    #@7
    .line 668
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 173
    iget v1, p0, Ljava/util/TreeMap;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
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
    .line 688
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    #@2
    .line 689
    .local v0, "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$KeySet;

    #@7
    .end local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/TreeMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    #@c
    goto :goto_0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 612
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@c
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    #@f
    move-result-object v0

    #@10
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
    .line 629
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 630
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v0

    #@a
    .line 632
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@c
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
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
    .line 636
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 640
    sget-object v2, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@3
    invoke-virtual {p0, p1, v2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@6
    move-result-object v0

    #@7
    .line 641
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
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
    .line 693
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    #@2
    .line 694
    .local v0, "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$KeySet;

    #@7
    .end local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/TreeMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

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
    .line 601
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@7
    move-result-object v0

    #@8
    return-object v0
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
    .line 625
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@7
    move-result-object v0

    #@8
    return-object v0
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
    .line 186
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    sget-object v2, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    #@2
    invoke-virtual {p0, p1, v2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@5
    move-result-object v0

    #@6
    .line 241
    .local v0, "created":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@8
    .line 242
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@a
    .line 243
    return-object v1
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
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 196
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 197
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@7
    iget-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@9
    :cond_0
    return-object v1
.end method

.method removeInternal(Ljava/util/TreeMap$Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v8, 0x0

    #@1
    .line 374
    iget-object v1, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@3
    .line 375
    .local v1, "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v4, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@5
    .line 376
    .local v4, "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@7
    .line 377
    .local v3, "originalParent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_3

    #@9
    if-eqz v4, :cond_3

    #@b
    .line 388
    iget v6, v1, Ljava/util/TreeMap$Node;->height:I

    #@d
    iget v7, v4, Ljava/util/TreeMap$Node;->height:I

    #@f
    if-le v6, v7, :cond_2

    #@11
    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    #@14
    move-result-object v0

    #@15
    .line 389
    .local v0, "adjacent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    #@18
    .line 391
    const/4 v2, 0x0

    #@19
    .line 392
    .local v2, "leftHeight":I
    iget-object v1, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@1b
    .line 393
    if-eqz v1, :cond_0

    #@1d
    .line 394
    iget v2, v1, Ljava/util/TreeMap$Node;->height:I

    #@1f
    .line 395
    iput-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@21
    .line 396
    iput-object v0, v1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@23
    .line 397
    iput-object v8, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@25
    .line 399
    :cond_0
    const/4 v5, 0x0

    #@26
    .line 400
    .local v5, "rightHeight":I
    iget-object v4, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@28
    .line 401
    if-eqz v4, :cond_1

    #@2a
    .line 402
    iget v5, v4, Ljava/util/TreeMap$Node;->height:I

    #@2c
    .line 403
    iput-object v4, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@2e
    .line 404
    iput-object v0, v4, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@30
    .line 405
    iput-object v8, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@32
    .line 407
    :cond_1
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v6

    #@36
    add-int/lit8 v6, v6, 0x1

    #@38
    iput v6, v0, Ljava/util/TreeMap$Node;->height:I

    #@3a
    .line 408
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    #@3d
    .line 409
    return-void

    #@3e
    .line 388
    .end local v0    # "adjacent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v2    # "leftHeight":I
    .end local v5    # "rightHeight":I
    :cond_2
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    #@41
    move-result-object v0

    #@42
    .restart local v0    # "adjacent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_0

    #@43
    .line 410
    .end local v0    # "adjacent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_3
    if-eqz v1, :cond_4

    #@45
    .line 411
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    #@48
    .line 412
    iput-object v8, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@4a
    .line 420
    :goto_1
    const/4 v6, 0x0

    #@4b
    invoke-direct {p0, v3, v6}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    #@4e
    .line 421
    iget v6, p0, Ljava/util/TreeMap;->size:I

    #@50
    add-int/lit8 v6, v6, -0x1

    #@52
    iput v6, p0, Ljava/util/TreeMap;->size:I

    #@54
    .line 422
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    #@56
    add-int/lit8 v6, v6, 0x1

    #@58
    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    #@5a
    .line 373
    return-void

    #@5b
    .line 413
    :cond_4
    if-eqz v4, :cond_5

    #@5d
    .line 414
    invoke-direct {p0, p1, v4}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    #@60
    .line 415
    iput-object v8, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@62
    goto :goto_1

    #@63
    .line 417
    :cond_5
    invoke-direct {p0, p1, v8}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    #@66
    goto :goto_1
.end method

.method removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 426
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    #@3
    move-result-object v0

    #@4
    .line 427
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@6
    .line 428
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    #@9
    .line 430
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 169
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    #@2
    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 7
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
    .line 698
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    #@2
    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    .line 699
    .local v4, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_0
    if-eqz p4, :cond_1

    #@6
    sget-object v6, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@8
    .line 700
    .local v6, "toBound":Ljava/util/TreeMap$Bound;
    :goto_1
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@a
    const/4 v2, 0x1

    #@b
    move-object v1, p0

    #@c
    move-object v3, p1

    #@d
    move-object v5, p3

    #@e
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@11
    return-object v0

    #@12
    .line 698
    .end local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    .end local v6    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@14
    .restart local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    goto :goto_0

    #@15
    .line 699
    :cond_1
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@17
    .restart local v6    # "toBound":Ljava/util/TreeMap$Bound;
    goto :goto_1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 704
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    .local p2, "toExclusive":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@2
    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@6
    const/4 v2, 0x1

    #@7
    move-object v1, p0

    #@8
    move-object v3, p1

    #@9
    move-object v5, p2

    #@a
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@d
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 7
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
    .line 717
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    #@2
    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    .line 718
    .local v4, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@6
    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@8
    const/4 v2, 0x1

    #@9
    const/4 v5, 0x0

    #@a
    move-object v1, p0

    #@b
    move-object v3, p1

    #@c
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@f
    return-object v0

    #@10
    .line 717
    .end local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@12
    .restart local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    goto :goto_0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 722
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@2
    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@6
    const/4 v2, 0x1

    #@7
    const/4 v5, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v3, p1

    #@a
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@d
    return-object v0
.end method
