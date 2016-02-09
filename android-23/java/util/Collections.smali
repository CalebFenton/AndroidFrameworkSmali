.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CopiesList;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$EmptyMap;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$ReverseComparator2;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$UnmodifiableCollection;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableSortedSet;,
        Ljava/util/Collections$SetFromMap;,
        Ljava/util/Collections$AsLIFOQueue;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$CheckedListIterator;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$1;,
        Ljava/util/Collections$2;
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_LIST:Ljava/util/List;

.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SET:Ljava/util/Set;


# direct methods
.method static synthetic -get0()Ljava/util/Iterator;
    .locals 1

    #@0
    sget-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 35
    new-instance v0, Ljava/util/Collections$1;

    #@3
    invoke-direct {v0}, Ljava/util/Collections$1;-><init>()V

    #@6
    sput-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    #@8
    .line 49
    new-instance v0, Ljava/util/Collections$2;

    #@a
    invoke-direct {v0}, Ljava/util/Collections$2;-><init>()V

    #@d
    sput-object v0, Ljava/util/Collections;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    #@f
    .line 172
    new-instance v0, Ljava/util/Collections$EmptyList;

    #@11
    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections$EmptyList;)V

    #@14
    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@16
    .line 178
    new-instance v0, Ljava/util/Collections$EmptySet;

    #@18
    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections$EmptySet;)V

    #@1b
    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@1d
    .line 184
    new-instance v0, Ljava/util/Collections$EmptyMap;

    #@1f
    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections$EmptyMap;)V

    #@22
    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@24
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;[TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    #@0
    .prologue
    .line 2603
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@1
    .line 2604
    .local v1, "modified":Z
    const/4 v0, 0x0

    #@2
    .end local v1    # "modified":Z
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@3
    if-ge v0, v2, :cond_0

    #@5
    .line 2605
    aget-object v2, p1, v0

    #@7
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    or-int/2addr v1, v2

    #@c
    .line 2604
    .local v1, "modified":Z
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 2607
    .end local v1    # "modified":Z
    :cond_0
    return v1
.end method

.method public static asLifoQueue(Ljava/util/Deque;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2675
    .local p0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    new-instance v0, Ljava/util/Collections$AsLIFOQueue;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$AsLIFOQueue;-><init>(Ljava/util/Deque;)V

    #@5
    return-object v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1418
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 1419
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "list == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 1421
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 1422
    const/4 v5, -0x1

    #@12
    return v5

    #@13
    .line 1426
    :cond_1
    instance-of v5, p0, Ljava/util/RandomAccess;

    #@15
    if-nez v5, :cond_5

    #@17
    .line 1427
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@1a
    move-result-object v1

    #@1b
    .line 1428
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_4

    #@21
    .line 1429
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Ljava/lang/Comparable;

    #@27
    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@2a
    move-result v4

    #@2b
    .line 1430
    .local v4, "result":I
    if-nez v4, :cond_3

    #@2d
    .line 1431
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    #@30
    move-result v5

    #@31
    return v5

    #@32
    .line 1432
    :cond_3
    if-lez v4, :cond_2

    #@34
    .line 1433
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    #@37
    move-result v5

    #@38
    neg-int v5, v5

    #@39
    add-int/lit8 v5, v5, -0x1

    #@3b
    return v5

    #@3c
    .line 1436
    .end local v4    # "result":I
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3f
    move-result v5

    #@40
    neg-int v5, v5

    #@41
    add-int/lit8 v5, v5, -0x1

    #@43
    return v5

    #@44
    .line 1439
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :cond_5
    const/4 v2, 0x0

    #@45
    .local v2, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@48
    move-result v3

    #@49
    .local v3, "mid":I
    add-int/lit8 v0, v3, -0x1

    #@4b
    .local v0, "high":I
    const/4 v4, 0x1

    #@4c
    .line 1440
    .restart local v4    # "result":I
    :goto_0
    if-gt v2, v0, :cond_8

    #@4e
    .line 1441
    add-int v5, v2, v0

    #@50
    ushr-int/lit8 v3, v5, 0x1

    #@52
    .line 1442
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v5

    #@56
    check-cast v5, Ljava/lang/Comparable;

    #@58
    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@5b
    move-result v4

    #@5c
    .line 1443
    if-gez v4, :cond_6

    #@5e
    .line 1444
    add-int/lit8 v2, v3, 0x1

    #@60
    goto :goto_0

    #@61
    .line 1445
    :cond_6
    if-nez v4, :cond_7

    #@63
    .line 1446
    return v3

    #@64
    .line 1448
    :cond_7
    add-int/lit8 v0, v3, -0x1

    #@66
    goto :goto_0

    #@67
    .line 1451
    :cond_8
    neg-int v6, v3

    #@68
    if-lez v4, :cond_9

    #@6a
    const/4 v5, 0x1

    #@6b
    :goto_1
    sub-int v5, v6, v5

    #@6d
    return v5

    #@6e
    :cond_9
    const/4 v5, 0x2

    #@6f
    goto :goto_1
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1477
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p2, :cond_0

    #@2
    .line 1478
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@5
    move-result v5

    #@6
    return v5

    #@7
    .line 1481
    :cond_0
    instance-of v5, p0, Ljava/util/RandomAccess;

    #@9
    if-nez v5, :cond_4

    #@b
    .line 1482
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@e
    move-result-object v1

    #@f
    .line 1483
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_3

    #@15
    .line 1484
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1c
    move-result v4

    #@1d
    .line 1485
    .local v4, "result":I
    if-nez v4, :cond_2

    #@1f
    .line 1486
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    #@22
    move-result v5

    #@23
    return v5

    #@24
    .line 1487
    :cond_2
    if-lez v4, :cond_1

    #@26
    .line 1488
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    #@29
    move-result v5

    #@2a
    neg-int v5, v5

    #@2b
    add-int/lit8 v5, v5, -0x1

    #@2d
    return v5

    #@2e
    .line 1491
    .end local v4    # "result":I
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@31
    move-result v5

    #@32
    neg-int v5, v5

    #@33
    add-int/lit8 v5, v5, -0x1

    #@35
    return v5

    #@36
    .line 1494
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :cond_4
    const/4 v2, 0x0

    #@37
    .local v2, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3a
    move-result v3

    #@3b
    .local v3, "mid":I
    add-int/lit8 v0, v3, -0x1

    #@3d
    .local v0, "high":I
    const/4 v4, 0x1

    #@3e
    .line 1495
    .restart local v4    # "result":I
    :goto_0
    if-gt v2, v0, :cond_7

    #@40
    .line 1496
    add-int v5, v2, v0

    #@42
    ushr-int/lit8 v3, v5, 0x1

    #@44
    .line 1497
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@4b
    move-result v4

    #@4c
    .line 1498
    if-gez v4, :cond_5

    #@4e
    .line 1499
    add-int/lit8 v2, v3, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1500
    :cond_5
    if-nez v4, :cond_6

    #@53
    .line 1501
    return v3

    #@54
    .line 1503
    :cond_6
    add-int/lit8 v0, v3, -0x1

    #@56
    goto :goto_0

    #@57
    .line 1506
    :cond_7
    neg-int v6, v3

    #@58
    if-lez v4, :cond_8

    #@5a
    const/4 v5, 0x1

    #@5b
    :goto_1
    sub-int v5, v6, v5

    #@5d
    return v5

    #@5e
    :cond_8
    const/4 v5, 0x2

    #@5f
    goto :goto_1
.end method

.method static checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2649
    .local p0, "obj":Ljava/lang/Object;, "TE;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 2653
    :cond_0
    return-object p0

    #@9
    .line 2650
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Attempt to insert element of type "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 2651
    const-string/jumbo v2, " into collection of type "

    #@22
    .line 2650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0
.end method

.method public static checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2490
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedCollection;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method public static checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2525
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2526
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    #@9
    return-object v0

    #@a
    .line 2528
    :cond_0
    new-instance v0, Ljava/util/Collections$CheckedList;

    #@c
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    #@f
    return-object v0
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2509
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collections$CheckedMap;)V

    #@6
    return-object v0
.end method

.method public static checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2544
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSet;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method public static checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2563
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method public static checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2580
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedSet;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method public static copy(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1526
    .local p0, "destination":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "source":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v3

    #@4
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    if-ge v3, v4, :cond_0

    #@a
    .line 1527
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "destination.size() < source.size(): "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    .line 1528
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@1b
    move-result v5

    #@1c
    .line 1527
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 1528
    const-string/jumbo v5, " < "

    #@23
    .line 1527
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 1528
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@2a
    move-result v5

    #@2b
    .line 1527
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@36
    throw v3

    #@37
    .line 1530
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v2

    #@3b
    .line 1531
    .local v2, "srcIt":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@3e
    move-result-object v0

    #@3f
    .line 1532
    .local v0, "destIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_1

    #@45
    .line 1534
    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 1540
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@4f
    goto :goto_0

    #@50
    .line 1535
    :catch_0
    move-exception v1

    #@51
    .line 1537
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@53
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "Source size "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@62
    move-result v5

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    .line 1538
    const-string/jumbo v5, " does not fit into destination"

    #@6a
    .line 1537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@75
    throw v3

    #@76
    .line 1525
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    return-void
.end method

.method public static disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2623
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p0, Ljava/util/Set;

    #@2
    if-eqz v2, :cond_0

    #@4
    instance-of v2, p1, Ljava/util/Set;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 2624
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@b
    move-result v2

    #@c
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@f
    move-result v3

    #@10
    if-le v2, v3, :cond_2

    #@12
    .line 2625
    :cond_1
    move-object v1, p0

    #@13
    .line 2626
    .local v1, "tmp":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object p0, p1

    #@14
    .line 2627
    move-object p1, v1

    #@15
    .line 2629
    .end local v1    # "tmp":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v0

    #@19
    .line 2630
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_4

    #@1f
    .line 2631
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_3

    #@29
    .line 2632
    const/4 v2, 0x0

    #@2a
    return v2

    #@2b
    .line 2635
    :cond_4
    const/4 v2, 0x1

    #@2c
    return v2
.end method

.method public static emptyEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2456
    sget-object v0, Ljava/util/Collections;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    #@2
    return-object v0
.end method

.method public static emptyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2465
    sget-object v0, Ljava/util/Collections;->EMPTY_ITERATOR:Ljava/util/Iterator;

    #@2
    return-object v0
.end method

.method public static final emptyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2423
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public static emptyListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2473
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final emptyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2447
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public static final emptySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2435
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public static enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1552
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v0, p0

    #@1
    .line 1553
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v1, Ljava/util/Collections$3;

    #@3
    invoke-direct {v1, v0}, Ljava/util/Collections$3;-><init>(Ljava/util/Collection;)V

    #@6
    return-object v1
.end method

.method public static fill(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1577
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v0

    #@4
    .line 1578
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1579
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@d
    .line 1580
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@10
    goto :goto_0

    #@11
    .line 1576
    :cond_0
    return-void
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 2397
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_0

    #@2
    .line 2398
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "c == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 2400
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 2401
    const/4 v3, 0x0

    #@12
    return v3

    #@13
    .line 2403
    :cond_1
    const/4 v2, 0x0

    #@14
    .line 2404
    .local v2, "result":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .line 2405
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_4

    #@1e
    .line 2406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    .line 2407
    .local v0, "e":Ljava/lang/Object;
    if-nez p1, :cond_3

    #@24
    if-nez v0, :cond_2

    #@26
    .line 2408
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2407
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    goto :goto_1

    #@30
    .line 2411
    .end local v0    # "e":Ljava/lang/Object;
    :cond_4
    return v2
.end method

.method public static indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "sublist":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v8, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    .line 2046
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@5
    move-result v5

    #@6
    .line 2047
    .local v5, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@9
    move-result v7

    #@a
    .line 2049
    .local v7, "sublistSize":I
    if-le v7, v5, :cond_0

    #@c
    .line 2050
    return v9

    #@d
    .line 2053
    :cond_0
    if-nez v7, :cond_1

    #@f
    .line 2054
    return v8

    #@10
    .line 2058
    :cond_1
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    .line 2059
    .local v2, "firstObj":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@17
    move-result v3

    #@18
    .line 2060
    .local v3, "index":I
    if-ne v3, v9, :cond_3

    #@1a
    .line 2061
    return v9

    #@1b
    .line 2094
    .local v4, "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@1d
    .line 2064
    .end local v4    # "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_3
    if-ge v3, v5, :cond_a

    #@1f
    sub-int v8, v5, v3

    #@21
    if-lt v8, v7, :cond_a

    #@23
    .line 2065
    invoke-interface {p0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@26
    move-result-object v4

    #@27
    .line 2067
    .restart local v4    # "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    if-nez v2, :cond_5

    #@29
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v8

    #@2d
    if-nez v8, :cond_2

    #@2f
    .line 2072
    :goto_0
    const/4 v8, 0x1

    #@30
    invoke-interface {p1, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@33
    move-result-object v6

    #@34
    .line 2073
    .local v6, "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    #@35
    .line 2074
    .local v0, "difFound":Z
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_8

    #@3b
    .line 2075
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    .line 2076
    .local v1, "element":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    #@42
    move-result v8

    #@43
    if-nez v8, :cond_6

    #@45
    .line 2077
    return v9

    #@46
    .line 2068
    .end local v0    # "difFound":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v8

    #@4a
    .line 2067
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_2

    #@50
    goto :goto_0

    #@51
    .line 2079
    .restart local v0    # "difFound":Z
    .restart local v1    # "element":Ljava/lang/Object;
    .restart local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_6
    if-nez v1, :cond_9

    #@53
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v8

    #@57
    if-eqz v8, :cond_4

    #@59
    .line 2081
    :cond_7
    const/4 v0, 0x1

    #@5a
    .line 2087
    .end local v1    # "element":Ljava/lang/Object;
    :cond_8
    if-nez v0, :cond_2

    #@5c
    .line 2088
    return v3

    #@5d
    .line 2080
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_9
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v8

    #@61
    .line 2079
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v8

    #@65
    if-eqz v8, :cond_7

    #@67
    goto :goto_1

    #@68
    .line 2096
    .end local v0    # "difFound":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v4    # "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_a
    return v9
.end method

.method public static lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "sublist":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v9, -0x1

    #@1
    .line 2113
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v7

    #@5
    .line 2114
    .local v7, "sublistSize":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@8
    move-result v5

    #@9
    .line 2116
    .local v5, "size":I
    if-le v7, v5, :cond_0

    #@b
    .line 2117
    return v9

    #@c
    .line 2120
    :cond_0
    if-nez v7, :cond_1

    #@e
    .line 2121
    return v5

    #@f
    .line 2125
    :cond_1
    add-int/lit8 v8, v7, -0x1

    #@11
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    .line 2126
    .local v3, "lastObj":Ljava/lang/Object;
    invoke-interface {p0, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    #@18
    move-result v2

    #@19
    .line 2128
    .local v2, "index":I
    :goto_0
    if-le v2, v9, :cond_a

    #@1b
    add-int/lit8 v8, v2, 0x1

    #@1d
    if-lt v8, v7, :cond_a

    #@1f
    .line 2129
    add-int/lit8 v8, v2, 0x1

    #@21
    invoke-interface {p0, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@24
    move-result-object v4

    #@25
    .line 2131
    .local v4, "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    if-nez v3, :cond_4

    #@27
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@2a
    move-result-object v8

    #@2b
    if-nez v8, :cond_5

    #@2d
    .line 2136
    :cond_2
    add-int/lit8 v8, v7, -0x1

    #@2f
    .line 2135
    invoke-interface {p1, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@32
    move-result-object v6

    #@33
    .line 2137
    .local v6, "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    #@34
    .line 2138
    .local v0, "difFound":Z
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    #@37
    move-result v8

    #@38
    if-eqz v8, :cond_8

    #@3a
    .line 2139
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    .line 2140
    .local v1, "element":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    #@41
    move-result v8

    #@42
    if-nez v8, :cond_6

    #@44
    .line 2141
    return v9

    #@45
    .line 2132
    .end local v0    # "difFound":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@48
    move-result-object v8

    #@49
    .line 2131
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v8

    #@4d
    if-nez v8, :cond_2

    #@4f
    .line 2158
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@51
    goto :goto_0

    #@52
    .line 2143
    .restart local v0    # "difFound":Z
    .restart local v1    # "element":Ljava/lang/Object;
    .restart local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_6
    if-nez v1, :cond_9

    #@54
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@57
    move-result-object v8

    #@58
    if-eqz v8, :cond_3

    #@5a
    .line 2145
    :cond_7
    const/4 v0, 0x1

    #@5b
    .line 2151
    .end local v1    # "element":Ljava/lang/Object;
    :cond_8
    if-nez v0, :cond_5

    #@5d
    .line 2152
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    #@60
    move-result v8

    #@61
    return v8

    #@62
    .line 2144
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_9
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v8

    #@6a
    if-eqz v8, :cond_7

    #@6c
    goto :goto_1

    #@6d
    .line 2160
    .end local v0    # "difFound":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v4    # "listIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v6    # "sublistIt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_a
    return v9
.end method

.method public static list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2173
    .local p0, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2174
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2175
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    goto :goto_0

    #@13
    .line 2177
    :cond_0
    return-object v0
.end method

.method public static max(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1597
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 1598
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 1599
    .local v1, "max":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 1600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    .line 1601
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@15
    move-result v3

    #@16
    if-gez v3, :cond_0

    #@18
    .line 1602
    move-object v1, v2

    #@19
    goto :goto_0

    #@1a
    .line 1605
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v1
.end method

.method public static max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1623
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 1625
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    .line 1626
    .local v3, "result":Ljava/lang/Object;, "TT;"
    return-object v3

    #@7
    .line 1629
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 1630
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 1631
    .local v1, "max":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    .line 1632
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    .line 1633
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1c
    move-result v4

    #@1d
    if-gez v4, :cond_1

    #@1f
    .line 1634
    move-object v1, v2

    #@20
    goto :goto_0

    #@21
    .line 1637
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v1
.end method

.method public static min(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1653
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 1654
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 1655
    .local v1, "min":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 1656
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    .line 1657
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@15
    move-result v3

    #@16
    if-lez v3, :cond_0

    #@18
    .line 1658
    move-object v1, v2

    #@19
    goto :goto_0

    #@1a
    .line 1661
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v1
.end method

.method public static min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1679
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 1681
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    .line 1682
    .local v3, "result":Ljava/lang/Object;, "TT;"
    return-object v3

    #@7
    .line 1685
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 1686
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 1687
    .local v1, "min":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    .line 1688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    .line 1689
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1c
    move-result v4

    #@1d
    if-lez v4, :cond_1

    #@1f
    .line 1690
    move-object v1, v2

    #@20
    goto :goto_0

    #@21
    .line 1693
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v1
.end method

.method public static nCopies(ILjava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1709
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$CopiesList;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2663
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2664
    new-instance v0, Ljava/util/Collections$SetFromMap;

    #@8
    invoke-direct {v0, p0}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    #@b
    return-object v0

    #@c
    .line 2666
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "map not empty"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public static replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1965
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "obj2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    .line 1967
    .local v0, "found":Z
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@4
    move-result v1

    #@5
    .local v1, "index":I
    const/4 v2, -0x1

    #@6
    if-le v1, v2, :cond_0

    #@8
    .line 1968
    const/4 v0, 0x1

    #@9
    .line 1969
    invoke-interface {p0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@c
    goto :goto_0

    #@d
    .line 1971
    :cond_0
    return v0
.end method

.method public static reverse(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1723
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v5

    #@4
    .line 1724
    .local v5, "size":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@7
    move-result-object v2

    #@8
    .line 1725
    .local v2, "front":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Object;>;"
    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@b
    move-result-object v0

    #@c
    .line 1727
    .local v0, "back":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    div-int/lit8 v6, v5, 0x2

    #@f
    if-ge v4, v6, :cond_0

    #@11
    .line 1728
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    .line 1729
    .local v3, "frontNext":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 1730
    .local v1, "backPrev":Ljava/lang/Object;
    invoke-interface {v2, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@1c
    .line 1731
    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@1f
    .line 1727
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1722
    .end local v1    # "backPrev":Ljava/lang/Object;
    .end local v3    # "frontNext":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1743
    invoke-static {}, Ljava/util/Collections$ReverseComparator;->-get0()Ljava/util/Collections$ReverseComparator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1760
    .local p0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 1761
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 1763
    :cond_0
    instance-of v0, p0, Ljava/util/Collections$ReverseComparator2;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1764
    check-cast p0, Ljava/util/Collections$ReverseComparator2;

    #@d
    .end local p0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0}, Ljava/util/Collections$ReverseComparator2;->-get0(Ljava/util/Collections$ReverseComparator2;)Ljava/util/Comparator;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 1766
    .restart local p0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_1
    new-instance v0, Ljava/util/Collections$ReverseComparator2;

    #@14
    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparator2;-><init>(Ljava/util/Comparator;)V

    #@17
    return-object v0
.end method

.method public static rotate(Ljava/util/List;I)V
    .locals 12
    .param p1, "dist"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v11, 0x0

    #@1
    .line 1989
    move-object v4, p0

    #@2
    .line 1990
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@5
    move-result v6

    #@6
    .line 1993
    .local v6, "size":I
    if-nez v6, :cond_0

    #@8
    .line 1994
    return-void

    #@9
    .line 1999
    :cond_0
    if-lez p1, :cond_2

    #@b
    .line 2000
    rem-int v5, p1, v6

    #@d
    .line 2005
    .local v5, "normdist":I
    :goto_0
    if-eqz v5, :cond_1

    #@f
    if-ne v5, v6, :cond_3

    #@11
    .line 2006
    :cond_1
    return-void

    #@12
    .line 2002
    .end local v5    # "normdist":I
    :cond_2
    rem-int v10, p1, v6

    #@14
    mul-int/lit8 v10, v10, -0x1

    #@16
    sub-int v5, v6, v10

    #@18
    .restart local v5    # "normdist":I
    goto :goto_0

    #@19
    .line 2009
    :cond_3
    instance-of v10, v4, Ljava/util/RandomAccess;

    #@1b
    if-eqz v10, :cond_5

    #@1d
    .line 2012
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    .line 2013
    .local v9, "temp":Ljava/lang/Object;
    const/4 v3, 0x0

    #@22
    .local v3, "index":I
    const/4 v0, 0x0

    #@23
    .line 2014
    .local v0, "beginIndex":I
    const/4 v2, 0x0

    #@24
    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_6

    #@26
    .line 2015
    add-int v10, v3, v5

    #@28
    rem-int v3, v10, v6

    #@2a
    .line 2016
    invoke-interface {v4, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v9

    #@2e
    .line 2017
    if-ne v3, v0, :cond_4

    #@30
    .line 2018
    add-int/lit8 v0, v0, 0x1

    #@32
    move v3, v0

    #@33
    .line 2019
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v9

    #@37
    .line 2014
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 2023
    .end local v0    # "beginIndex":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v9    # "temp":Ljava/lang/Object;
    :cond_5
    sub-int v10, v6, v5

    #@3c
    rem-int v1, v10, v6

    #@3e
    .line 2024
    .local v1, "divideIndex":I
    invoke-interface {v4, v11, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@41
    move-result-object v7

    #@42
    .line 2025
    .local v7, "sublist1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@45
    move-result-object v8

    #@46
    .line 2026
    .local v8, "sublist2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@49
    .line 2027
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@4c
    .line 2028
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@4f
    .line 1988
    .end local v1    # "divideIndex":I
    .end local v7    # "sublist1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "sublist2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    return-void
.end method

.method public static roundUpToPowerOfTwo(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 3461
    add-int/lit8 p0, p0, -0x1

    #@2
    .line 3464
    ushr-int/lit8 v0, p0, 0x1

    #@4
    or-int/2addr p0, v0

    #@5
    .line 3465
    ushr-int/lit8 v0, p0, 0x2

    #@7
    or-int/2addr p0, v0

    #@8
    .line 3466
    ushr-int/lit8 v0, p0, 0x4

    #@a
    or-int/2addr p0, v0

    #@b
    .line 3467
    ushr-int/lit8 v0, p0, 0x8

    #@d
    or-int/2addr p0, v0

    #@e
    .line 3468
    ushr-int/lit8 v0, p0, 0x10

    #@10
    or-int/2addr p0, v0

    #@11
    .line 3470
    add-int/lit8 v0, p0, 0x1

    #@13
    return v0
.end method

.method private static secondaryHash(I)I
    .locals 2
    .param p0, "h"    # I

    #@0
    .prologue
    .line 3444
    shl-int/lit8 v0, p0, 0xf

    #@2
    xor-int/lit16 v0, v0, -0x3283

    #@4
    add-int/2addr p0, v0

    #@5
    .line 3445
    ushr-int/lit8 v0, p0, 0xa

    #@7
    xor-int/2addr p0, v0

    #@8
    .line 3446
    shl-int/lit8 v0, p0, 0x3

    #@a
    add-int/2addr p0, v0

    #@b
    .line 3447
    ushr-int/lit8 v0, p0, 0x6

    #@d
    xor-int/2addr p0, v0

    #@e
    .line 3448
    shl-int/lit8 v0, p0, 0x2

    #@10
    shl-int/lit8 v1, p0, 0xe

    #@12
    add-int/2addr v0, v1

    #@13
    add-int/2addr p0, v0

    #@14
    .line 3449
    ushr-int/lit8 v0, p0, 0x10

    #@16
    xor-int/2addr v0, p0

    #@17
    return v0
.end method

.method public static secondaryHash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3427
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->secondaryHash(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static secondaryIdentityHash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3438
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->secondaryHash(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static shuffle(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1779
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@5
    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    #@8
    .line 1778
    return-void
.end method

.method public static shuffle(Ljava/util/List;Ljava/util/Random;)V
    .locals 8
    .param p1, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1795
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v5, p0

    #@1
    .line 1797
    .local v5, "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v7, p0, Ljava/util/RandomAccess;

    #@3
    if-eqz v7, :cond_0

    #@5
    .line 1798
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@8
    move-result v7

    #@9
    add-int/lit8 v1, v7, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    #@d
    .line 1799
    add-int/lit8 v7, v1, 0x1

    #@f
    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    #@12
    move-result v3

    #@13
    .line 1800
    .local v3, "index":I
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v7

    #@17
    invoke-interface {v5, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    invoke-interface {v5, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 1798
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 1803
    .end local v1    # "i":I
    .end local v3    # "index":I
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    .line 1804
    .local v0, "array":[Ljava/lang/Object;
    array-length v7, v0

    #@26
    add-int/lit8 v1, v7, -0x1

    #@28
    .restart local v1    # "i":I
    :goto_1
    if-lez v1, :cond_1

    #@2a
    .line 1805
    add-int/lit8 v7, v1, 0x1

    #@2c
    invoke-virtual {p1, v7}, Ljava/util/Random;->nextInt(I)I

    #@2f
    move-result v3

    #@30
    .line 1806
    .restart local v3    # "index":I
    aget-object v6, v0, v1

    #@32
    .line 1807
    .local v6, "temp":Ljava/lang/Object;
    aget-object v7, v0, v3

    #@34
    aput-object v7, v0, v1

    #@36
    .line 1808
    aput-object v6, v0, v3

    #@38
    .line 1804
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 1811
    .end local v3    # "index":I
    .end local v6    # "temp":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    #@3c
    .line 1812
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@3f
    move-result-object v4

    #@40
    .line 1813
    .local v4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Object;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_2

    #@46
    .line 1814
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@49
    .line 1815
    add-int/lit8 v2, v1, 0x1

    #@4b
    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v7, v0, v1

    #@4d
    invoke-interface {v4, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@50
    move v1, v2

    #@51
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    #@52
    .line 1793
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v4    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method

.method public static singleton(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1829
    .local p0, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$SingletonSet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static singletonList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1841
    .local p0, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$SingletonList;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonList;-><init>(Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1855
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/Collections$SingletonMap;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static sort(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1869
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v6

    #@4
    const-class v7, Ljava/util/ArrayList;

    #@6
    if-ne v6, v7, :cond_1

    #@8
    move-object v1, p0

    #@9
    .line 1870
    check-cast v1, Ljava/util/ArrayList;

    #@b
    .line 1871
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v0, v1, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@d
    .line 1872
    .local v0, "array":[Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v2

    #@11
    .line 1873
    .local v2, "end":I
    const/4 v6, 0x0

    #@12
    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    #@15
    .line 1874
    iget v6, v1, Ljava/util/ArrayList;->modCount:I

    #@17
    add-int/lit8 v6, v6, 0x1

    #@19
    iput v6, v1, Ljava/util/ArrayList;->modCount:I

    #@1b
    .line 1866
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v2    # "end":I
    :cond_0
    return-void

    #@1c
    .line 1876
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .line 1877
    .restart local v0    # "array":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@23
    .line 1878
    const/4 v3, 0x0

    #@24
    .line 1879
    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@27
    move-result-object v5

    #@28
    .line 1880
    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_0

    #@2e
    .line 1881
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@31
    .line 1882
    add-int/lit8 v4, v3, 0x1

    #@33
    .end local v3    # "i":I
    .local v4, "i":I
    aget-object v6, v0, v3

    #@35
    check-cast v6, Ljava/lang/Comparable;

    #@37
    invoke-interface {v5, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@3a
    move v3, v4

    #@3b
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1896
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v6

    #@4
    const-class v7, Ljava/util/ArrayList;

    #@6
    if-ne v6, v7, :cond_1

    #@8
    move-object v1, p0

    #@9
    .line 1897
    check-cast v1, Ljava/util/ArrayList;

    #@b
    .line 1898
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v0, v1, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    #@d
    .line 1899
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v2

    #@11
    .line 1900
    .local v2, "end":I
    const/4 v6, 0x0

    #@12
    invoke-static {v0, v6, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@15
    .line 1901
    iget v6, v1, Ljava/util/ArrayList;->modCount:I

    #@17
    add-int/lit8 v6, v6, 0x1

    #@19
    iput v6, v1, Ljava/util/ArrayList;->modCount:I

    #@1b
    .line 1895
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v2    # "end":I
    :cond_0
    return-void

    #@1c
    .line 1903
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@1f
    move-result v6

    #@20
    new-array v6, v6, [Ljava/lang/Object;

    #@22
    invoke-interface {p0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    .line 1904
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@29
    .line 1905
    const/4 v3, 0x0

    #@2a
    .line 1906
    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@2d
    move-result-object v5

    #@2e
    .line 1907
    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_0

    #@34
    .line 1908
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@37
    .line 1909
    add-int/lit8 v4, v3, 0x1

    #@39
    .end local v3    # "i":I
    .local v4, "i":I
    aget-object v6, v0, v3

    #@3b
    invoke-interface {v5, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@3e
    move v3, v4

    #@3f
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0
.end method

.method public static swap(Ljava/util/List;II)V
    .locals 4
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1932
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    #@2
    .line 1933
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "list == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1935
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@e
    move-result v1

    #@f
    .line 1936
    .local v1, "size":I
    if-ltz p1, :cond_1

    #@11
    if-lt p1, v1, :cond_2

    #@13
    .line 1937
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@15
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@18
    throw v2

    #@19
    .line 1936
    :cond_2
    if-ltz p2, :cond_1

    #@1b
    if-ge p2, v1, :cond_1

    #@1d
    .line 1939
    if-ne p1, p2, :cond_3

    #@1f
    .line 1940
    return-void

    #@20
    .line 1942
    :cond_3
    move-object v0, p0

    #@21
    .line 1943
    .local v0, "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 1931
    return-void
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2190
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 2191
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "collection == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2193
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    #@10
    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2205
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 2206
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "list == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2208
    :cond_0
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 2209
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    #@11
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    #@14
    return-object v0

    #@15
    .line 2211
    :cond_1
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    #@17
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    #@1a
    return-object v0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2223
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_0

    #@2
    .line 2224
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "map == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2226
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    #@10
    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2238
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-nez p0, :cond_0

    #@2
    .line 2239
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "set == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2241
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    #@10
    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2254
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    if-nez p0, :cond_0

    #@2
    .line 2255
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "map == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2257
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    #@10
    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2269
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    if-nez p0, :cond_0

    #@2
    .line 2270
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "set == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2272
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    #@10
    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2287
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-nez p0, :cond_0

    #@2
    .line 2288
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "collection == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2290
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    #@10
    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2304
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    if-nez p0, :cond_0

    #@2
    .line 2305
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "list == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2307
    :cond_0
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 2308
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    #@11
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    #@14
    return-object v0

    #@15
    .line 2310
    :cond_1
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    #@17
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    #@1a
    return-object v0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2325
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    if-nez p0, :cond_0

    #@2
    .line 2326
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "map == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2328
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    #@10
    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2342
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    if-nez p0, :cond_0

    #@2
    .line 2343
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "set == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2345
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    #@10
    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2360
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p0, :cond_0

    #@2
    .line 2361
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "map == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2363
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    #@10
    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2376
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    if-nez p0, :cond_0

    #@2
    .line 2377
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "set == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2379
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    #@d
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    #@10
    return-object v0
.end method
