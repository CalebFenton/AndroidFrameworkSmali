.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableCollection;,
        Ljava/util/Collections$UnmodifiableSequencedCollection;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableSequencedSet;,
        Ljava/util/Collections$UnmodifiableSortedSet;,
        Ljava/util/Collections$UnmodifiableNavigableSet;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableSequencedMap;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableNavigableMap;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$SynchronizedNavigableSet;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedNavigableMap;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$CheckedQueue;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CheckedNavigableSet;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$CheckedNavigableMap;,
        Ljava/util/Collections$EmptyIterator;,
        Ljava/util/Collections$EmptyListIterator;,
        Ljava/util/Collections$EmptyEnumeration;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$CopiesList;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$ReverseComparator2;,
        Ljava/util/Collections$SetFromMap;,
        Ljava/util/Collections$SequencedSetFromMap;,
        Ljava/util/Collections$AsLIFOQueue;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$EmptyMap;
    }
.end annotation


# static fields
.field private static final greylist-max-o BINARYSEARCH_THRESHOLD:I = 0x1388

.field private static final greylist-max-o COPY_THRESHOLD:I = 0xa

.field public static final whitelist test-api EMPTY_LIST:Ljava/util/List;

.field public static final whitelist test-api EMPTY_MAP:Ljava/util/Map;

.field public static final whitelist test-api EMPTY_SET:Ljava/util/Set;

.field private static final greylist-max-o FILL_THRESHOLD:I = 0x19

.field private static final greylist-max-o INDEXOFSUBLIST_THRESHOLD:I = 0x23

.field private static final greylist-max-o REPLACEALL_THRESHOLD:I = 0xb

.field private static final greylist-max-o REVERSE_THRESHOLD:I = 0x12

.field private static final greylist-max-o ROTATE_THRESHOLD:I = 0x64

.field private static final greylist-max-o SHUFFLE_THRESHOLD:I = 0x5

.field private static greylist-max-o r:Ljava/util/Random;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4703
    new-instance v0, Ljava/util/Collections$EmptySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections-IA;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 4829
    new-instance v0, Ljava/util/Collections$EmptyList;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections-IA;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4933
    new-instance v0, Ljava/util/Collections$EmptyMap;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections-IA;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static varargs whitelist test-api addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;[TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 5950
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 5951
    .local v0, "result":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget-object v3, p1, v2

    .line 5952
    .local v3, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 5951
    .end local v3    # "element":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5953
    :cond_f
    return v0
.end method

.method public static whitelist test-api asLifoQueue(Ljava/util/Deque;)Ljava/util/Queue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 6163
    .local p0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    new-instance v0, Ljava/util/Collections$AsLIFOQueue;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Deque;

    invoke-direct {v0, v1}, Ljava/util/Collections$AsLIFOQueue;-><init>(Ljava/util/Deque;)V

    return-object v0
.end method

.method public static whitelist test-api binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;)I"
        }
    .end annotation

    .line 260
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_12

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_d

    goto :goto_12

    .line 263
    :cond_d
    invoke-static {p0, p1}, Ljava/util/Collections;->iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 261
    :cond_12
    :goto_12
    invoke-static {p0, p1}, Ljava/util/Collections;->indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 364
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p2, :cond_7

    .line 365
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 367
    :cond_7
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_19

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_14

    goto :goto_19

    .line 370
    :cond_14
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0

    .line 368
    :cond_19
    :goto_19
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 3396
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist test-api checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 3803
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 3804
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_f

    .line 3805
    :cond_a
    new-instance v0, Ljava/util/Collections$CheckedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 3803
    :goto_f
    return-object v0
.end method

.method public static whitelist test-api checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3954
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist test-api checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4447
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedNavigableMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist test-api checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3721
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedNavigableSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist test-api checkedQueue(Ljava/util/Queue;Ljava/lang/Class;)Ljava/util/Queue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 3551
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedQueue;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedQueue;-><init>(Ljava/util/Queue;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist test-api checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 3608
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist test-api checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4371
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist test-api checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 3656
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist test-api copy(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 628
    .local p0, "dest":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 629
    .local v0, "srcSize":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_3d

    .line 632
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2f

    instance-of v1, p1, Ljava/util/RandomAccess;

    if-eqz v1, :cond_17

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_17

    goto :goto_2f

    .line 637
    :cond_17
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 638
    .local v1, "di":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 639
    .local v2, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v0, :cond_3c

    .line 640
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 641
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 634
    .end local v1    # "di":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    .end local v2    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    .end local v3    # "i":I
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v0, :cond_3c

    .line 635
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 644
    .end local v1    # "i":I
    :cond_3c
    return-void

    .line 630
    :cond_3d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Source does not fit in dest"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 5873
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v0, p1

    .line 5879
    .local v0, "contains":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v1, p0

    .line 5886
    .local v1, "iterate":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p0, Ljava/util/Set;

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 5889
    move-object v1, p1

    .line 5890
    move-object v0, p0

    goto :goto_21

    .line 5891
    :cond_a
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_21

    .line 5898
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 5899
    .local v2, "c1size":I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    .line 5900
    .local v4, "c2size":I
    if-eqz v2, :cond_20

    if-nez v4, :cond_1b

    goto :goto_20

    .line 5905
    :cond_1b
    if-le v2, v4, :cond_21

    .line 5906
    move-object v1, p1

    .line 5907
    move-object v0, p0

    goto :goto_21

    .line 5902
    :cond_20
    :goto_20
    return v3

    .line 5911
    .end local v2    # "c1size":I
    .end local v4    # "c2size":I
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5912
    .local v4, "e":Ljava/lang/Object;
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 5914
    const/4 v2, 0x0

    return v2

    .line 5916
    .end local v4    # "e":Ljava/lang/Object;
    :cond_37
    goto :goto_25

    .line 5919
    :cond_38
    return v3
.end method

.method public static whitelist test-api emptyEnumeration()Ljava/util/Enumeration;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 4685
    sget-object v0, Ljava/util/Collections$EmptyEnumeration;->EMPTY_ENUMERATION:Ljava/util/Collections$EmptyEnumeration;

    return-object v0
.end method

.method public static whitelist test-api emptyIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 4604
    sget-object v0, Ljava/util/Collections$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyIterator;

    return-object v0
.end method

.method public static final whitelist test-api emptyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4853
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static whitelist test-api emptyListIterator()Ljava/util/ListIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 4648
    sget-object v0, Ljava/util/Collections$EmptyListIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;

    return-object v0
.end method

.method public static final whitelist test-api emptyMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4955
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static final whitelist test-api emptyNavigableMap()Ljava/util/NavigableMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4997
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableMap;->-$$Nest$sfgetEMPTY_NAVIGABLE_MAP()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api emptyNavigableSet()Ljava/util/NavigableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 4820
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableSet;->-$$Nest$sfgetEMPTY_NAVIGABLE_SET()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api emptySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 4726
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static final whitelist test-api emptySortedMap()Ljava/util/SortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4976
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableMap;->-$$Nest$sfgetEMPTY_NAVIGABLE_MAP()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api emptySortedSet()Ljava/util/SortedSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 4799
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableSet;->-$$Nest$sfgetEMPTY_NAVIGABLE_SET()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 5760
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$3;

    invoke-direct {v0, p0}, Ljava/util/Collections$3;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static greylist-max-o eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 5802
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

.method public static whitelist test-api fill(Ljava/util/List;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 595
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 597
    .local v0, "size":I
    const/16 v1, 0x19

    if-lt v0, v1, :cond_1d

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_d

    goto :goto_1d

    .line 601
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 602
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_26

    .line 603
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 604
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 598
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    .end local v2    # "i":I
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_26

    .line 599
    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 607
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method public static whitelist test-api frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 5819
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 5820
    .local v0, "result":I
    if-nez p1, :cond_17

    .line 5821
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5822
    .local v2, "e":Ljava/lang/Object;
    if-nez v2, :cond_15

    .line 5823
    add-int/lit8 v0, v0, 0x1

    .line 5822
    .end local v2    # "e":Ljava/lang/Object;
    :cond_15
    goto :goto_7

    :cond_16
    goto :goto_2e

    .line 5825
    :cond_17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5826
    .restart local v2    # "e":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 5827
    add-int/lit8 v0, v0, 0x1

    .line 5826
    .end local v2    # "e":Ljava/lang/Object;
    :cond_2d
    goto :goto_1b

    .line 5829
    :cond_2e
    :goto_2e
    return v0
.end method

.method private static greylist-max-o get(Ljava/util/ListIterator;I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 314
    .local p0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    .line 315
    .local v0, "pos":I
    if-gt v0, p1, :cond_11

    .line 317
    :goto_6
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 318
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "pos":I
    .local v2, "pos":I
    if-lt v0, p1, :cond_f

    goto :goto_1a

    :cond_f
    move v0, v2

    goto :goto_6

    .line 321
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .end local v2    # "pos":I
    .restart local v0    # "pos":I
    :cond_11
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 322
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, -0x1

    if-gt v0, p1, :cond_11

    move v2, v0

    .line 324
    .end local v0    # "pos":I
    .restart local v2    # "pos":I
    :goto_1a
    return-object v1
.end method

.method public static whitelist test-api indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 972
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 973
    .local v0, "sourceSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 974
    .local v1, "targetSize":I
    sub-int v2, v0, v1

    .line 976
    .local v2, "maxCandidate":I
    const/16 v3, 0x23

    if-lt v0, v3, :cond_44

    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_17

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_17

    goto :goto_44

    .line 986
    :cond_17
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 988
    .local v3, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v4, 0x0

    .local v4, "candidate":I
    :goto_1c
    if-gt v4, v2, :cond_63

    .line 989
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 990
    .local v5, "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v1, :cond_43

    .line 991
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 993
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_34
    if-ge v7, v6, :cond_3c

    .line 994
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 993
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 995
    .end local v7    # "j":I
    :cond_3c
    nop

    .line 988
    .end local v5    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v6    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 990
    .restart local v5    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .restart local v6    # "i":I
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 998
    .end local v6    # "i":I
    :cond_43
    return v4

    .line 979
    .end local v3    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v4    # "candidate":I
    .end local v5    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_44
    :goto_44
    const/4 v3, 0x0

    .local v3, "candidate":I
    :goto_45
    if-gt v3, v2, :cond_63

    .line 980
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v3

    .local v5, "j":I
    :goto_49
    if-ge v4, v1, :cond_62

    .line 981
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 982
    nop

    .line 979
    .end local v4    # "i":I
    .end local v5    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 980
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 983
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_62
    return v3

    .line 1001
    .end local v3    # "candidate":I
    :cond_63
    const/4 v3, -0x1

    return v3
.end method

.method private static greylist-max-o indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;)I"
        }
    .end annotation

    .line 268
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 269
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 271
    .local v1, "high":I
    :goto_7
    if-gt v0, v1, :cond_22

    .line 272
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 273
    .local v2, "mid":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 274
    .local v3, "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    invoke-interface {v3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 276
    .local v4, "cmp":I
    if-gez v4, :cond_1c

    .line 277
    add-int/lit8 v0, v2, 0x1

    goto :goto_20

    .line 278
    :cond_1c
    if-lez v4, :cond_21

    .line 279
    add-int/lit8 v1, v2, -0x1

    .line 282
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v4    # "cmp":I
    :goto_20
    goto :goto_7

    .line 281
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .restart local v4    # "cmp":I
    :cond_21
    return v2

    .line 283
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v4    # "cmp":I
    :cond_22
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 374
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 375
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 377
    .local v1, "high":I
    :goto_7
    if-gt v0, v1, :cond_20

    .line 378
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 379
    .local v2, "mid":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 380
    .local v3, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 382
    .local v4, "cmp":I
    if-gez v4, :cond_1a

    .line 383
    add-int/lit8 v0, v2, 0x1

    goto :goto_1e

    .line 384
    :cond_1a
    if-lez v4, :cond_1f

    .line 385
    add-int/lit8 v1, v2, -0x1

    .line 388
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :goto_1e
    goto :goto_7

    .line 387
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .restart local v4    # "cmp":I
    :cond_1f
    return v2

    .line 389
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :cond_20
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;)I"
        }
    .end annotation

    .line 289
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 290
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 291
    .local v1, "high":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 293
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :goto_b
    if-gt v0, v1, :cond_26

    .line 294
    add-int v3, v0, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 295
    .local v3, "mid":I
    invoke-static {v2, v3}, Ljava/util/Collections;->get(Ljava/util/ListIterator;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 296
    .local v4, "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    invoke-interface {v4, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    .line 298
    .local v5, "cmp":I
    if-gez v5, :cond_20

    .line 299
    add-int/lit8 v0, v3, 0x1

    goto :goto_24

    .line 300
    :cond_20
    if-lez v5, :cond_25

    .line 301
    add-int/lit8 v1, v3, -0x1

    .line 304
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v5    # "cmp":I
    :goto_24
    goto :goto_b

    .line 303
    .restart local v3    # "mid":I
    .restart local v4    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .restart local v5    # "cmp":I
    :cond_25
    return v3

    .line 305
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v5    # "cmp":I
    :cond_26
    add-int/lit8 v3, v0, 0x1

    neg-int v3, v3

    return v3
.end method

.method private static greylist-max-o iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 393
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 394
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 395
    .local v1, "high":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 397
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :goto_b
    if-gt v0, v1, :cond_24

    .line 398
    add-int v3, v0, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 399
    .local v3, "mid":I
    invoke-static {v2, v3}, Ljava/util/Collections;->get(Ljava/util/ListIterator;I)Ljava/lang/Object;

    move-result-object v4

    .line 400
    .local v4, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 402
    .local v5, "cmp":I
    if-gez v5, :cond_1e

    .line 403
    add-int/lit8 v0, v3, 0x1

    goto :goto_22

    .line 404
    :cond_1e
    if-lez v5, :cond_23

    .line 405
    add-int/lit8 v1, v3, -0x1

    .line 408
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v5    # "cmp":I
    :goto_22
    goto :goto_b

    .line 407
    .restart local v3    # "mid":I
    .restart local v4    # "midVal":Ljava/lang/Object;, "TT;"
    .restart local v5    # "cmp":I
    :cond_23
    return v3

    .line 409
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v5    # "cmp":I
    :cond_24
    add-int/lit8 v3, v0, 0x1

    neg-int v3, v3

    return v3
.end method

.method public static whitelist test-api lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 1025
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1026
    .local v0, "sourceSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1027
    .local v1, "targetSize":I
    sub-int v2, v0, v1

    .line 1029
    .local v2, "maxCandidate":I
    const/16 v3, 0x23

    const/4 v4, -0x1

    if-lt v0, v3, :cond_47

    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_14

    goto :goto_47

    .line 1039
    :cond_14
    if-gez v2, :cond_17

    .line 1040
    return v4

    .line 1041
    :cond_17
    invoke-interface {p0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 1043
    .local v3, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    move v5, v2

    .local v5, "candidate":I
    :goto_1c
    if-ltz v5, :cond_66

    .line 1044
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 1045
    .local v6, "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_23
    if-ge v7, v1, :cond_46

    .line 1046
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    .line 1047
    if-eqz v5, :cond_40

    .line 1049
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_36
    add-int/lit8 v9, v7, 0x1

    if-gt v8, v9, :cond_40

    .line 1050
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1049
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 1043
    .end local v6    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_40
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    .line 1045
    .restart local v6    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .restart local v7    # "i":I
    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1055
    .end local v7    # "i":I
    :cond_46
    return v5

    .line 1032
    .end local v3    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v5    # "candidate":I
    .end local v6    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_47
    :goto_47
    move v3, v2

    .local v3, "candidate":I
    :goto_48
    if-ltz v3, :cond_66

    .line 1033
    const/4 v5, 0x0

    .local v5, "i":I
    move v6, v3

    .local v6, "j":I
    :goto_4c
    if-ge v5, v1, :cond_65

    .line 1034
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    .line 1035
    nop

    .line 1032
    .end local v5    # "i":I
    .end local v6    # "j":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_48

    .line 1033
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    :cond_60
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 1036
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_65
    return v3

    .line 1058
    .end local v3    # "candidate":I
    :cond_66
    return v4
.end method

.method public static whitelist test-api list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 5790
    .local p0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5791
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_5
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5792
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5793
    :cond_13
    return-object v0
.end method

.method public static whitelist test-api max(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/Collection<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 742
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 743
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 745
    .local v1, "candidate":Ljava/lang/Object;, "TT;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 747
    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1c

    .line 748
    move-object v1, v2

    .line 749
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1c
    goto :goto_8

    .line 750
    :cond_1d
    return-object v1
.end method

.method public static whitelist test-api max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 778
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_7

    .line 779
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 781
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 782
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 784
    .local v1, "candidate":Ljava/lang/Object;, "TT;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 785
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 786
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_20

    .line 787
    move-object v1, v2

    .line 788
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_20
    goto :goto_f

    .line 789
    :cond_21
    return-object v1
.end method

.method public static whitelist test-api min(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/Collection<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 669
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 670
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 672
    .local v1, "candidate":Ljava/lang/Object;, "TT;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 673
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 674
    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1c

    .line 675
    move-object v1, v2

    .line 676
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1c
    goto :goto_8

    .line 677
    :cond_1d
    return-object v1
.end method

.method public static whitelist test-api min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 705
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_7

    .line 706
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 708
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 709
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 711
    .local v1, "candidate":Ljava/lang/Object;, "TT;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 712
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 713
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_20

    .line 714
    move-object v1, v2

    .line 715
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_20
    goto :goto_f

    .line 716
    :cond_21
    return-object v1
.end method

.method public static whitelist test-api nCopies(ILjava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 5440
    .local p1, "o":Ljava/lang/Object;, "TT;"
    if-ltz p0, :cond_8

    .line 5442
    new-instance v0, Ljava/util/Collections$CopiesList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 5441
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api newSequencedSetFromMap(Ljava/util/SequencedMap;)Ljava/util/SequencedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SequencedMap<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/SequencedSet<",
            "TE;>;"
        }
    .end annotation

    .line 6098
    .local p0, "map":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TE;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/SequencedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6100
    new-instance v0, Ljava/util/Collections$SequencedSetFromMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SequencedSetFromMap;-><init>(Ljava/util/SequencedMap;)V

    return-object v0

    .line 6099
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map is non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 5988
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5990
    new-instance v0, Ljava/util/Collections$SetFromMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 5989
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map is non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;TT;)Z"
        }
    .end annotation

    .line 912
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "oldVal":Ljava/lang/Object;, "TT;"
    .local p2, "newVal":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 913
    .local v0, "result":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 914
    .local v1, "size":I
    const/16 v2, 0xb

    if-lt v1, v2, :cond_39

    instance-of v2, p0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_e

    goto :goto_39

    .line 931
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 932
    .local v2, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    if-nez p1, :cond_25

    .line 933
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_24

    .line 934
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_21

    .line 935
    invoke-interface {v2, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 936
    const/4 v0, 0x1

    .line 933
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .end local v3    # "i":I
    :cond_24
    goto :goto_60

    .line 940
    :cond_25
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_26
    if-ge v3, v1, :cond_60

    .line 941
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 942
    invoke-interface {v2, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 943
    const/4 v0, 0x1

    .line 940
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 915
    .end local v2    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    .end local v3    # "i":I
    :cond_39
    :goto_39
    if-nez p1, :cond_4c

    .line 916
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    if-ge v2, v1, :cond_4b

    .line 917
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_48

    .line 918
    invoke-interface {p0, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 919
    const/4 v0, 0x1

    .line 916
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .end local v2    # "i":I
    :cond_4b
    goto :goto_60

    .line 923
    :cond_4c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4d
    if-ge v2, v1, :cond_60

    .line 924
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 925
    invoke-interface {p0, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 926
    const/4 v0, 0x1

    .line 923
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 948
    .end local v2    # "i":I
    :cond_60
    :goto_60
    return v0
.end method

.method public static whitelist test-api reverse(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 429
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 430
    .local v0, "size":I
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2f

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_d

    goto :goto_2f

    .line 437
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 438
    .local v1, "fwd":Ljava/util/ListIterator;
    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 439
    .local v2, "rev":Ljava/util/ListIterator;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    .local v4, "mid":I
    :goto_1c
    if-ge v3, v4, :cond_3e

    .line 440
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 441
    .local v5, "tmp":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 442
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 439
    .end local v5    # "tmp":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 431
    .end local v1    # "fwd":Ljava/util/ListIterator;
    .end local v2    # "rev":Ljava/util/ListIterator;
    .end local v3    # "i":I
    .end local v4    # "mid":I
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    .local v1, "i":I
    shr-int/lit8 v2, v0, 0x1

    .local v2, "mid":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "j":I
    :goto_34
    if-ge v1, v2, :cond_3e

    .line 432
    invoke-static {p0, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 445
    .end local v1    # "i":I
    .end local v2    # "mid":I
    .end local v3    # "j":I
    :cond_3e
    return-void
.end method

.method public static whitelist test-api reverseOrder()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 5632
    sget-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    return-object v0
.end method

.method public static whitelist test-api reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 5687
    .local p0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_5

    .line 5688
    sget-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    return-object v0

    .line 5689
    :cond_5
    sget-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    if-ne p0, v0, :cond_c

    .line 5690
    sget-object v0, Ljava/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;

    return-object v0

    .line 5691
    :cond_c
    sget-object v0, Ljava/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;

    if-ne p0, v0, :cond_13

    .line 5692
    sget-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    return-object v0

    .line 5693
    :cond_13
    instance-of v0, p0, Ljava/util/Collections$ReverseComparator2;

    if-eqz v0, :cond_1d

    .line 5694
    move-object v0, p0

    check-cast v0, Ljava/util/Collections$ReverseComparator2;

    iget-object v0, v0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    return-object v0

    .line 5696
    :cond_1d
    new-instance v0, Ljava/util/Collections$ReverseComparator2;

    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparator2;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static whitelist test-api rotate(Ljava/util/List;I)V
    .registers 4
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    .line 848
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_11

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_d

    goto :goto_11

    .line 851
    :cond_d
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate2(Ljava/util/List;I)V

    goto :goto_14

    .line 849
    :cond_11
    :goto_11
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate1(Ljava/util/List;I)V

    .line 852
    :goto_14
    return-void
.end method

.method private static greylist-max-o rotate1(Ljava/util/List;I)V
    .registers 7
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 855
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 856
    .local v0, "size":I
    if-nez v0, :cond_7

    .line 857
    return-void

    .line 858
    :cond_7
    rem-int/2addr p1, v0

    .line 859
    if-gez p1, :cond_b

    .line 860
    add-int/2addr p1, v0

    .line 861
    :cond_b
    if-nez p1, :cond_e

    .line 862
    return-void

    .line 864
    :cond_e
    const/4 v1, 0x0

    .local v1, "cycleStart":I
    const/4 v2, 0x0

    .local v2, "nMoved":I
    :goto_10
    if-eq v2, v0, :cond_26

    .line 865
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 866
    .local v3, "displaced":Ljava/lang/Object;, "TT;"
    move v4, v1

    .line 868
    .local v4, "i":I
    :cond_17
    add-int/2addr v4, p1

    .line 869
    if-lt v4, v0, :cond_1b

    .line 870
    sub-int/2addr v4, v0

    .line 871
    :cond_1b
    invoke-interface {p0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 872
    add-int/lit8 v2, v2, 0x1

    .line 873
    if-ne v4, v1, :cond_17

    .line 864
    .end local v3    # "displaced":Ljava/lang/Object;, "TT;"
    .end local v4    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 875
    .end local v1    # "cycleStart":I
    .end local v2    # "nMoved":I
    :cond_26
    return-void
.end method

.method private static greylist-max-o rotate2(Ljava/util/List;I)V
    .registers 5
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    .line 878
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 879
    .local v0, "size":I
    if-nez v0, :cond_7

    .line 880
    return-void

    .line 881
    :cond_7
    neg-int v1, p1

    rem-int/2addr v1, v0

    .line 882
    .local v1, "mid":I
    if-gez v1, :cond_c

    .line 883
    add-int/2addr v1, v0

    .line 884
    :cond_c
    if-nez v1, :cond_f

    .line 885
    return-void

    .line 887
    :cond_f
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 888
    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 889
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 890
    return-void
.end method

.method public static whitelist test-api shuffle(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 476
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    sget-object v0, Ljava/util/Collections;->r:Ljava/util/Random;

    .line 477
    .local v0, "rnd":Ljava/util/Random;
    if-nez v0, :cond_c

    .line 478
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    move-object v0, v1

    sput-object v1, Ljava/util/Collections;->r:Ljava/util/Random;

    .line 479
    :cond_c
    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 480
    return-void
.end method

.method public static whitelist test-api shuffle(Ljava/util/List;Ljava/util/Random;)V
    .registers 2
    .param p1, "rnd"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 499
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {p0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/random/RandomGenerator;)V

    .line 500
    return-void
.end method

.method public static whitelist test-api shuffle(Ljava/util/List;Ljava/util/random/RandomGenerator;)V
    .registers 8
    .param p1, "rnd"    # Ljava/util/random/RandomGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/random/RandomGenerator;",
            ")V"
        }
    .end annotation

    .line 528
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 529
    .local v0, "size":I
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_33

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_d

    goto :goto_33

    .line 533
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 536
    .local v1, "arr":[Ljava/lang/Object;
    move v3, v0

    .local v3, "i":I
    :goto_12
    if-le v3, v2, :cond_20

    .line 537
    add-int/lit8 v4, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/random/RandomGenerator;->nextInt(I)I

    move-result v5

    invoke-static {v1, v4, v5}, Ljava/util/Collections;->swap([Ljava/lang/Object;II)V

    .line 536
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 543
    .end local v3    # "i":I
    :cond_20
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 544
    .local v2, "it":Ljava/util/ListIterator;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_42

    aget-object v5, v1, v4

    .line 545
    .local v5, "e":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 546
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 544
    .end local v5    # "e":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 530
    .end local v1    # "arr":[Ljava/lang/Object;
    .end local v2    # "it":Ljava/util/ListIterator;
    :cond_33
    :goto_33
    move v1, v0

    .local v1, "i":I
    :goto_34
    if-le v1, v2, :cond_42

    .line 531
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/random/RandomGenerator;->nextInt(I)I

    move-result v4

    invoke-static {p0, v3, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 530
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 549
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method public static whitelist test-api singleton(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 5104
    .local p0, "o":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$SingletonSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static greylist-max-o singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 5108
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api singletonList(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 5232
    .local p0, "o":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$SingletonList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5303
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/Collections$SingletonMap;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static greylist-max-o singletonSpliterator(Ljava/lang/Object;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 5141
    .local p0, "element":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$2;

    invoke-direct {v0, p0}, Ljava/util/Collections$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api sort(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    return-void
.end method

.method public static whitelist test-api sort(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 205
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 206
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x19

    if-le v0, v1, :cond_10

    .line 207
    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_40

    .line 210
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_26

    .line 211
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v2, v3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 212
    return-void

    .line 215
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 216
    .local v1, "a":[Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 217
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 218
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_32
    array-length v4, v1

    if-ge v3, v4, :cond_40

    .line 219
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 220
    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 224
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v2    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    .end local v3    # "j":I
    :cond_40
    :goto_40
    return-void
.end method

.method public static whitelist test-api swap(Ljava/util/List;II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;II)V"
        }
    .end annotation

    .line 569
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v0, p0

    .line 570
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 571
    return-void
.end method

.method private static greylist-max-o swap([Ljava/lang/Object;II)V
    .registers 5
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 577
    aget-object v0, p0, p1

    .line 578
    .local v0, "tmp":Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 579
    aput-object v0, p0, p2

    .line 580
    return-void
.end method

.method public static whitelist test-api synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 2335
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static greylist-max-o synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 2339
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api synchronizedList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2740
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 2741
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_f

    .line 2742
    :cond_a
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    .line 2740
    :goto_f
    return-object v0
.end method

.method static greylist-max-o synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2746
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 2747
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_f

    .line 2748
    :cond_a
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 2746
    :goto_f
    return-object v0
.end method

.method public static whitelist test-api synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2917
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static whitelist test-api synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3216
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedNavigableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static whitelist test-api synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TT;>;)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    .line 2636
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedNavigableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public static whitelist test-api synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 2467
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static greylist-max-o synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 2471
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3114
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static whitelist test-api synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    .line 2540
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 1088
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableCollection;

    if-ne v0, v1, :cond_9

    .line 1089
    return-object p0

    .line 1091
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1518
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableList;

    if-eq v0, v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableRandomAccessList;

    if-ne v0, v1, :cond_11

    goto :goto_21

    .line 1522
    :cond_11
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1b

    .line 1523
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_20

    .line 1524
    :cond_1b
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    .line 1522
    :goto_20
    return-object v0

    .line 1519
    :cond_21
    :goto_21
    return-object p0
.end method

.method public static whitelist test-api unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1675
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableMap;

    if-ne v0, v1, :cond_9

    .line 1676
    return-object p0

    .line 1678
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2170
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;+TV;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableNavigableMap;

    if-ne v0, v1, :cond_9

    .line 2171
    return-object p0

    .line 2173
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TT;>;)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    .line 1424
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableNavigableSet;

    if-ne v0, v1, :cond_9

    .line 1425
    return-object p0

    .line 1427
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableSequencedCollection(Ljava/util/SequencedCollection;)Ljava/util/SequencedCollection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SequencedCollection<",
            "+TT;>;)",
            "Ljava/util/SequencedCollection<",
            "TT;>;"
        }
    .end annotation

    .line 1209
    .local p0, "c":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<+TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableSequencedCollection;

    if-ne v0, v1, :cond_9

    .line 1210
    return-object p0

    .line 1212
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableSequencedCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSequencedCollection;-><init>(Ljava/util/SequencedCollection;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableSequencedMap(Ljava/util/SequencedMap;)Ljava/util/SequencedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SequencedMap<",
            "+TK;+TV;>;)",
            "Ljava/util/SequencedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2052
    .local p0, "m":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<+TK;+TV;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableSequencedMap;

    if-ne v0, v1, :cond_9

    .line 2053
    return-object p0

    .line 2055
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableSequencedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSequencedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableSequencedSet(Ljava/util/SequencedSet;)Ljava/util/SequencedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SequencedSet<",
            "+TT;>;)",
            "Ljava/util/SequencedSet<",
            "TT;>;"
        }
    .end annotation

    .line 1320
    .local p0, "s":Ljava/util/SequencedSet;, "Ljava/util/SequencedSet<+TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableSequencedSet;

    if-ne v0, v1, :cond_9

    .line 1321
    return-object p0

    .line 1323
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableSequencedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSequencedSet;-><init>(Ljava/util/SequencedSet;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1282
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<+TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableSet;

    if-ne v0, v1, :cond_9

    .line 1283
    return-object p0

    .line 1285
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2119
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableSortedMap;

    if-ne v0, v1, :cond_9

    .line 2120
    return-object p0

    .line 2122
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static whitelist test-api unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    .line 1370
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Collections$UnmodifiableSortedSet;

    if-ne v0, v1, :cond_9

    .line 1371
    return-object p0

    .line 1373
    :cond_9
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static greylist-max-o zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3401
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
