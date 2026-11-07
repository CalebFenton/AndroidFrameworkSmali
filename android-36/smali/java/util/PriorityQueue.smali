.class public Ljava/util/PriorityQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PriorityQueue$Itr;,
        Ljava/util/PriorityQueue$PriorityQueueSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INITIAL_CAPACITY:I = 0xb

.field public static final blacklist PRIORITY_QUEUE_OFFER_NON_COMPARABLE_ONE_ELEMENT:J = 0x1147310bL

.field private static final whitelist serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private final greylist-max-o comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field transient greylist modCount:I

.field transient greylist queue:[Ljava/lang/Object;

.field greylist size:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 136
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 137
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 149
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 150
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/Comparator;)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 180
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 182
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 183
    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 184
    return-void

    .line 181
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 203
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_14

    .line 204
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    .line 205
    .local v0, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 206
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 207
    .end local v0    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    goto :goto_2b

    .line 208
    :cond_14
    instance-of v0, p1, Ljava/util/PriorityQueue;

    if-eqz v0, :cond_25

    .line 209
    move-object v0, p1

    check-cast v0, Ljava/util/PriorityQueue;

    .line 210
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 211
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 212
    .end local v0    # "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    goto :goto_2b

    .line 214
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 215
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    .line 217
    :goto_2b
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 163
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/PriorityQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "+TE;>;)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 234
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 235
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 236
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/SortedSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 251
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 252
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 253
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 254
    return-void
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 946
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 947
    .local v0, "expectedModCount":I
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 948
    .local v2, "es":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    .line 951
    .local v3, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    if-ge v4, v3, :cond_18

    aget-object v5, v2, v4

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 953
    :cond_18
    const/4 v5, 0x0

    if-lt v4, v3, :cond_26

    .line 954
    iget v1, p0, Ljava/util/PriorityQueue;->modCount:I

    if-ne v1, v0, :cond_20

    .line 956
    return v5

    .line 955
    :cond_20
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 961
    :cond_26
    move v6, v4

    .line 962
    .local v6, "beg":I
    sub-int v7, v3, v6

    invoke-static {v7}, Ljava/util/PriorityQueue;->nBits(I)[J

    move-result-object v7

    .line 963
    .local v7, "deathRow":[J
    const-wide/16 v8, 0x1

    aput-wide v8, v7, v5

    .line 964
    add-int/lit8 v4, v6, 0x1

    :goto_33
    if-ge v4, v3, :cond_45

    .line 965
    aget-object v5, v2, v4

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 966
    sub-int v5, v4, v6

    invoke-static {v7, v5}, Ljava/util/PriorityQueue;->setBit([JI)V

    .line 964
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 967
    :cond_45
    iget v5, p0, Ljava/util/PriorityQueue;->modCount:I

    if-ne v5, v0, :cond_6e

    .line 969
    move v5, v6

    .line 970
    .local v5, "w":I
    move v4, v6

    :goto_4b
    if-ge v4, v3, :cond_5f

    .line 971
    sub-int v8, v4, v6

    invoke-static {v7, v8}, Ljava/util/PriorityQueue;->isClear([JI)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 972
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "w":I
    .local v8, "w":I
    aget-object v9, v2, v4

    aput-object v9, v2, v5

    move v5, v8

    .line 970
    .end local v8    # "w":I
    .restart local v5    # "w":I
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 973
    :cond_5f
    iput v5, p0, Ljava/util/PriorityQueue;->size:I

    move v4, v5

    :goto_62
    if-ge v4, v3, :cond_6a

    .line 974
    const/4 v8, 0x0

    aput-object v8, v2, v4

    .line 973
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 975
    :cond_6a
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    .line 976
    return v1

    .line 968
    .end local v5    # "w":I
    :cond_6e
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private static blacklist ensureNonEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .param p0, "es"    # [Ljava/lang/Object;

    .line 258
    array-length v0, p0

    if-lez v0, :cond_5

    move-object v0, p0

    goto :goto_8

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    :goto_8
    return-object v0
.end method

.method private greylist-max-o grow(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .line 299
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v0, v0

    .line 301
    .local v0, "oldCapacity":I
    sub-int v1, p1, v0

    .line 303
    const/16 v2, 0x40

    if-ge v0, v2, :cond_c

    add-int/lit8 v2, v0, 0x2

    goto :goto_e

    :cond_c
    shr-int/lit8 v2, v0, 0x1

    .line 301
    :goto_e
    invoke-static {v0, v1, v2}, Ljdk/internal/util/ArraysSupport;->newLength(III)I

    move-result v1

    .line 305
    .local v1, "newCapacity":I
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 306
    return-void
.end method

.method private greylist-max-o heapify()V
    .registers 6

    .line 744
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 745
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    .local v1, "n":I
    ushr-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 747
    .local v2, "i":I
    iget-object v3, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    move-object v4, v3

    .local v4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v3, :cond_17

    .line 748
    :goto_d
    if-ltz v2, :cond_21

    .line 749
    aget-object v3, v0, v2

    invoke-static {v2, v3, v0, v1}, Ljava/util/PriorityQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 748
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 751
    :cond_17
    :goto_17
    if-ltz v2, :cond_21

    .line 752
    aget-object v3, v0, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/util/PriorityQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 751
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 753
    :cond_21
    return-void
.end method

.method private greylist-max-o indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 358
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    if-eqz p1, :cond_15

    .line 359
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 360
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_15

    .line 361
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 362
    return v1

    .line 360
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 364
    .end local v0    # "es":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o initElementsFromCollection(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    .line 273
    .local v1, "len":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    if-eq v2, v3, :cond_13

    .line 274
    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 275
    :cond_13
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    iget-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2b

    .line 276
    :cond_1a
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2b

    aget-object v4, v0, v3

    .line 277
    .local v4, "e":Ljava/lang/Object;
    if-eqz v4, :cond_25

    .line 276
    .end local v4    # "e":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 278
    .restart local v4    # "e":Ljava/lang/Object;
    :cond_25
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 279
    .end local v4    # "e":Ljava/lang/Object;
    :cond_2b
    invoke-static {v0}, Ljava/util/PriorityQueue;->ensureNonEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 280
    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    .line 281
    return-void
.end method

.method private greylist-max-o initFromCollection(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 289
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 290
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    .line 291
    return-void
.end method

.method private greylist-max-o initFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "+TE;>;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/PriorityQueue;

    if-ne v0, v1, :cond_19

    .line 263
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/PriorityQueue;->ensureNonEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 264
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    goto :goto_1c

    .line 266
    :cond_19
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    .line 268
    :goto_1c
    return-void
.end method

.method private static blacklist isClear([JI)Z
    .registers 6
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 941
    shr-int/lit8 v0, p1, 0x6

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 921
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 929
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist nBits(I)[J
    .registers 2
    .param p0, "n"    # I

    .line 935
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 805
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 808
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 810
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    invoke-interface {v0, p1, v1, v2}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 811
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 814
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    .local v2, "n":I
    :goto_1f
    if-ge v1, v2, :cond_2a

    .line 815
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 819
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2a
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    .line 820
    return-void
.end method

.method private static blacklist setBit([JI)V
    .registers 7
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 938
    shr-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 939
    return-void
.end method

.method private greylist-max-o siftDown(ILjava/lang/Object;)V
    .registers 6
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 695
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_e

    .line 696
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    iget-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0, v1, v2}, Ljava/util/PriorityQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    goto :goto_15

    .line 698
    :cond_e
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    invoke-static {p1, p2, v0, v1}, Ljava/util/PriorityQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 699
    :goto_15
    return-void
.end method

.method private static blacklist siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V
    .registers 11
    .param p0, "k"    # I
    .param p2, "es"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 703
    .local p1, "x":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 704
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    ushr-int/lit8 v1, p3, 0x1

    .line 705
    .local v1, "half":I
    :goto_5
    if-ge p0, v1, :cond_2a

    .line 706
    shl-int/lit8 v2, p0, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 707
    .local v2, "child":I
    aget-object v3, p2, v2

    .line 708
    .local v3, "c":Ljava/lang/Object;
    add-int/lit8 v4, v2, 0x1

    .line 709
    .local v4, "right":I
    if-ge v4, p3, :cond_1f

    move-object v5, v3

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, p2, v4

    .line 710
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1f

    .line 711
    move v2, v4

    aget-object v3, p2, v4

    .line 712
    :cond_1f
    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_26

    .line 713
    goto :goto_2a

    .line 714
    :cond_26
    aput-object v3, p2, p0

    .line 715
    move p0, v2

    .line 716
    .end local v2    # "child":I
    .end local v3    # "c":Ljava/lang/Object;
    .end local v4    # "right":I
    goto :goto_5

    .line 717
    :cond_2a
    :goto_2a
    aput-object v0, p2, p0

    .line 718
    return-void
.end method

.method private static blacklist siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V
    .registers 10
    .param p0, "k"    # I
    .param p2, "es"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 723
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    ushr-int/lit8 v0, p3, 0x1

    .line 724
    .local v0, "half":I
    :goto_2
    if-ge p0, v0, :cond_24

    .line 725
    shl-int/lit8 v1, p0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 726
    .local v1, "child":I
    aget-object v2, p2, v1

    .line 727
    .local v2, "c":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    .line 728
    .local v3, "right":I
    if-ge v3, p3, :cond_19

    aget-object v4, p2, v3

    invoke-interface {p4, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_19

    .line 729
    move v1, v3

    aget-object v2, p2, v3

    .line 730
    :cond_19
    invoke-interface {p4, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_20

    .line 731
    goto :goto_24

    .line 732
    :cond_20
    aput-object v2, p2, p0

    .line 733
    move p0, v1

    .line 734
    .end local v1    # "child":I
    .end local v2    # "c":Ljava/lang/Object;
    .end local v3    # "right":I
    goto :goto_2

    .line 735
    :cond_24
    :goto_24
    aput-object p1, p2, p0

    .line 736
    return-void
.end method

.method private greylist-max-o siftUp(ILjava/lang/Object;)V
    .registers 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 654
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_c

    .line 655
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0, v1}, Ljava/util/PriorityQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_11

    .line 657
    :cond_c
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Ljava/util/PriorityQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    .line 658
    :goto_11
    return-void
.end method

.method private static blacklist siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p0, "k"    # I
    .param p2, "es"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 661
    .local p1, "x":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 662
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :goto_3
    if-lez p0, :cond_16

    .line 663
    add-int/lit8 v1, p0, -0x1

    ushr-int/lit8 v1, v1, 0x1

    .line 664
    .local v1, "parent":I
    aget-object v2, p2, v1

    .line 665
    .local v2, "e":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_12

    .line 666
    goto :goto_16

    .line 667
    :cond_12
    aput-object v2, p2, p0

    .line 668
    move p0, v1

    .line 669
    .end local v1    # "parent":I
    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_3

    .line 670
    :cond_16
    :goto_16
    aput-object v0, p2, p0

    .line 671
    return-void
.end method

.method private static blacklist siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 7
    .param p0, "k"    # I
    .param p2, "es"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 675
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    :goto_1
    if-lez p0, :cond_14

    .line 676
    add-int/lit8 v0, p0, -0x1

    ushr-int/lit8 v0, v0, 0x1

    .line 677
    .local v0, "parent":I
    aget-object v1, p2, v0

    .line 678
    .local v1, "e":Ljava/lang/Object;
    invoke-interface {p3, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_10

    .line 679
    goto :goto_14

    .line 680
    :cond_10
    aput-object v1, p2, p0

    .line 681
    move p0, v0

    .line 682
    .end local v0    # "parent":I
    .end local v1    # "e":Ljava/lang/Object;
    goto :goto_1

    .line 683
    :cond_14
    :goto_14
    aput-object p1, p2, p0

    .line 684
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 784
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 787
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 788
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    .local v2, "n":I
    :goto_14
    if-ge v1, v2, :cond_1e

    .line 789
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 788
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 790
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1e
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 318
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 582
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 583
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 584
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    .local v2, "n":I
    :goto_b
    if-ge v1, v2, :cond_13

    .line 585
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 586
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_13
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    .line 587
    return-void
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 765
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 412
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 983
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget v0, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 985
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 986
    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    .local v3, "n":I
    :goto_a
    if-ge v2, v3, :cond_14

    .line 987
    aget-object v4, v1, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 986
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 988
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_14
    iget v2, p0, Ljava/util/PriorityQueue;->modCount:I

    if-ne v0, v2, :cond_19

    .line 990
    return-void

    .line 989
    :cond_19
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 486
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 331
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3f

    .line 333
    iget v0, p0, Ljava/util/PriorityQueue;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 334
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 335
    .local v0, "i":I
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_14

    .line 336
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Ljava/util/PriorityQueue;->grow(I)V

    .line 337
    :cond_14
    if-nez v0, :cond_37

    .line 339
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2b

    .line 340
    const-wide/32 v2, 0x1147310b

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_2b

    :cond_29
    move v2, v4

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v2, v1

    .line 341
    .local v2, "usePreAndroidUBehavior":Z
    :goto_2c
    if-eqz v2, :cond_33

    .line 342
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p1, v3, v4

    goto :goto_36

    .line 344
    :cond_33
    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    .line 346
    .end local v2    # "usePreAndroidUBehavior":Z
    :goto_36
    goto :goto_3a

    .line 347
    :cond_37
    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    .line 349
    :goto_3a
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/PriorityQueue;->size:I

    .line 350
    return v1

    .line 332
    .end local v0    # "i":I
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 354
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 593
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v0, v0, v2

    move-object v3, v0

    .local v3, "result":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_29

    .line 594
    iget v0, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 596
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    move v4, v0

    .local v4, "n":I
    aget-object v0, v1, v0

    .line 597
    .local v0, "x":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    aput-object v5, v1, v4

    .line 598
    if-lez v4, :cond_29

    .line 600
    iget-object v5, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    move-object v6, v5

    .local v6, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v5, :cond_26

    .line 601
    invoke-static {v2, v0, v1, v4}, Ljava/util/PriorityQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    goto :goto_29

    .line 603
    :cond_26
    invoke-static {v2, v0, v1, v4, v6}, Ljava/util/PriorityQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 606
    .end local v0    # "x":Ljava/lang/Object;, "TE;"
    .end local v4    # "n":I
    .end local v6    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :cond_29
    :goto_29
    return-object v3
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 379
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 380
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 381
    const/4 v1, 0x0

    return v1

    .line 383
    :cond_9
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    .line 384
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 920
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    new-instance v0, Ljava/util/PriorityQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/PriorityQueue$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o removeAt(I)Ljava/lang/Object;
    .registers 7
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 623
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 624
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 625
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    .line 626
    .local v1, "s":I
    const/4 v2, 0x0

    if-ne v1, p1, :cond_14

    .line 627
    aput-object v2, v0, p1

    goto :goto_27

    .line 629
    :cond_14
    aget-object v3, v0, v1

    .line 630
    .local v3, "moved":Ljava/lang/Object;, "TE;"
    aput-object v2, v0, v1

    .line 631
    invoke-direct {p0, p1, v3}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    .line 632
    aget-object v4, v0, p1

    if-ne v4, v3, :cond_27

    .line 633
    invoke-direct {p0, p1, v3}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    .line 634
    aget-object v4, v0, p1

    if-eq v4, v3, :cond_27

    .line 635
    return-object v3

    .line 638
    .end local v3    # "moved":Ljava/lang/Object;, "TE;"
    :cond_27
    :goto_27
    return-object v2
.end method

.method blacklist removeEq(Ljava/lang/Object;)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 394
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 395
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_12

    .line 396
    aget-object v3, v0, v1

    if-ne p1, v3, :cond_f

    .line 397
    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    .line 398
    goto :goto_12

    .line 395
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 401
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 912
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 928
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    new-instance v0, Ljava/util/PriorityQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/PriorityQueue$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 574
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 837
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 429
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 469
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 470
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_10

    .line 472
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 473
    :cond_10
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    array-length v1, p1

    if-le v1, v0, :cond_1c

    .line 475
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 476
    :cond_1c
    return-object p1
.end method
