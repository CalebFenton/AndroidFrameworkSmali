.class public Ljava/util/concurrent/ConcurrentSkipListMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$Node;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Index;,
        Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Iter;,
        Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$Values;,
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
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
.field private static final BASE_HEADER:Ljava/lang/Object;

.field private static final EQ:I = 0x1

.field private static final GT:I = 0x0

.field private static final LT:I = 0x2

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final serialVersionUID:J = -0x77b98a51f9eeb959L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient randomSeed:I

.field private transient values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Values",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 308
    new-instance v2, Ljava/lang/Object;

    #@2
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    #@7
    .line 3091
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@a
    move-result-object v2

    #@b
    sput-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    #@d
    .line 3092
    const-class v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@f
    .line 3093
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    #@11
    .line 3094
    const-string/jumbo v3, "head"

    #@14
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@17
    move-result-object v3

    #@18
    .line 3093
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@1b
    move-result-wide v2

    #@1c
    sput-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->headOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 65
    return-void

    #@1f
    .line 3095
    :catch_0
    move-exception v0

    #@20
    .line 3096
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@22
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v2
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1362
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1363
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@6
    .line 1364
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@9
    .line 1362
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1375
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1376
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@5
    .line 1377
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@8
    .line 1375
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1391
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1392
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@6
    .line 1393
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@9
    .line 1394
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->putAll(Ljava/util/Map;)V

    #@c
    .line 1391
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1406
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1407
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@9
    .line 1408
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@c
    .line 1409
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V

    #@f
    .line 1406
    return-void
.end method

.method private addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V
    .locals 9
    .param p3, "indexLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 952
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    move v1, p3

    #@1
    .line 953
    .local v1, "insertionLevel":I
    iget-object v8, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@5
    invoke-direct {p0, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    #@8
    move-result-object v3

    #@9
    .line 954
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    if-nez v3, :cond_0

    #@b
    new-instance v8, Ljava/lang/NullPointerException;

    #@d
    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    #@10
    throw v8

    #@11
    .line 959
    :cond_0
    iget v2, p2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@13
    .line 960
    .local v2, "j":I
    move-object v5, p2

    #@14
    .line 961
    .local v5, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@16
    .line 962
    .local v6, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v7, p1

    #@17
    .line 964
    .local v7, "t":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_2

    #@19
    .line 965
    iget-object v4, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1b
    .line 967
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@1d
    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@20
    move-result v0

    #@21
    .line 968
    .local v0, "c":I
    iget-object v8, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@23
    if-nez v8, :cond_1

    #@25
    .line 969
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_0

    #@2b
    .line 971
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@2d
    goto :goto_0

    #@2e
    .line 974
    :cond_1
    if-lez v0, :cond_2

    #@30
    .line 975
    move-object v5, v6

    #@31
    .line 976
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@33
    goto :goto_0

    #@34
    .line 981
    .end local v0    # "c":I
    .end local v4    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    if-ne v2, v1, :cond_5

    #@36
    .line 983
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_3

    #@3c
    .line 984
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3f
    .line 985
    return-void

    #@40
    .line 987
    :cond_3
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->link(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@43
    move-result v8

    #@44
    if-eqz v8, :cond_0

    #@46
    .line 989
    add-int/lit8 v1, v1, -0x1

    #@48
    if-nez v1, :cond_5

    #@4a
    .line 991
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_4

    #@50
    .line 992
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@53
    .line 993
    :cond_4
    return-void

    #@54
    .line 997
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@56
    if-lt v2, v1, :cond_6

    #@58
    if-ge v2, p3, :cond_6

    #@5a
    .line 998
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@5c
    .line 999
    :cond_6
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@5e
    .line 1000
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@60
    goto :goto_0
.end method

.method private buildFromSorted(Ljava/util/SortedMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1437
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 1438
    new-instance v14, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v14

    #@8
    .line 1440
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@a
    .line 1441
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    .line 1445
    .local v0, "basepred":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v10, Ljava/util/ArrayList;

    #@e
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 1448
    .local v10, "preds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v4, 0x0

    #@12
    .local v4, "i":I
    :goto_0
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@14
    if-gt v4, v14, :cond_1

    #@16
    .line 1449
    const/4 v14, 0x0

    #@17
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1448
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1450
    :cond_1
    move-object v11, v2

    #@1e
    .line 1451
    .local v11, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@20
    :goto_1
    if-lez v4, :cond_2

    #@22
    .line 1452
    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 1453
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@27
    .line 1451
    add-int/lit8 v4, v4, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 1457
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@2d
    move-result-object v14

    #@2e
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v7

    #@32
    .line 1458
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v14

    #@36
    if-eqz v14, :cond_8

    #@38
    .line 1459
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Ljava/util/Map$Entry;

    #@3e
    .line 1460
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    #@41
    move-result v8

    #@42
    .line 1461
    .local v8, "j":I
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@44
    if-le v8, v14, :cond_4

    #@46
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@48
    add-int/lit8 v8, v14, 0x1

    #@4a
    .line 1462
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4d
    move-result-object v9

    #@4e
    .line 1463
    .local v9, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@51
    move-result-object v12

    #@52
    .line 1464
    .local v12, "v":Ljava/lang/Object;, "TV;"
    if-eqz v9, :cond_5

    #@54
    if-nez v12, :cond_6

    #@56
    .line 1465
    :cond_5
    new-instance v14, Ljava/lang/NullPointerException;

    #@58
    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    #@5b
    throw v14

    #@5c
    .line 1466
    :cond_6
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5e
    const/4 v14, 0x0

    #@5f
    invoke-direct {v13, v9, v12, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@62
    .line 1467
    .local v13, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@64
    .line 1468
    move-object v0, v13

    #@65
    .line 1469
    if-lez v8, :cond_3

    #@67
    .line 1470
    const/4 v5, 0x0

    #@68
    .line 1471
    .local v5, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v4, 0x1

    #@69
    move-object v6, v5

    #@6a
    .local v6, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v3, v2

    #@6b
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v3, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_3
    if-gt v4, v8, :cond_a

    #@6d
    .line 1472
    new-instance v5, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@6f
    const/4 v14, 0x0

    #@70
    invoke-direct {v5, v13, v6, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@73
    .line 1473
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v5, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v14, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@75
    if-le v4, v14, :cond_9

    #@77
    .line 1474
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@79
    iget-object v14, v3, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7b
    invoke-direct {v2, v14, v3, v5, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    #@7e
    .line 1476
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@81
    move-result v14

    #@82
    if-ge v4, v14, :cond_7

    #@84
    .line 1477
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@87
    move-result-object v14

    #@88
    check-cast v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@8a
    iput-object v5, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@8c
    .line 1478
    invoke-virtual {v10, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 1471
    :goto_5
    add-int/lit8 v4, v4, 0x1

    #@91
    move-object v6, v5

    #@92
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v3, v2

    #@93
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_3

    #@94
    .line 1480
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_7
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@97
    goto :goto_5

    #@98
    .line 1484
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v8    # "j":I
    .end local v9    # "k":Ljava/lang/Object;, "TK;"
    .end local v12    # "v":Ljava/lang/Object;, "TV;"
    .end local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_8
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@9a
    .line 1436
    return-void

    #@9b
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v8    # "j":I
    .restart local v9    # "k":Ljava/lang/Object;, "TK;"
    .restart local v12    # "v":Ljava/lang/Object;, "TV;"
    .restart local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_9
    move-object v2, v3

    #@9c
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_4

    #@9d
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v6    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_a
    move-object v2, v3

    #@9e
    .end local v3    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_2
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 362
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentSkipListMap;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentSkipListMap;->headOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private clearIndexToFirst()V
    .locals 3

    #@0
    .prologue
    .line 1153
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@2
    .line 1155
    .local v0, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@4
    .line 1156
    .local v1, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_2

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_2

    #@c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1158
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1159
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@18
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@1a
    if-nez v2, :cond_3

    #@1c
    .line 1160
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    #@1f
    .line 1161
    :cond_3
    return-void
.end method

.method private comparable(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    #@0
    .prologue
    .line 638
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 639
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 640
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 641
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;

    #@e
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@10
    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;-><init>(Ljava/lang/Object;Ljava/util/Comparator;)V

    #@13
    return-object v0

    #@14
    .line 643
    :cond_1
    check-cast p1, Ljava/lang/Comparable;

    #@16
    .end local p1    # "key":Ljava/lang/Object;
    return-object p1
.end method

.method private doGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "okey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 801
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    #@4
    move-result-object v0

    #@5
    .line 808
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@8
    move-result-object v1

    #@9
    .line 809
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    #@b
    .line 810
    return-object v3

    #@c
    .line 811
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@e
    .line 812
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@10
    .line 813
    return-object v2
.end method

.method private doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 10
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "kkey":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v9, 0x0

    #@1
    .line 828
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    #@4
    move-result-object v3

    #@5
    .line 830
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@8
    move-result-object v0

    #@9
    .line 831
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    .line 833
    .local v5, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v5, :cond_4

    #@d
    .line 834
    iget-object v2, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    .line 835
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    if-ne v5, v8, :cond_0

    #@13
    .line 837
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@15
    .line 838
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_1

    #@17
    .line 839
    invoke-virtual {v5, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@1a
    goto :goto_0

    #@1b
    .line 842
    :cond_1
    if-eq v6, v5, :cond_0

    #@1d
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1f
    if-eqz v8, :cond_0

    #@21
    .line 844
    iget-object v8, v5, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@23
    invoke-interface {v3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@26
    move-result v1

    #@27
    .line 845
    .local v1, "c":I
    if-lez v1, :cond_2

    #@29
    .line 846
    move-object v0, v5

    #@2a
    .line 847
    move-object v5, v2

    #@2b
    .line 848
    goto :goto_1

    #@2c
    .line 850
    :cond_2
    if-nez v1, :cond_4

    #@2e
    .line 851
    if-nez p3, :cond_3

    #@30
    invoke-virtual {v5, v6, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_0

    #@36
    .line 852
    :cond_3
    return-object v6

    #@37
    .line 859
    .end local v1    # "c":I
    .end local v2    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v6    # "v":Ljava/lang/Object;
    :cond_4
    new-instance v7, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@39
    invoke-direct {v7, p1, p2, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@3c
    .line 860
    .local v7, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {v0, v5, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_0

    #@42
    .line 862
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    #@45
    move-result v4

    #@46
    .line 863
    .local v4, "level":I
    if-lez v4, :cond_5

    #@48
    .line 864
    invoke-direct {p0, v7, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->insertIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Node;I)V

    #@4b
    .line 865
    :cond_5
    return-object v9
.end method

.method private findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/4 v6, 0x0

    #@1
    .line 769
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 770
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 772
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v3, :cond_1

    #@9
    .line 773
    return-object v6

    #@a
    .line 774
    :cond_1
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    .line 775
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    if-ne v3, v5, :cond_0

    #@10
    .line 777
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@12
    .line 778
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_2

    #@14
    .line 779
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@17
    goto :goto_0

    #@18
    .line 782
    :cond_2
    if-eq v4, v3, :cond_0

    #@1a
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 784
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@20
    invoke-interface {p1, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@23
    move-result v1

    #@24
    .line 785
    .local v1, "c":I
    if-nez v1, :cond_3

    #@26
    .line 786
    return-object v3

    #@27
    .line 787
    :cond_3
    if-gez v1, :cond_4

    #@29
    .line 788
    return-object v6

    #@2a
    .line 789
    :cond_4
    move-object v0, v3

    #@2b
    .line 790
    move-object v3, v2

    #@2c
    goto :goto_1
.end method

.method private findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 692
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    if-nez p1, :cond_0

    #@2
    .line 693
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 695
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@a
    .line 696
    .local v3, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@c
    .line 698
    .local v4, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_2

    #@e
    .line 699
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@10
    .line 700
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@12
    .line 701
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@14
    if-nez v5, :cond_1

    #@16
    .line 702
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 704
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@1e
    goto :goto_0

    #@1f
    .line 707
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@22
    move-result v5

    #@23
    if-lez v5, :cond_2

    #@25
    .line 708
    move-object v3, v4

    #@26
    .line 709
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@28
    goto :goto_0

    #@29
    .line 713
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@2b
    .line 714
    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_3

    #@2d
    .line 715
    move-object v3, v0

    #@2e
    .line 716
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@30
    goto :goto_0

    #@31
    .line 718
    :cond_3
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@33
    return-object v5
.end method

.method private findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1225
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@2
    .line 1228
    .local v1, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@4
    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v2, :cond_1

    #@6
    .line 1229
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1230
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@f
    goto :goto_0

    #@10
    .line 1234
    :cond_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 1235
    move-object v1, v2

    #@17
    .line 1236
    goto :goto_1

    #@18
    .line 1239
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@1a
    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_2

    #@1c
    .line 1240
    move-object v1, v0

    #@1d
    goto :goto_1

    #@1e
    .line 1242
    :cond_2
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@20
    return-object v3
.end method

.method private insertIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Node;I)V
    .locals 15
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 897
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@2
    .line 898
    .local v1, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v8, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@4
    .line 900
    .local v8, "max":I
    move/from16 v0, p2

    #@6
    if-gt v0, v8, :cond_1

    #@8
    .line 901
    const/4 v3, 0x0

    #@9
    .line 902
    .local v3, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v2, 0x1

    #@a
    .local v2, "i":I
    move-object v4, v3

    #@b
    .end local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v4, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    move/from16 v0, p2

    #@d
    if-gt v2, v0, :cond_0

    #@f
    .line 903
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@11
    const/4 v14, 0x0

    #@12
    move-object/from16 v0, p1

    #@14
    invoke-direct {v3, v0, v4, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@17
    .line 902
    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v3, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    #@19
    move-object v4, v3

    #@1a
    .end local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_0

    #@1b
    .line 904
    :cond_0
    move/from16 v0, p2

    #@1d
    invoke-direct {p0, v4, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    #@20
    .line 896
    :goto_1
    return-void

    #@21
    .line 915
    .end local v2    # "i":I
    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    add-int/lit8 p2, v8, 0x1

    #@23
    .line 916
    add-int/lit8 v14, p2, 0x1

    #@25
    new-array v5, v14, [Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@27
    .line 917
    .local v5, "idxs":[Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "[Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v3, 0x0

    #@28
    .line 918
    .local v3, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v2, 0x1

    #@29
    .restart local v2    # "i":I
    move-object v4, v3

    #@2a
    .end local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_2
    move/from16 v0, p2

    #@2c
    if-gt v2, v0, :cond_2

    #@2e
    .line 919
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@30
    const/4 v14, 0x0

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-direct {v3, v0, v4, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@36
    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v3, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    aput-object v3, v5, v2

    #@38
    .line 918
    add-int/lit8 v2, v2, 0x1

    #@3a
    move-object v4, v3

    #@3b
    .end local v3    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_2

    #@3c
    .line 924
    :cond_2
    iget-object v13, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@3e
    .line 925
    .local v13, "oldh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v11, v13, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@40
    .line 926
    .local v11, "oldLevel":I
    move/from16 v0, p2

    #@42
    if-gt v0, v11, :cond_3

    #@44
    .line 927
    move/from16 v7, p2

    #@46
    .line 939
    .local v7, "k":I
    :goto_3
    aget-object v14, v5, v7

    #@48
    invoke-direct {p0, v14, v13, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->addIndex(Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;I)V

    #@4b
    goto :goto_1

    #@4c
    .line 930
    .end local v7    # "k":I
    :cond_3
    move-object v9, v13

    #@4d
    .line 931
    .local v9, "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v12, v13, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4f
    .line 932
    .local v12, "oldbase":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    add-int/lit8 v6, v11, 0x1

    #@51
    .local v6, "j":I
    move-object v10, v9

    #@52
    .end local v9    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v10, "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_4
    move/from16 v0, p2

    #@54
    if-gt v6, v0, :cond_4

    #@56
    .line 933
    new-instance v9, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@58
    aget-object v14, v5, v6

    #@5a
    invoke-direct {v9, v12, v10, v14, v6}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    #@5d
    .line 932
    .end local v10    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v9    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    add-int/lit8 v6, v6, 0x1

    #@5f
    move-object v10, v9

    #@60
    .end local v9    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v10    # "newh":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_4

    #@61
    .line 934
    :cond_4
    invoke-direct {p0, v13, v10}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    #@64
    move-result v14

    #@65
    if-eqz v14, :cond_2

    #@67
    .line 935
    move v7, v11

    #@68
    .line 936
    .restart local v7    # "k":I
    goto :goto_3
.end method

.method private randomLevel()I
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 880
    iget v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    #@3
    .line 881
    .local v1, "x":I
    shl-int/lit8 v2, v1, 0xd

    #@5
    xor-int/2addr v1, v2

    #@6
    .line 882
    ushr-int/lit8 v2, v1, 0x11

    #@8
    xor-int/2addr v1, v2

    #@9
    .line 883
    shl-int/lit8 v2, v1, 0x5

    #@b
    xor-int/2addr v1, v2

    #@c
    iput v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    #@e
    .line 884
    const v2, -0x7fffffff

    #@11
    and-int/2addr v2, v1

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 885
    return v3

    #@15
    .line 886
    :cond_0
    const/4 v0, 0x1

    #@16
    .line 887
    .local v0, "level":I
    :goto_0
    ushr-int/lit8 v1, v1, 0x1

    #@18
    and-int/lit8 v2, v1, 0x1

    #@1a
    if-eqz v2, :cond_1

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 888
    :cond_1
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 15
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1520
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1522
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@6
    .line 1532
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@8
    .line 1533
    .local v1, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@a
    .line 1534
    .local v0, "basepred":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@c
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1535
    .local v9, "preds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;>;"
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@12
    if-gt v3, v14, :cond_0

    #@14
    .line 1536
    const/4 v14, 0x0

    #@15
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 1535
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1537
    :cond_0
    move-object v10, v1

    #@1c
    .line 1538
    .local v10, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@1e
    :goto_1
    if-lez v3, :cond_2

    #@20
    .line 1539
    invoke-virtual {v9, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 1540
    iget-object v10, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@25
    .line 1538
    add-int/lit8 v3, v3, -0x1

    #@27
    goto :goto_1

    #@28
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .local v5, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v6, "j":I
    .local v7, "k":Ljava/lang/Object;
    .local v8, "key":Ljava/lang/Object;, "TK;"
    .local v11, "v":Ljava/lang/Object;
    .local v12, "val":Ljava/lang/Object;, "TV;"
    .local v13, "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    move-object v1, v2

    #@29
    .line 1544
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v6    # "j":I
    .end local v7    # "k":Ljava/lang/Object;
    .end local v8    # "key":Ljava/lang/Object;, "TK;"
    .end local v11    # "v":Ljava/lang/Object;
    .end local v12    # "val":Ljava/lang/Object;, "TV;"
    .end local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    .line 1545
    .restart local v7    # "k":Ljava/lang/Object;
    if-nez v7, :cond_3

    #@2f
    .line 1572
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@31
    .line 1518
    return-void

    #@32
    .line 1547
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@35
    move-result-object v11

    #@36
    .line 1548
    .restart local v11    # "v":Ljava/lang/Object;
    if-nez v11, :cond_4

    #@38
    .line 1549
    new-instance v14, Ljava/lang/NullPointerException;

    #@3a
    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    #@3d
    throw v14

    #@3e
    .line 1550
    :cond_4
    move-object v8, v7

    #@3f
    .line 1551
    .restart local v8    # "key":Ljava/lang/Object;, "TK;"
    move-object v12, v11

    #@40
    .line 1552
    .restart local v12    # "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->randomLevel()I

    #@43
    move-result v6

    #@44
    .line 1553
    .restart local v6    # "j":I
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@46
    if-le v6, v14, :cond_5

    #@48
    iget v14, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@4a
    add-int/lit8 v6, v14, 0x1

    #@4c
    .line 1554
    :cond_5
    new-instance v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4e
    const/4 v14, 0x0

    #@4f
    invoke-direct {v13, v8, v12, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@52
    .line 1555
    .restart local v13    # "z":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v13, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@54
    .line 1556
    move-object v0, v13

    #@55
    .line 1557
    if-lez v6, :cond_2

    #@57
    .line 1558
    const/4 v4, 0x0

    #@58
    .line 1559
    .local v4, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    const/4 v3, 0x1

    #@59
    move-object v5, v4

    #@5a
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v2, v1

    #@5b
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_2
    if-gt v3, v6, :cond_1

    #@5d
    .line 1560
    new-instance v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@5f
    const/4 v14, 0x0

    #@60
    invoke-direct {v4, v13, v5, v14}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;)V

    #@63
    .line 1561
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v4, "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@65
    if-le v3, v14, :cond_7

    #@67
    .line 1562
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@69
    iget-object v14, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@6b
    invoke-direct {v1, v14, v2, v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    #@6e
    .line 1564
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@71
    move-result v14

    #@72
    if-ge v3, v14, :cond_6

    #@74
    .line 1565
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v14

    #@78
    check-cast v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@7a
    iput-object v4, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@7c
    .line 1566
    invoke-virtual {v9, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@7f
    .line 1559
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@81
    move-object v5, v4

    #@82
    .end local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move-object v2, v1

    #@83
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_2

    #@84
    .line 1568
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v5    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v4    # "idx":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_6
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@87
    goto :goto_4

    #@88
    .end local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_7
    move-object v1, v2

    #@89
    .end local v2    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .restart local v1    # "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    goto :goto_3
.end method

.method static final toList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2279
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2280
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 2281
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    goto :goto_0

    #@17
    .line 2282
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v2
.end method

.method private tryReduceLevel()V
    .locals 5

    #@0
    .prologue
    .line 1089
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@2
    .line 1092
    .local v2, "h":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    iget v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->level:I

    #@4
    const/4 v4, 0x3

    #@5
    if-le v3, v4, :cond_0

    #@7
    .line 1093
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@9
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@b
    .local v0, "d":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v0, :cond_0

    #@d
    .line 1094
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@f
    check-cast v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@11
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    if-eqz v1, :cond_0

    #@13
    .line 1095
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@15
    if-nez v3, :cond_0

    #@17
    .line 1096
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 1097
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 1098
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    #@22
    move-result v3

    #@23
    .line 1092
    if-eqz v3, :cond_0

    #@25
    .line 1099
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 1100
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->casHead(Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;)Z

    #@2c
    .line 1088
    .end local v0    # "d":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;, "Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex<TK;TV;>;"
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 1501
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 1504
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    move-result-object v0

    #@8
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 1505
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 1506
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    #@10
    .line 1507
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@12
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@15
    .line 1508
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@18
    .line 1504
    :cond_0
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1a
    goto :goto_0

    #@1b
    .line 1511
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1e
    .line 1499
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
    .line 2079
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    move-result-object v0

    #@5
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2087
    const/4 v2, 0x1

    #@2
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    move-result-object v0

    #@6
    .line 2088
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@8
    :goto_0
    return-object v1

    #@9
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@b
    goto :goto_0
.end method

.method public clear()V
    .locals 0

    #@0
    .prologue
    .line 1702
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@3
    .line 1701
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1418
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clone()Ljava/util/concurrent/ConcurrentSkipListMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1422
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@6
    .line 1423
    .local v0, "clone":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->initialize()V

    #@9
    .line 1424
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->buildFromSorted(Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1425
    return-object v0

    #@d
    .line 1426
    .end local v0    # "clone":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    :catch_0
    move-exception v1

    #@e
    .line 1427
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@10
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@13
    throw v2
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
    .line 1930
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "k1":Ljava/lang/Object;, "TK;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    #@2
    .line 652
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v0, :cond_0

    #@4
    .line 653
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 655
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    #@b
    .end local p1    # "k1":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1588
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1655
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 1656
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1657
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@e
    .line 1658
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 1659
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1660
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 1657
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1e
    goto :goto_0

    #@1f
    .line 1662
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v2, 0x0

    #@20
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
    .line 1806
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    #@0
    .prologue
    .line 1799
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1800
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    .line 1801
    .local v7, "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    if-eqz v7, :cond_0

    #@6
    .end local v7    # "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    :goto_0
    return-object v7

    #@7
    .restart local v7    # "dm":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@9
    .line 1802
    const/4 v6, 0x1

    #@a
    move-object v1, p0

    #@b
    move-object v4, v2

    #@c
    move v5, v3

    #@d
    .line 1801
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@10
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@12
    move-object v7, v0

    #@13
    goto :goto_0
.end method

.method final doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "okey"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 1027
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    #@4
    move-result-object v3

    #@5
    .line 1029
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@8
    move-result-object v0

    #@9
    .line 1030
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    .line 1032
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_1

    #@d
    .line 1033
    return-object v7

    #@e
    .line 1034
    :cond_1
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@10
    .line 1035
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    if-ne v4, v6, :cond_0

    #@14
    .line 1037
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@16
    .line 1038
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_2

    #@18
    .line 1039
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@1b
    goto :goto_0

    #@1c
    .line 1042
    :cond_2
    if-eq v5, v4, :cond_0

    #@1e
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@20
    if-eqz v6, :cond_0

    #@22
    .line 1044
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@24
    invoke-interface {v3, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@27
    move-result v1

    #@28
    .line 1045
    .local v1, "c":I
    if-gez v1, :cond_3

    #@2a
    .line 1046
    return-object v7

    #@2b
    .line 1047
    :cond_3
    if-lez v1, :cond_4

    #@2d
    .line 1048
    move-object v0, v4

    #@2e
    .line 1049
    move-object v4, v2

    #@2f
    .line 1050
    goto :goto_1

    #@30
    .line 1052
    :cond_4
    if-eqz p2, :cond_5

    #@32
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_7

    #@38
    .line 1054
    :cond_5
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_0

    #@3e
    .line 1056
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_8

    #@44
    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_8

    #@4a
    .line 1059
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4d
    .line 1060
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@4f
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@51
    if-nez v6, :cond_6

    #@53
    .line 1061
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    #@56
    .line 1063
    :cond_6
    :goto_2
    return-object v5

    #@57
    .line 1053
    :cond_7
    return-object v7

    #@58
    .line 1057
    :cond_8
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5b
    goto :goto_2
.end method

.method doRemoveFirstEntry()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 1127
    :cond_0
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@3
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    .line 1128
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 1129
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    #@9
    .line 1130
    return-object v5

    #@a
    .line 1131
    :cond_1
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@c
    .line 1132
    .local v1, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@e
    if-ne v2, v4, :cond_0

    #@10
    .line 1134
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@12
    .line 1135
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_2

    #@14
    .line 1136
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@17
    goto :goto_0

    #@18
    .line 1139
    :cond_2
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 1141
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_3

    #@24
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 1143
    :goto_1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clearIndexToFirst()V

    #@2d
    .line 1144
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@2f
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@31
    invoke-direct {v4, v5, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@34
    return-object v4

    #@35
    .line 1142
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@38
    goto :goto_1
.end method

.method doRemoveLastEntry()Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 1254
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessorOfLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 1255
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 1256
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v4, :cond_2

    #@9
    .line 1257
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 1258
    return-object v7

    #@10
    .line 1273
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local v5, "v":Ljava/lang/Object;
    :cond_1
    if-eqz v2, :cond_4

    #@12
    .line 1274
    move-object v0, v4

    #@13
    .line 1275
    move-object v4, v2

    #@14
    .line 1263
    .end local v2    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;
    :cond_2
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@16
    .line 1264
    .restart local v2    # "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@18
    if-ne v4, v6, :cond_0

    #@1a
    .line 1266
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1c
    .line 1267
    .restart local v5    # "v":Ljava/lang/Object;
    if-nez v5, :cond_3

    #@1e
    .line 1268
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@21
    goto :goto_0

    #@22
    .line 1271
    :cond_3
    if-eq v5, v4, :cond_0

    #@24
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@26
    if-nez v6, :cond_1

    #@28
    goto :goto_0

    #@29
    .line 1278
    :cond_4
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_0

    #@2f
    .line 1280
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@31
    .line 1281
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    #@34
    move-result-object v1

    #@35
    .line 1282
    .local v1, "ck":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->appendMarker(Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_6

    #@3b
    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casNext(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_6

    #@41
    .line 1285
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@44
    .line 1286
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@46
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@48
    if-nez v6, :cond_5

    #@4a
    .line 1287
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tryReduceLevel()V

    #@4d
    .line 1289
    :cond_5
    :goto_1
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4f
    invoke-direct {v6, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@52
    return-object v6

    #@53
    .line 1283
    :cond_6
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@56
    goto :goto_1
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
    .line 2266
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

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
    .line 1795
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@2
    .line 1796
    .local v0, "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@7
    .end local v0    # "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@c
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1824
    if-ne p1, p0, :cond_0

    #@4
    .line 1825
    return v11

    #@5
    .line 1826
    :cond_0
    instance-of v8, p1, Ljava/util/Map;

    #@7
    if-nez v8, :cond_1

    #@9
    .line 1827
    return v10

    #@a
    :cond_1
    move-object v4, p1

    #@b
    .line 1828
    check-cast v4, Ljava/util/Map;

    #@d
    .line 1830
    .local v4, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v8

    #@11
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_3

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/Map$Entry;

    #@21
    .line 1831
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v9

    #@29
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v8

    #@31
    if-nez v8, :cond_2

    #@33
    .line 1832
    return v10

    #@34
    .line 1833
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@37
    move-result-object v8

    #@38
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v2

    #@3c
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_6

    #@42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Ljava/util/Map$Entry;

    #@48
    .line 1834
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    .line 1835
    .local v3, "k":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4f
    move-result-object v7

    #@50
    .line 1836
    .local v7, "v":Ljava/lang/Object;
    if-eqz v3, :cond_4

    #@52
    if-nez v7, :cond_5

    #@54
    .line 1837
    :cond_4
    return v10

    #@55
    .line 1836
    :cond_5
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    move-result v8

    #@5d
    if-eqz v8, :cond_4

    #@5f
    goto :goto_0

    #@60
    .line 1839
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "k":Ljava/lang/Object;
    .end local v7    # "v":Ljava/lang/Object;
    :cond_6
    return v11

    #@61
    .line 1842
    .end local v2    # "e$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    #@62
    .line 1843
    .local v6, "unused":Ljava/lang/NullPointerException;
    return v10

    #@63
    .line 1840
    .end local v6    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    #@64
    .line 1841
    .local v5, "unused":Ljava/lang/ClassCastException;
    return v10
.end method

.method findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 1111
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@3
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    .line 1112
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .line 1113
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@9
    .line 1114
    return-object v3

    #@a
    .line 1115
    :cond_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1116
    return-object v1

    #@f
    .line 1117
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@14
    goto :goto_0
.end method

.method findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 1180
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@3
    .line 1183
    .local v4, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@5
    .local v5, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v5, :cond_1

    #@7
    .line 1184
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->indexesDeletedNode()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_0

    #@d
    .line 1185
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->unlink(Ljava/util/concurrent/ConcurrentSkipListMap$Index;)Z

    #@10
    .line 1186
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@12
    goto :goto_0

    #@13
    .line 1189
    :cond_0
    move-object v4, v5

    #@14
    goto :goto_0

    #@15
    .line 1190
    :cond_1
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@17
    .local v1, "d":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_2

    #@19
    .line 1191
    move-object v4, v1

    #@1a
    goto :goto_0

    #@1b
    .line 1193
    :cond_2
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1d
    .line 1194
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1f
    .line 1196
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v3, :cond_4

    #@21
    .line 1197
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_3

    #@27
    move-object v0, v7

    #@28
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3
    return-object v0

    #@29
    .line 1198
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2b
    .line 1199
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2d
    if-eq v3, v8, :cond_6

    #@2f
    .line 1211
    :cond_5
    :goto_2
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@31
    goto :goto_0

    #@32
    .line 1201
    :cond_6
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@34
    .line 1202
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_7

    #@36
    .line 1203
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@39
    goto :goto_2

    #@3a
    .line 1206
    :cond_7
    if-eq v6, v3, :cond_5

    #@3c
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@3e
    if-eqz v8, :cond_5

    #@40
    .line 1208
    move-object v0, v3

    #@41
    .line 1209
    move-object v3, v2

    #@42
    goto :goto_1
.end method

.method findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 8
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "kkey":Ljava/lang/Object;, "TK;"
    const/4 v6, 0x0

    #@1
    .line 1309
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    #@4
    move-result-object v3

    #@5
    .line 1311
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->findPredecessor(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@8
    move-result-object v0

    #@9
    .line 1312
    .local v0, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@b
    .line 1314
    .local v4, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_1
    if-nez v4, :cond_3

    #@d
    .line 1315
    and-int/lit8 v7, p2, 0x2

    #@f
    if-eqz v7, :cond_1

    #@11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_2

    #@17
    :cond_1
    move-object v0, v6

    #@18
    .end local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    return-object v0

    #@19
    .line 1316
    .restart local v0    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_3
    iget-object v2, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1b
    .line 1317
    .local v2, "f":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1d
    if-ne v4, v7, :cond_0

    #@1f
    .line 1319
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@21
    .line 1320
    .local v5, "v":Ljava/lang/Object;
    if-nez v5, :cond_4

    #@23
    .line 1321
    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->helpDelete(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@26
    goto :goto_0

    #@27
    .line 1324
    :cond_4
    if-eq v5, v4, :cond_0

    #@29
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@2b
    if-eqz v7, :cond_0

    #@2d
    .line 1326
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@2f
    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@32
    move-result v1

    #@33
    .line 1327
    .local v1, "c":I
    if-nez v1, :cond_6

    #@35
    and-int/lit8 v7, p2, 0x1

    #@37
    if-eqz v7, :cond_6

    #@39
    .line 1329
    :cond_5
    return-object v4

    #@3a
    .line 1328
    :cond_6
    if-gez v1, :cond_7

    #@3c
    and-int/lit8 v7, p2, 0x2

    #@3e
    if-eqz v7, :cond_5

    #@40
    .line 1330
    :cond_7
    if-gtz v1, :cond_9

    #@42
    and-int/lit8 v7, p2, 0x2

    #@44
    if-eqz v7, :cond_9

    #@46
    .line 1331
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->isBaseHeader()Z

    #@49
    move-result v7

    #@4a
    if-eqz v7, :cond_8

    #@4c
    :goto_2
    return-object v6

    #@4d
    :cond_8
    move-object v6, v0

    #@4e
    goto :goto_2

    #@4f
    .line 1332
    :cond_9
    move-object v0, v4

    #@50
    .line 1333
    move-object v4, v2

    #@51
    goto :goto_1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2123
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 2124
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    #@7
    .line 2125
    return-object v2

    #@8
    .line 2126
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    .line 2127
    .local v0, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@e
    .line 2128
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1937
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    .line 1938
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@6
    .line 1939
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 1940
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@e
    return-object v1
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
    .line 2056
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    move-result-object v0

    #@5
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2065
    const/4 v2, 0x3

    #@2
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    move-result-object v0

    #@6
    .line 2066
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@8
    :goto_0
    return-object v1

    #@9
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@b
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 1606
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->doGet(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 3
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    #@1
    .line 1346
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 1347
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    #@7
    .line 1348
    return-object v2

    #@8
    .line 1349
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    .line 1350
    .local v0, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@e
    .line 1351
    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "toKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 1973
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

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
    .line 2008
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2009
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1975
    if-nez p1, :cond_0

    #@4
    .line 1976
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1977
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@c
    move-object v1, p0

    #@d
    move-object v4, p1

    #@e
    move v5, p2

    #@f
    move v6, v3

    #@10
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@13
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
    .line 2102
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    move-result-object v0

    #@5
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2111
    const/4 v2, 0x0

    #@2
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    move-result-object v0

    #@6
    .line 2112
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@8
    :goto_0
    return-object v1

    #@9
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@b
    goto :goto_0
.end method

.method inHalfOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "least":Ljava/lang/Object;, "TK;"
    .local p3, "fence":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 664
    if-nez p1, :cond_0

    #@4
    .line 665
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 666
    :cond_0
    if-eqz p2, :cond_1

    #@c
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@f
    move-result v2

    #@10
    if-ltz v2, :cond_3

    #@12
    .line 667
    :cond_1
    if-eqz p3, :cond_2

    #@14
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@17
    move-result v2

    #@18
    if-gez v2, :cond_4

    #@1a
    :cond_2
    :goto_0
    move v1, v0

    #@1b
    .line 666
    :cond_3
    return v1

    #@1c
    :cond_4
    move v0, v1

    #@1d
    .line 667
    goto :goto_0
.end method

.method inOpenRange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "least":Ljava/lang/Object;, "TK;"
    .local p3, "fence":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 675
    if-nez p1, :cond_0

    #@4
    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 677
    :cond_0
    if-eqz p2, :cond_1

    #@c
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@f
    move-result v2

    #@10
    if-ltz v2, :cond_3

    #@12
    .line 678
    :cond_1
    if-eqz p3, :cond_2

    #@14
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@17
    move-result v2

    #@18
    if-gtz v2, :cond_4

    #@1a
    :cond_2
    :goto_0
    move v1, v0

    #@1b
    .line 677
    :cond_3
    return v1

    #@1c
    :cond_4
    move v0, v1

    #@1d
    .line 678
    goto :goto_0
.end method

.method final initialize()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 343
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@3
    .line 344
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    #@5
    .line 345
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@7
    .line 346
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@9
    .line 352
    invoke-static {}, Ljava/lang/Math;->randomIntInternal()I

    #@c
    move-result v0

    #@d
    or-int/lit16 v0, v0, 0x100

    #@f
    iput v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->randomSeed:I

    #@11
    .line 354
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@13
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@15
    sget-object v2, Ljava/util/concurrent/ConcurrentSkipListMap;->BASE_HEADER:Ljava/lang/Object;

    #@17
    invoke-direct {v1, v3, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V

    #@1a
    .line 355
    const/4 v2, 0x1

    #@1b
    .line 354
    invoke-direct {v0, v1, v3, v3, v2}, Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Index;I)V

    #@1e
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->head:Ljava/util/concurrent/ConcurrentSkipListMap$HeadIndex;

    #@20
    .line 342
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1695
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

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
    .line 2258
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

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
    .line 1738
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    .line 1739
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
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@c
    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 1737
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet()Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2140
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@4
    move-result-object v1

    #@5
    .line 2141
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_1

    #@7
    .line 2142
    return-object v2

    #@8
    .line 2143
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    .line 2144
    .local v0, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@e
    .line 2145
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1947
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@3
    move-result-object v0

    #@4
    .line 1948
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@6
    .line 1949
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 1950
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@e
    return-object v1
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
    .line 2033
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->getNear(Ljava/lang/Object;I)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@4
    move-result-object v0

    #@5
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
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 2041
    const/4 v2, 0x2

    #@2
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;I)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    move-result-object v0

    #@6
    .line 2042
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    #@8
    :goto_0
    return-object v1

    #@9
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@b
    goto :goto_0
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
    .line 1743
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    #@2
    .line 1744
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
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->keySet:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

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
    .line 2156
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveFirstEntry()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
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
    .line 2166
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemoveLastEntry()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
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
    .line 1623
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    #@2
    .line 1624
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1625
    :cond_0
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
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
    .line 1859
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    #@2
    .line 1860
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1861
    :cond_0
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 1639
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1872
    if-nez p1, :cond_0

    #@3
    .line 1873
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1874
    :cond_0
    if-nez p2, :cond_1

    #@b
    .line 1875
    return v0

    #@c
    .line 1876
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_2

    #@12
    const/4 v0, 0x1

    #@13
    :cond_2
    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    #@1
    .line 1914
    if-nez p2, :cond_0

    #@3
    .line 1915
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 1916
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    #@c
    move-result-object v0

    #@d
    .line 1918
    .local v0, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@10
    move-result-object v1

    #@11
    .line 1919
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_2

    #@13
    .line 1920
    return-object v4

    #@14
    .line 1921
    :cond_2
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@16
    .line 1922
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@18
    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 1923
    return-object v2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    #@1
    .line 1887
    if-eqz p2, :cond_0

    #@3
    if-nez p3, :cond_1

    #@5
    .line 1888
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v3

    #@b
    .line 1889
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    #@e
    move-result-object v0

    #@f
    .line 1891
    .local v0, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_2
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNode(Ljava/lang/Comparable;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@12
    move-result-object v1

    #@13
    .line 1892
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v1, :cond_3

    #@15
    .line 1893
    return v4

    #@16
    .line 1894
    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@18
    .line 1895
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_2

    #@1a
    .line 1896
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_4

    #@20
    .line 1897
    return v4

    #@21
    .line 1898
    :cond_4
    invoke-virtual {v1, v2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->casValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 1899
    const/4 v3, 0x1

    #@28
    return v3
.end method

.method public size()I
    .locals 6

    #@0
    .prologue
    .line 1682
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    #@2
    .line 1683
    .local v0, "count":J
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@5
    move-result-object v2

    #@6
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    #@8
    .line 1684
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1685
    const-wide/16 v4, 0x1

    #@10
    add-long/2addr v0, v4

    #@11
    .line 1683
    :cond_0
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@13
    goto :goto_0

    #@14
    .line 1687
    :cond_1
    const-wide/32 v4, 0x7fffffff

    #@17
    cmp-long v3, v0, v4

    #@19
    if-ltz v3, :cond_2

    #@1b
    const v3, 0x7fffffff

    #@1e
    :goto_1
    return v3

    #@1f
    :cond_2
    long-to-int v3, v0

    #@20
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
    .line 1958
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

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
    .line 1999
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2000
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1962
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 1963
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1964
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@c
    .line 1965
    const/4 v6, 0x0

    #@d
    move-object v1, p0

    #@e
    move-object v2, p1

    #@f
    move v3, p2

    #@10
    move-object v4, p3

    #@11
    move v5, p4

    #@12
    .line 1964
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@15
    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z

    #@0
    .prologue
    .line 1986
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

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
    .line 2017
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2018
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1988
    if-nez p1, :cond_0

    #@4
    .line 1989
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1990
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@c
    move-object v1, p0

    #@d
    move-object v2, p1

    #@e
    move v3, p2

    #@f
    move v6, v5

    #@10
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    #@13
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
    .line 2262
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

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
    .line 1766
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@2
    .line 1767
    .local v0, "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@7
    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    #@a
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap;->values:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    #@c
    goto :goto_0
.end method
