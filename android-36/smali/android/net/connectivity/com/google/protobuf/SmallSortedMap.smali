.class Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EmptySet;,
        Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;,
        Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;,
        Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;,
        Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;,
        Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private blacklist entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field private blacklist isImmutable:Z

.field private volatile blacklist lazyDescendingEntrySet:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<",
            "TK;TV;>.DescendingEntrySet;"
        }
    .end annotation
.end field

.field private volatile blacklist lazyEntrySet:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private final blacklist maxArraySize:I

.field private blacklist overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private blacklist overflowEntriesDescending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "arraySize"    # I

    .line 146
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 147
    iput p1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->maxArraySize:I

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;

    .line 83
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;-><init>(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)V
    .registers 1
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    .line 83
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method static synthetic blacklist access$600(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    .line 83
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist access$700(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    .line 83
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$800(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$900(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    .line 83
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist binarySearchInArray(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 315
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    const/4 v0, 0x0

    .line 316
    .local v0, "left":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 321
    .local v1, "right":I
    if-ltz v1, :cond_24

    .line 322
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 323
    .local v2, "cmp":I
    if-lez v2, :cond_21

    .line 324
    add-int/lit8 v3, v1, 0x2

    neg-int v3, v3

    return v3

    .line 325
    :cond_21
    if-nez v2, :cond_24

    .line 326
    return v1

    .line 330
    .end local v2    # "cmp":I
    :cond_24
    :goto_24
    if-gt v0, v1, :cond_45

    .line 331
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 332
    .local v2, "mid":I
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 333
    .local v3, "cmp":I
    if-gez v3, :cond_3f

    .line 334
    add-int/lit8 v1, v2, -0x1

    goto :goto_43

    .line 335
    :cond_3f
    if-lez v3, :cond_44

    .line 336
    add-int/lit8 v0, v2, 0x1

    .line 340
    .end local v2    # "mid":I
    .end local v3    # "cmp":I
    :goto_43
    goto :goto_24

    .line 338
    .restart local v2    # "mid":I
    .restart local v3    # "cmp":I
    :cond_44
    return v2

    .line 341
    .end local v2    # "mid":I
    .end local v3    # "cmp":I
    :cond_45
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private blacklist checkMutable()V
    .registers 2

    .line 368
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_5

    .line 371
    return-void

    .line 369
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private blacklist ensureEntryArrayMutable()V
    .registers 3

    .line 388
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 389
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 392
    :cond_1a
    return-void
.end method

.method private blacklist getOverflowEntriesMutable()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 379
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_22

    .line 380
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 381
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 383
    :cond_22
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static blacklist newFieldMap(I)Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
    .registers 2
    .param p0, "arraySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TFieldDescriptorType;>;>(I)",
            "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;-><init>(I)V

    return-object v0
.end method

.method static blacklist newInstanceForTest(I)Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
    .registers 2
    .param p0, "arraySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;-><init>(I)V

    return-object v0
.end method

.method private blacklist removeArrayEntryAt(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 297
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 298
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, "removed":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 302
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v3, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, p0, v4}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 306
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_36
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 264
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 265
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 266
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 269
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 271
    :cond_1d
    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 218
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 219
    .local v0, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    if-gez v1, :cond_14

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    return v1
.end method

.method blacklist descendingEntrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 360
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v0, :cond_c

    .line 361
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 363
    :cond_c
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntrySet;

    return-object v0
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

    .line 353
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->lazyEntrySet:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_c

    .line 354
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->lazyEntrySet:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;

    .line 356
    :cond_c
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->lazyEntrySet:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 664
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 665
    return v0

    .line 668
    :cond_4
    instance-of v1, p1, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    if-nez v1, :cond_d

    .line 669
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 672
    :cond_d
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    .line 673
    .local v1, "other":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<**>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->size()I

    move-result v2

    .line 674
    .local v2, "size":I
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1c

    .line 675
    return v4

    .line 679
    :cond_1c
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    .line 680
    .local v3, "numArrayEntries":I
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v5

    if-eq v3, v5, :cond_33

    .line 681
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 684
    :cond_33
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    if-ge v5, v3, :cond_48

    .line 685
    invoke-virtual {p0, v5}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v1, v5}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 686
    return v4

    .line 684
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 690
    .end local v5    # "i":I
    :cond_48
    if-eq v3, v2, :cond_53

    .line 691
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 694
    :cond_53
    return v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 230
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 231
    .local v0, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    .line 232
    .local v1, "index":I
    if-ltz v1, :cond_16

    .line 233
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 235
    :cond_16
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getArrayEntryAt(I)Ljava/util/Map$Entry;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public blacklist getNumArrayEntries()I
    .registers 2

    .line 179
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getNumOverflowEntries()I
    .registers 2

    .line 189
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getOverflowEntries()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 195
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_13

    .line 196
    :cond_d
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 194
    :goto_13
    return-object v0
.end method

.method blacklist getOverflowEntriesDescending()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 201
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_13

    .line 202
    :cond_d
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 200
    :goto_13
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 699
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 700
    .local v0, "h":I
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    .line 701
    .local v1, "listSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_18

    .line 702
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 705
    .end local v2    # "i":I
    :cond_18
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getNumOverflowEntries()I

    move-result v2

    if-lez v2, :cond_25

    .line 706
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 708
    :cond_25
    return v0
.end method

.method public blacklist isImmutable()Z
    .registers 2

    .line 174
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public blacklist makeImmutable()V
    .registers 2

    .line 155
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_33

    .line 160
    nop

    .line 161
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 162
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_18

    .line 163
    :cond_12
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 164
    nop

    .line 165
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_2e

    .line 167
    :cond_28
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2e
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->isImmutable:Z

    .line 170
    :cond_33
    return-void
.end method

.method public blacklist put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 240
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 241
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 242
    .local v0, "index":I
    if-ltz v0, :cond_16

    .line 244
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v1, p2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 246
    :cond_16
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    .line 247
    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    .line 248
    .local v1, "insertionPoint":I
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->maxArraySize:I

    if-lt v1, v2, :cond_29

    .line 250
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 253
    :cond_29
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->maxArraySize:I

    if-ne v2, v3, :cond_4e

    .line 255
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->maxArraySize:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    .line 256
    .local v2, "lastEntryInArray":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v2    # "lastEntryInArray":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    :cond_4e
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v3, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 259
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 83
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 280
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 282
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 283
    .local v0, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    .line 284
    .local v1, "index":I
    if-ltz v1, :cond_11

    .line 285
    invoke-direct {p0, v1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 289
    :cond_11
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 290
    const/4 v2, 0x0

    return-object v2

    .line 292
    :cond_1b
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 207
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
