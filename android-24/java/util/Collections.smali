.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$AsLIFOQueue;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CopiesList;,
        Ljava/util/Collections$EmptyEnumeration;,
        Ljava/util/Collections$EmptyIterator;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$EmptyListIterator;,
        Ljava/util/Collections$EmptyMap;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$ReverseComparator2;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$SetFromMap;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$UnmodifiableCollection;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableSortedSet;
    }
.end annotation


# static fields
.field private static final BINARYSEARCH_THRESHOLD:I = 0x1388

.field private static final COPY_THRESHOLD:I = 0xa

.field public static final EMPTY_LIST:Ljava/util/List;

.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SET:Ljava/util/Set;

.field private static final FILL_THRESHOLD:I = 0x19

.field private static final INDEXOFSUBLIST_THRESHOLD:I = 0x23

.field private static final REPLACEALL_THRESHOLD:I = 0xb

.field private static final REVERSE_THRESHOLD:I = 0x12

.field private static final ROTATE_THRESHOLD:I = 0x64

.field private static final SHUFFLE_THRESHOLD:I = 0x5

.field private static r:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3558
    new-instance v0, Ljava/util/Collections$EmptySet;

    #@3
    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections$EmptySet;)V

    #@6
    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@8
    .line 3635
    new-instance v0, Ljava/util/Collections$EmptyList;

    #@a
    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections$EmptyList;)V

    #@d
    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@f
    .line 3736
    new-instance v0, Ljava/util/Collections$EmptyMap;

    #@11
    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections$EmptyMap;)V

    #@14
    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@16
    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 5
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
    .line 4598
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@1
    .line 4599
    .local v1, "result":Z
    const/4 v2, 0x0

    #@2
    array-length v3, p1

    #@3
    .end local v1    # "result":Z
    :goto_0
    if-ge v2, v3, :cond_0

    #@5
    aget-object v0, p1, v2

    #@7
    .line 4600
    .local v0, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    or-int/2addr v1, v4

    #@c
    .line 4599
    .local v1, "result":Z
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 4601
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    .end local v1    # "result":Z
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
    .line 4718
    .local p0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    new-instance v0, Ljava/util/Collections$AsLIFOQueue;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$AsLIFOQueue;-><init>(Ljava/util/Deque;)V

    #@5
    return-object v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
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
    .line 285
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0x1388

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 286
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Collections;->indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 288
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Collections;->iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 2
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
    .line 389
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p2, :cond_0

    #@2
    .line 390
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 392
    :cond_0
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@9
    if-nez v0, :cond_1

    #@b
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@e
    move-result v0

    #@f
    const/16 v1, 0x1388

    #@11
    if-ge v0, v1, :cond_2

    #@13
    .line 393
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 395
    :cond_2
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@1b
    move-result v0

    #@1c
    return v0
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
    .line 2587
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
    .line 2846
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2847
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    #@9
    .line 2846
    :goto_0
    return-object v0

    #@a
    .line 2848
    :cond_0
    new-instance v0, Ljava/util/Collections$CheckedList;

    #@c
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    #@f
    goto :goto_0
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
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
    .line 3005
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    #@5
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
    .line 2738
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
    .line 3402
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
    .line 2785
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
    .line 627
    .local p0, "dest":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v3

    #@4
    .line 628
    .local v3, "srcSize":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    if-le v3, v4, :cond_0

    #@a
    .line 629
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@c
    const-string/jumbo v5, "Source does not fit in dest"

    #@f
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@12
    throw v4

    #@13
    .line 631
    :cond_0
    const/16 v4, 0xa

    #@15
    if-lt v3, v4, :cond_1

    #@17
    .line 632
    instance-of v4, p1, Ljava/util/RandomAccess;

    #@19
    if-eqz v4, :cond_2

    #@1b
    instance-of v4, p0, Ljava/util/RandomAccess;

    #@1d
    .line 631
    if-eqz v4, :cond_2

    #@1f
    .line 633
    :cond_1
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@22
    .line 634
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 633
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 636
    .end local v1    # "i":I
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@2f
    move-result-object v0

    #@30
    .line 637
    .local v0, "di":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@33
    move-result-object v2

    #@34
    .line 638
    .local v2, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    const/4 v1, 0x0

    #@35
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    #@37
    .line 639
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@3a
    .line 640
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v4

    #@3e
    invoke-interface {v0, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@41
    .line 638
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_1

    #@44
    .line 626
    .end local v0    # "di":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    .end local v2    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :cond_3
    return-void
.end method

.method public static disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 9
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
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 4520
    move-object v2, p1

    #@3
    .line 4526
    .local v2, "contains":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v5, p0

    #@4
    .line 4533
    .local v5, "iterate":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v6, p0, Ljava/util/Set;

    #@6
    if-eqz v6, :cond_2

    #@8
    .line 4536
    move-object v5, p1

    #@9
    .line 4537
    move-object v2, p0

    #@a
    .line 4558
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v4

    #@e
    .local v4, "e$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_5

    #@14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    .line 4559
    .local v3, "e":Ljava/lang/Object;
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_1

    #@1e
    .line 4561
    return v7

    #@1f
    .line 4538
    .end local v3    # "e":Ljava/lang/Object;
    .end local v4    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    instance-of v6, p1, Ljava/util/Set;

    #@21
    if-nez v6, :cond_0

    #@23
    .line 4545
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@26
    move-result v0

    #@27
    .line 4546
    .local v0, "c1size":I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@2a
    move-result v1

    #@2b
    .line 4547
    .local v1, "c2size":I
    if-eqz v0, :cond_3

    #@2d
    if-nez v1, :cond_4

    #@2f
    .line 4549
    :cond_3
    return v8

    #@30
    .line 4552
    :cond_4
    if-le v0, v1, :cond_0

    #@32
    .line 4553
    move-object v5, p1

    #@33
    .line 4554
    move-object v2, p0

    #@34
    goto :goto_0

    #@35
    .line 4566
    .end local v0    # "c1size":I
    .end local v1    # "c2size":I
    .restart local v4    # "e$iterator":Ljava/util/Iterator;
    :cond_5
    return v8
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
    .line 3541
    sget-object v0, Ljava/util/Collections$EmptyEnumeration;->EMPTY_ENUMERATION:Ljava/util/Collections$EmptyEnumeration;

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
    .line 3460
    sget-object v0, Ljava/util/Collections$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyIterator;

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
    .line 3657
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
    .line 3504
    sget-object v0, Ljava/util/Collections$EmptyListIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;

    #@2
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
    .line 3758
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
    .line 3581
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public static enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .locals 1
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
    .line 4407
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$3;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$3;-><init>(Ljava/util/Collection;)V

    #@5
    return-object v0
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4449
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

.method public static fill(Ljava/util/List;Ljava/lang/Object;)V
    .locals 4
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
    .line 595
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    .line 597
    .local v2, "size":I
    const/16 v3, 0x19

    #@6
    if-lt v2, v3, :cond_0

    #@8
    instance-of v3, p0, Ljava/util/RandomAccess;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 598
    :cond_0
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@f
    .line 599
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 598
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 601
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@18
    move-result-object v1

    #@19
    .line 602
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    const/4 v0, 0x0

    #@1a
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    #@1c
    .line 603
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@1f
    .line 604
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@22
    .line 602
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_1

    #@25
    .line 594
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    :cond_2
    return-void
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .locals 4
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
    .line 4466
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    #@1
    .line 4467
    .local v2, "result":I
    if-nez p1, :cond_1

    #@3
    .line 4468
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_3

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    .line 4469
    .local v0, "e":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@13
    .line 4470
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 4472
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_3

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    .line 4473
    .restart local v0    # "e":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 4474
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 4476
    .end local v0    # "e":Ljava/lang/Object;
    :cond_3
    return v2
.end method

.method private static get(Ljava/util/ListIterator;I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator",
            "<+TT;>;I)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    .local p0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    const/4 v0, 0x0

    #@1
    .line 339
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    #@4
    move-result v1

    #@5
    .line 340
    .local v1, "pos":I
    if-gt v1, p1, :cond_0

    #@7
    .line 342
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 343
    .restart local v0    # "obj":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v1, 0x1

    #@d
    .end local v1    # "pos":I
    .local v2, "pos":I
    if-ge v1, p1, :cond_1

    #@f
    move v1, v2

    #@10
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0

    #@11
    .line 346
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .line 347
    .restart local v0    # "obj":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, -0x1

    #@17
    if-gt v1, p1, :cond_0

    #@19
    .line 349
    :goto_1
    return-object v0

    #@1a
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    move v1, v2

    #@1b
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_1
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
    .line 971
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v5

    #@4
    .line 972
    .local v5, "sourceSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v6

    #@8
    .line 973
    .local v6, "targetSize":I
    sub-int v3, v5, v6

    #@a
    .line 975
    .local v3, "maxCandidate":I
    const/16 v8, 0x23

    #@c
    if-lt v5, v8, :cond_0

    #@e
    .line 976
    instance-of v8, p0, Ljava/util/RandomAccess;

    #@10
    if-eqz v8, :cond_3

    #@12
    instance-of v8, p1, Ljava/util/RandomAccess;

    #@14
    .line 975
    if-eqz v8, :cond_3

    #@16
    .line 978
    :cond_0
    const/4 v0, 0x0

    #@17
    .local v0, "candidate":I
    :goto_0
    if-gt v0, v3, :cond_7

    #@19
    .line 979
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    move v2, v0

    #@1b
    .local v2, "j":I
    :goto_1
    if-ge v1, v6, :cond_2

    #@1d
    .line 980
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v8

    #@21
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v9

    #@25
    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v8

    #@29
    if-nez v8, :cond_1

    #@2b
    .line 978
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 979
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@30
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_1

    #@33
    .line 982
    :cond_2
    return v0

    #@34
    .line 985
    .end local v0    # "candidate":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@37
    move-result-object v4

    #@38
    .line 987
    .local v4, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    #@39
    .restart local v0    # "candidate":I
    :goto_2
    if-gt v0, v3, :cond_7

    #@3b
    .line 988
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@3e
    move-result-object v7

    #@3f
    .line 989
    .local v7, "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v1, 0x0

    #@40
    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v6, :cond_5

    #@42
    .line 990
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v8

    #@46
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v9

    #@4a
    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4d
    move-result v8

    #@4e
    if-nez v8, :cond_4

    #@50
    .line 992
    const/4 v2, 0x0

    #@51
    .restart local v2    # "j":I
    :goto_4
    if-ge v2, v1, :cond_6

    #@53
    .line 993
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@56
    .line 992
    add-int/lit8 v2, v2, 0x1

    #@58
    goto :goto_4

    #@59
    .line 989
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_3

    #@5c
    .line 997
    :cond_5
    return v0

    #@5d
    .line 987
    .restart local v2    # "j":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_2

    #@60
    .line 1000
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v7    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_7
    const/4 v8, -0x1

    #@61
    return v8
.end method

.method private static indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 6
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
    .line 293
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    #@1
    .line 294
    .local v2, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v5

    #@5
    add-int/lit8 v1, v5, -0x1

    #@7
    .line 296
    .local v1, "high":I
    :goto_0
    if-gt v2, v1, :cond_2

    #@9
    .line 297
    add-int v5, v2, v1

    #@b
    ushr-int/lit8 v3, v5, 0x1

    #@d
    .line 298
    .local v3, "mid":I
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Ljava/lang/Comparable;

    #@13
    .line 299
    .local v4, "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    invoke-interface {v4, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@16
    move-result v0

    #@17
    .line 301
    .local v0, "cmp":I
    if-gez v0, :cond_0

    #@19
    .line 302
    add-int/lit8 v2, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 303
    :cond_0
    if-lez v0, :cond_1

    #@1e
    .line 304
    add-int/lit8 v1, v3, -0x1

    #@20
    goto :goto_0

    #@21
    .line 306
    :cond_1
    return v3

    #@22
    .line 308
    .end local v0    # "cmp":I
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :cond_2
    add-int/lit8 v5, v2, 0x1

    #@24
    neg-int v5, v5

    #@25
    return v5
.end method

.method private static indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 6
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
    .line 399
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v2, 0x0

    #@1
    .line 400
    .local v2, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v5

    #@5
    add-int/lit8 v1, v5, -0x1

    #@7
    .line 402
    .local v1, "high":I
    :goto_0
    if-gt v2, v1, :cond_2

    #@9
    .line 403
    add-int v5, v2, v1

    #@b
    ushr-int/lit8 v3, v5, 0x1

    #@d
    .line 404
    .local v3, "mid":I
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    .line 405
    .local v4, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    .line 407
    .local v0, "cmp":I
    if-gez v0, :cond_0

    #@17
    .line 408
    add-int/lit8 v2, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 409
    :cond_0
    if-lez v0, :cond_1

    #@1c
    .line 410
    add-int/lit8 v1, v3, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 412
    :cond_1
    return v3

    #@20
    .line 414
    .end local v0    # "cmp":I
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v5, v2, 0x1

    #@22
    neg-int v5, v5

    #@23
    return v5
.end method

.method private static iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;)I
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
    .line 314
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    #@1
    .line 315
    .local v3, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v6

    #@5
    add-int/lit8 v1, v6, -0x1

    #@7
    .line 316
    .local v1, "high":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@a
    move-result-object v2

    #@b
    .line 318
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :goto_0
    if-gt v3, v1, :cond_2

    #@d
    .line 319
    add-int v6, v3, v1

    #@f
    ushr-int/lit8 v4, v6, 0x1

    #@11
    .line 320
    .local v4, "mid":I
    invoke-static {v2, v4}, Ljava/util/Collections;->get(Ljava/util/ListIterator;I)Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Ljava/lang/Comparable;

    #@17
    .line 321
    .local v5, "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    .line 323
    .local v0, "cmp":I
    if-gez v0, :cond_0

    #@1d
    .line 324
    add-int/lit8 v3, v4, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 325
    :cond_0
    if-lez v0, :cond_1

    #@22
    .line 326
    add-int/lit8 v1, v4, -0x1

    #@24
    goto :goto_0

    #@25
    .line 328
    :cond_1
    return v4

    #@26
    .line 330
    .end local v0    # "cmp":I
    .end local v4    # "mid":I
    .end local v5    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :cond_2
    add-int/lit8 v6, v3, 0x1

    #@28
    neg-int v6, v6

    #@29
    return v6
.end method

.method private static iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
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
    .line 418
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x0

    #@1
    .line 419
    .local v3, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v6

    #@5
    add-int/lit8 v1, v6, -0x1

    #@7
    .line 420
    .local v1, "high":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@a
    move-result-object v2

    #@b
    .line 422
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :goto_0
    if-gt v3, v1, :cond_2

    #@d
    .line 423
    add-int v6, v3, v1

    #@f
    ushr-int/lit8 v4, v6, 0x1

    #@11
    .line 424
    .local v4, "mid":I
    invoke-static {v2, v4}, Ljava/util/Collections;->get(Ljava/util/ListIterator;I)Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    .line 425
    .local v5, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    .line 427
    .local v0, "cmp":I
    if-gez v0, :cond_0

    #@1b
    .line 428
    add-int/lit8 v3, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 429
    :cond_0
    if-lez v0, :cond_1

    #@20
    .line 430
    add-int/lit8 v1, v4, -0x1

    #@22
    goto :goto_0

    #@23
    .line 432
    :cond_1
    return v4

    #@24
    .line 434
    .end local v0    # "cmp":I
    .end local v4    # "mid":I
    .end local v5    # "midVal":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v6, v3, 0x1

    #@26
    neg-int v6, v6

    #@27
    return v6
.end method

.method public static lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .locals 11
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
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v10, -0x1

    #@1
    .line 1024
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v5

    #@5
    .line 1025
    .local v5, "sourceSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@8
    move-result v6

    #@9
    .line 1026
    .local v6, "targetSize":I
    sub-int v3, v5, v6

    #@b
    .line 1028
    .local v3, "maxCandidate":I
    const/16 v8, 0x23

    #@d
    if-lt v5, v8, :cond_0

    #@f
    .line 1029
    instance-of v8, p0, Ljava/util/RandomAccess;

    #@11
    .line 1028
    if-eqz v8, :cond_3

    #@13
    .line 1031
    :cond_0
    move v0, v3

    #@14
    .local v0, "candidate":I
    :goto_0
    if-ltz v0, :cond_8

    #@16
    .line 1032
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    move v2, v0

    #@18
    .local v2, "j":I
    :goto_1
    if-ge v1, v6, :cond_2

    #@1a
    .line 1033
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v8

    #@1e
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v9

    #@22
    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v8

    #@26
    if-nez v8, :cond_1

    #@28
    .line 1031
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1032
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 1035
    :cond_2
    return v0

    #@31
    .line 1038
    .end local v0    # "candidate":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_3
    if-gez v3, :cond_4

    #@33
    .line 1039
    return v10

    #@34
    .line 1040
    :cond_4
    invoke-interface {p0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@37
    move-result-object v4

    #@38
    .line 1042
    .local v4, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    move v0, v3

    #@39
    .restart local v0    # "candidate":I
    :goto_2
    if-ltz v0, :cond_8

    #@3b
    .line 1043
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@3e
    move-result-object v7

    #@3f
    .line 1044
    .local v7, "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v1, 0x0

    #@40
    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v6, :cond_6

    #@42
    .line 1045
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v8

    #@46
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v9

    #@4a
    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4d
    move-result v8

    #@4e
    if-nez v8, :cond_5

    #@50
    .line 1046
    if-eqz v0, :cond_7

    #@52
    .line 1048
    const/4 v2, 0x0

    #@53
    .restart local v2    # "j":I
    :goto_4
    add-int/lit8 v8, v1, 0x1

    #@55
    if-gt v2, v8, :cond_7

    #@57
    .line 1049
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@5a
    .line 1048
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_4

    #@5d
    .line 1044
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_3

    #@60
    .line 1054
    :cond_6
    return v0

    #@61
    .line 1042
    :cond_7
    add-int/lit8 v0, v0, -0x1

    #@63
    goto :goto_2

    #@64
    .line 1057
    .end local v1    # "i":I
    .end local v4    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v7    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_8
    return v10
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
    .line 4437
    .local p0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4438
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4439
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    goto :goto_0

    #@13
    .line 4440
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
    .line 741
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .line 742
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    .line 744
    .local v0, "candidate":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 745
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    #@13
    .line 746
    check-cast v3, Ljava/lang/Comparable;

    #@15
    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_0

    #@1b
    .line 747
    move-object v0, v2

    #@1c
    goto :goto_0

    #@1d
    .line 749
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 4
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
    .line 777
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 778
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    return-object v3

    #@7
    .line 780
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 781
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 783
    .local v0, "candidate":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 784
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    .line 785
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1c
    move-result v3

    #@1d
    if-lez v3, :cond_1

    #@1f
    .line 786
    move-object v0, v2

    #@20
    goto :goto_0

    #@21
    .line 788
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v0
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
    .line 668
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .line 669
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    .line 671
    .local v0, "candidate":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 672
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    #@13
    .line 673
    check-cast v3, Ljava/lang/Comparable;

    #@15
    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@18
    move-result v3

    #@19
    if-gez v3, :cond_0

    #@1b
    .line 674
    move-object v0, v2

    #@1c
    goto :goto_0

    #@1d
    .line 676
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 4
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
    .line 704
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 705
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    return-object v3

    #@7
    .line 707
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 708
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 710
    .local v0, "candidate":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 711
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    .line 712
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1c
    move-result v3

    #@1d
    if-gez v3, :cond_1

    #@1f
    .line 713
    move-object v0, v2

    #@20
    goto :goto_0

    #@21
    .line 715
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v0
.end method

.method public static nCopies(ILjava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p0, "n"    # I
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
    .line 4182
    .local p1, "o":Ljava/lang/Object;, "TT;"
    if-gez p0, :cond_0

    #@2
    .line 4183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "List length = "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 4184
    :cond_0
    new-instance v0, Ljava/util/Collections$CopiesList;

    #@1e
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    #@21
    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
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
    .line 4636
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/Collections$SetFromMap;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    #@5
    return-object v0
.end method

.method public static replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
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
    .line 911
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "oldVal":Ljava/lang/Object;, "TT;"
    .local p2, "newVal":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    #@1
    .line 912
    .local v2, "result":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v3

    #@5
    .line 913
    .local v3, "size":I
    const/16 v4, 0xb

    #@7
    if-lt v3, v4, :cond_0

    #@9
    instance-of v4, p0, Ljava/util/RandomAccess;

    #@b
    if-eqz v4, :cond_4

    #@d
    .line 914
    :cond_0
    if-nez p1, :cond_2

    #@f
    .line 915
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_8

    #@12
    .line 916
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    if-nez v4, :cond_1

    #@18
    .line 917
    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 918
    const/4 v2, 0x1

    #@1c
    .line 915
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 922
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    #@20
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_8

    #@22
    .line 923
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_3

    #@2c
    .line 924
    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 925
    const/4 v2, 0x1

    #@30
    .line 922
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 930
    .end local v0    # "i":I
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@36
    move-result-object v1

    #@37
    .line 931
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    if-nez p1, :cond_6

    #@39
    .line 932
    const/4 v0, 0x0

    #@3a
    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v3, :cond_8

    #@3c
    .line 933
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    if-nez v4, :cond_5

    #@42
    .line 934
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@45
    .line 935
    const/4 v2, 0x1

    #@46
    .line 932
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_2

    #@49
    .line 939
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    #@4a
    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v3, :cond_8

    #@4c
    .line 940
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_7

    #@56
    .line 941
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@59
    .line 942
    const/4 v2, 0x1

    #@5a
    .line 939
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_3

    #@5d
    .line 947
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    :cond_8
    return v2
.end method

.method public static reverse(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 448
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v5

    #@4
    .line 449
    .local v5, "size":I
    const/16 v7, 0x12

    #@6
    if-lt v5, v7, :cond_0

    #@8
    instance-of v7, p0, Ljava/util/RandomAccess;

    #@a
    if-eqz v7, :cond_1

    #@c
    .line 450
    :cond_0
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    shr-int/lit8 v3, v5, 0x1

    #@f
    .local v3, "mid":I
    add-int/lit8 v2, v5, -0x1

    #@11
    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@13
    .line 451
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    #@16
    .line 450
    add-int/lit8 v1, v1, 0x1

    #@18
    add-int/lit8 v2, v2, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 456
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "mid":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@1e
    move-result-object v0

    #@1f
    .line 457
    .local v0, "fwd":Ljava/util/ListIterator;
    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@22
    move-result-object v4

    #@23
    .line 458
    .local v4, "rev":Ljava/util/ListIterator;
    const/4 v1, 0x0

    #@24
    .restart local v1    # "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@27
    move-result v7

    #@28
    shr-int/lit8 v3, v7, 0x1

    #@2a
    .restart local v3    # "mid":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@2c
    .line 459
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v6

    #@30
    .line 460
    .local v6, "tmp":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@33
    move-result-object v7

    #@34
    invoke-interface {v0, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@37
    .line 461
    invoke-interface {v4, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@3a
    .line 458
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 447
    .end local v0    # "fwd":Ljava/util/ListIterator;
    .end local v4    # "rev":Ljava/util/ListIterator;
    .end local v6    # "tmp":Ljava/lang/Object;
    :cond_2
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
    .line 4301
    sget-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    #@2
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
    .line 4345
    .local p0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 4346
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 4348
    :cond_0
    instance-of v0, p0, Ljava/util/Collections$ReverseComparator2;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 4349
    check-cast p0, Ljava/util/Collections$ReverseComparator2;

    #@d
    .end local p0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    #@f
    return-object v0

    #@10
    .line 4351
    .restart local p0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_1
    new-instance v0, Ljava/util/Collections$ReverseComparator2;

    #@12
    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparator2;-><init>(Ljava/util/Comparator;)V

    #@15
    return-object v0
.end method

.method public static rotate(Ljava/util/List;I)V
    .locals 2
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 847
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0x64

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 848
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate1(Ljava/util/List;I)V

    #@f
    .line 846
    :goto_0
    return-void

    #@10
    .line 850
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate2(Ljava/util/List;I)V

    #@13
    goto :goto_0
.end method

.method private static rotate1(Ljava/util/List;I)V
    .locals 5
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 854
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v4

    #@4
    .line 855
    .local v4, "size":I
    if-nez v4, :cond_0

    #@6
    .line 856
    return-void

    #@7
    .line 857
    :cond_0
    rem-int/2addr p1, v4

    #@8
    .line 858
    if-gez p1, :cond_1

    #@a
    .line 859
    add-int/2addr p1, v4

    #@b
    .line 860
    :cond_1
    if-nez p1, :cond_2

    #@d
    .line 861
    return-void

    #@e
    .line 863
    :cond_2
    const/4 v0, 0x0

    #@f
    .local v0, "cycleStart":I
    const/4 v3, 0x0

    #@10
    .local v3, "nMoved":I
    :goto_0
    if-eq v3, v4, :cond_5

    #@12
    .line 864
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    .line 865
    .local v1, "displaced":Ljava/lang/Object;, "TT;"
    move v2, v0

    #@17
    .line 867
    .local v2, "i":I
    :cond_3
    add-int/2addr v2, p1

    #@18
    .line 868
    if-lt v2, v4, :cond_4

    #@1a
    .line 869
    sub-int/2addr v2, v4

    #@1b
    .line 870
    :cond_4
    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    .line 871
    add-int/lit8 v3, v3, 0x1

    #@21
    .line 872
    if-ne v2, v0, :cond_3

    #@23
    .line 863
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 853
    .end local v1    # "displaced":Ljava/lang/Object;, "TT;"
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private static rotate2(Ljava/util/List;I)V
    .locals 4
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    #@1
    .line 877
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v1

    #@5
    .line 878
    .local v1, "size":I
    if-nez v1, :cond_0

    #@7
    .line 879
    return-void

    #@8
    .line 880
    :cond_0
    neg-int v2, p1

    #@9
    rem-int v0, v2, v1

    #@b
    .line 881
    .local v0, "mid":I
    if-gez v0, :cond_1

    #@d
    .line 882
    add-int/2addr v0, v1

    #@e
    .line 883
    :cond_1
    if-nez v0, :cond_2

    #@10
    .line 884
    return-void

    #@11
    .line 886
    :cond_2
    invoke-interface {p0, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@14
    move-result-object v2

    #@15
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@18
    .line 887
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@1f
    .line 888
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@22
    .line 876
    return-void
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
    .line 495
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    sget-object v0, Ljava/util/Collections;->r:Ljava/util/Random;

    #@2
    .line 496
    .local v0, "rnd":Ljava/util/Random;
    if-nez v0, :cond_0

    #@4
    .line 497
    new-instance v0, Ljava/util/Random;

    #@6
    .end local v0    # "rnd":Ljava/util/Random;
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@9
    .restart local v0    # "rnd":Ljava/util/Random;
    sput-object v0, Ljava/util/Collections;->r:Ljava/util/Random;

    #@b
    .line 498
    :cond_0
    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    #@e
    .line 494
    return-void
.end method

.method public static shuffle(Ljava/util/List;Ljava/util/Random;)V
    .locals 7
    .param p1, "rnd"    # Ljava/util/Random;
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
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v6, 0x1

    #@1
    .line 528
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@4
    move-result v3

    #@5
    .line 529
    .local v3, "size":I
    const/4 v4, 0x5

    #@6
    if-lt v3, v4, :cond_0

    #@8
    instance-of v4, p0, Ljava/util/RandomAccess;

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 530
    :cond_0
    move v1, v3

    #@d
    .local v1, "i":I
    :goto_0
    if-le v1, v6, :cond_3

    #@f
    .line 531
    add-int/lit8 v4, v1, -0x1

    #@11
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    #@14
    move-result v5

    #@15
    invoke-static {p0, v4, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    #@18
    .line 530
    add-int/lit8 v1, v1, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 533
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    .line 536
    .local v0, "arr":[Ljava/lang/Object;
    move v1, v3

    #@20
    .restart local v1    # "i":I
    :goto_1
    if-le v1, v6, :cond_2

    #@22
    .line 537
    add-int/lit8 v4, v1, -0x1

    #@24
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    #@27
    move-result v5

    #@28
    invoke-static {v0, v4, v5}, Ljava/util/Collections;->swap([Ljava/lang/Object;II)V

    #@2b
    .line 536
    add-int/lit8 v1, v1, -0x1

    #@2d
    goto :goto_1

    #@2e
    .line 543
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@31
    move-result-object v2

    #@32
    .line 544
    .local v2, "it":Ljava/util/ListIterator;
    const/4 v1, 0x0

    #@33
    :goto_2
    array-length v4, v0

    #@34
    if-ge v1, v4, :cond_3

    #@36
    .line 545
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@39
    .line 546
    aget-object v4, v0, v1

    #@3b
    invoke-interface {v2, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@3e
    .line 544
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_2

    #@41
    .line 527
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v2    # "it":Ljava/util/ListIterator;
    :cond_3
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
    .line 3863
    .local p0, "o":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$SingletonSet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method static singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3867
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$1;-><init>(Ljava/lang/Object;)V

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
    .line 3985
    .local p0, "o":Ljava/lang/Object;, "TE;"
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
    .line 4049
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/Collections$SingletonMap;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method static singletonSpliterator(Ljava/lang/Object;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3900
    .local p0, "element":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$2;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$2;-><init>(Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static sort(Ljava/util/List;)V
    .locals 6
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
    .line 168
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    const-class v4, Ljava/util/ArrayList;

    #@6
    if-ne v3, v4, :cond_0

    #@8
    move-object v3, p0

    #@9
    .line 169
    check-cast v3, Ljava/util/ArrayList;

    #@b
    iget-object v3, v3, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@d
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@10
    move-result v4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    #@15
    .line 170
    return-void

    #@16
    .line 173
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    .line 174
    .local v0, "a":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@1d
    .line 175
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@20
    move-result-object v1

    #@21
    .line 176
    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v2, 0x0

    #@22
    .local v2, "j":I
    :goto_0
    array-length v3, v0

    #@23
    if-ge v2, v3, :cond_1

    #@25
    .line 177
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@28
    .line 178
    aget-object v3, v0, v2

    #@2a
    check-cast v3, Ljava/lang/Comparable;

    #@2c
    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@2f
    .line 176
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 167
    :cond_1
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 6
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
    .line 237
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    const-class v4, Ljava/util/ArrayList;

    #@6
    if-ne v3, v4, :cond_0

    #@8
    move-object v3, p0

    #@9
    .line 238
    check-cast v3, Ljava/util/ArrayList;

    #@b
    iget-object v3, v3, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@d
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@10
    move-result v4

    #@11
    const/4 v5, 0x0

    #@12
    invoke-static {v3, v5, v4, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@15
    .line 239
    return-void

    #@16
    .line 242
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    .line 243
    .local v0, "a":[Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@1d
    .line 244
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@20
    move-result-object v1

    #@21
    .line 245
    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v2, 0x0

    #@22
    .local v2, "j":I
    :goto_0
    array-length v3, v0

    #@23
    if-ge v2, v3, :cond_1

    #@25
    .line 246
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@28
    .line 247
    aget-object v3, v0, v2

    #@2a
    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@2d
    .line 245
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 236
    :cond_1
    return-void
.end method

.method public static swap(Ljava/util/List;II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 569
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v0, p0

    #@1
    .line 570
    .local v0, "l":Ljava/util/List;
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    invoke-interface {p0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 565
    return-void
.end method

.method private static swap([Ljava/lang/Object;II)V
    .locals 2
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "j"    # I

    #@0
    .prologue
    .line 577
    aget-object v0, p0, p1

    #@2
    .line 578
    .local v0, "tmp":Ljava/lang/Object;
    aget-object v1, p0, p2

    #@4
    aput-object v1, p0, p1

    #@6
    .line 579
    aput-object v0, p0, p2

    #@8
    .line 576
    return-void
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
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
    .line 1833
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    #@5
    return-object v0
.end method

.method static synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1837
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
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
    .line 2107
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2108
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    #@6
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    #@9
    .line 2107
    :goto_0
    return-object v0

    #@a
    .line 2109
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    #@c
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    #@f
    goto :goto_0
.end method

.method static synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2113
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2114
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    #@9
    .line 2113
    :goto_0
    return-object v0

    #@a
    .line 2115
    :cond_0
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    #@c
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    #@f
    goto :goto_0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
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
    .line 2278
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    #@5
    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1957
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    #@5
    return-object v0
.end method

.method static synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1961
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
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
    .line 2470
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    #@5
    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2028
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    #@5
    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1086
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    #@5
    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1273
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1274
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    #@6
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    #@9
    .line 1273
    :goto_0
    return-object v0

    #@a
    .line 1275
    :cond_0
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    #@c
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    #@f
    goto :goto_0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
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
    .line 1417
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    #@5
    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1193
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<+TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    #@5
    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
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
    .line 1772
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    #@5
    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1226
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    #@5
    return-object v0
.end method

.method static zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2592
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/Object;

    #@7
    return-object v0
.end method
