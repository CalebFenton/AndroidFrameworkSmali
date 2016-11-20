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
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient queue:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 122
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/16 v0, 0xb

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@6
    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 135
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@4
    .line 134
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 162
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 166
    const/4 v0, 0x1

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 168
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    #@e
    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@10
    .line 169
    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@12
    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 189
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 190
    instance-of v2, p1, Ljava/util/SortedSet;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v1, p1

    #@8
    .line 191
    check-cast v1, Ljava/util/SortedSet;

    #@a
    .line 192
    .local v1, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@10
    .line 193
    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    #@13
    .line 189
    .end local v1    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    :goto_0
    return-void

    #@14
    .line 195
    :cond_0
    instance-of v2, p1, Ljava/util/PriorityQueue;

    #@16
    if-eqz v2, :cond_1

    #@18
    move-object v0, p1

    #@19
    .line 196
    check-cast v0, Ljava/util/PriorityQueue;

    #@1b
    .line 197
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@21
    .line 198
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    #@24
    goto :goto_0

    #@25
    .line 201
    .end local v0    # "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    :cond_1
    const/4 v2, 0x0

    #@26
    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@28
    .line 202
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    #@2b
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 148
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/16 v0, 0xb

    #@2
    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@5
    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 222
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@9
    .line 223
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    #@c
    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 241
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@9
    .line 242
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    #@c
    .line 240
    return-void
.end method

.method private grow(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 292
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@2
    array-length v1, v2

    #@3
    .line 294
    .local v1, "oldCapacity":I
    const/16 v2, 0x40

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 295
    add-int/lit8 v2, v1, 0x2

    #@9
    .line 294
    :goto_0
    add-int v0, v1, v2

    #@b
    .line 298
    .local v0, "newCapacity":I
    const v2, 0x7ffffff7

    #@e
    sub-int v2, v0, v2

    #@10
    if-lez v2, :cond_0

    #@12
    .line 299
    invoke-static {p1}, Ljava/util/PriorityQueue;->hugeCapacity(I)I

    #@15
    move-result v0

    #@16
    .line 300
    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@18
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@1e
    .line 291
    return-void

    #@1f
    .line 296
    .end local v0    # "newCapacity":I
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    #@21
    goto :goto_0
.end method

.method private heapify()V
    .locals 2

    #@0
    .prologue
    .line 735
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@2
    ushr-int/lit8 v1, v1, 0x1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 736
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@a
    aget-object v1, v1, v0

    #@c
    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    #@f
    .line 735
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_0

    #@12
    .line 734
    :cond_0
    return-void
.end method

.method private static hugeCapacity(I)I
    .locals 1
    .param p0, "minCapacity"    # I

    #@0
    .prologue
    const v0, 0x7ffffff7

    #@3
    .line 304
    if-gez p0, :cond_0

    #@5
    .line 305
    new-instance v0, Ljava/lang/OutOfMemoryError;

    #@7
    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    #@a
    throw v0

    #@b
    .line 306
    :cond_0
    if-le p0, v0, :cond_1

    #@d
    .line 307
    const v0, 0x7fffffff

    #@10
    .line 306
    :cond_1
    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 354
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 355
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 356
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@9
    aget-object v1, v1, v0

    #@b
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 357
    return v0

    #@12
    .line 355
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 359
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    #@16
    return v1
.end method

.method private initElementsFromCollection(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 255
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v3

    #@8
    const-class v4, [Ljava/lang/Object;

    #@a
    if-eq v3, v4, :cond_0

    #@c
    .line 258
    array-length v3, v0

    #@d
    const-class v4, [Ljava/lang/Object;

    #@f
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 259
    :cond_0
    array-length v2, v0

    #@14
    .line 260
    .local v2, "len":I
    const/4 v3, 0x1

    #@15
    if-eq v2, v3, :cond_1

    #@17
    iget-object v3, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 261
    :cond_1
    const/4 v3, 0x0

    #@1c
    array-length v4, v0

    #@1d
    :goto_0
    if-ge v3, v4, :cond_3

    #@1f
    aget-object v1, v0, v3

    #@21
    .line 262
    .local v1, "e":Ljava/lang/Object;
    if-nez v1, :cond_2

    #@23
    .line 263
    new-instance v3, Ljava/lang/NullPointerException;

    #@25
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@28
    throw v3

    #@29
    .line 261
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 264
    .end local v1    # "e":Ljava/lang/Object;
    :cond_3
    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@2e
    .line 265
    array-length v3, v0

    #@2f
    iput v3, p0, Ljava/util/PriorityQueue;->size:I

    #@31
    .line 254
    return-void
.end method

.method private initFromCollection(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 274
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    #@3
    .line 275
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    #@6
    .line 273
    return-void
.end method

.method private initFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Ljava/util/PriorityQueue;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 247
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@e
    .line 248
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    #@14
    .line 245
    :goto_0
    return-void

    #@15
    .line 250
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    #@18
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 786
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 789
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    .line 791
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    iput-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@c
    .line 794
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 795
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@13
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v1, v0

    #@19
    .line 794
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 799
    :cond_0
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    #@1f
    .line 784
    return-void
.end method

.method private siftDown(ILjava/lang/Object;)V
    .locals 1
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 686
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 687
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftDownUsingComparator(ILjava/lang/Object;)V

    #@7
    .line 685
    :goto_0
    return-void

    #@8
    .line 689
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftDownComparable(ILjava/lang/Object;)V

    #@b
    goto :goto_0
.end method

.method private siftDownComparable(ILjava/lang/Object;)V
    .locals 7
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    move-object v3, p2

    #@1
    .line 694
    check-cast v3, Ljava/lang/Comparable;

    #@3
    .line 695
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TE;>;"
    iget v5, p0, Ljava/util/PriorityQueue;->size:I

    #@5
    ushr-int/lit8 v2, v5, 0x1

    #@7
    .line 696
    .local v2, "half":I
    :goto_0
    if-ge p1, v2, :cond_1

    #@9
    .line 697
    shl-int/lit8 v5, p1, 0x1

    #@b
    add-int/lit8 v1, v5, 0x1

    #@d
    .line 698
    .local v1, "child":I
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@f
    aget-object v0, v5, v1

    #@11
    .line 699
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v4, v1, 0x1

    #@13
    .line 700
    .local v4, "right":I
    iget v5, p0, Ljava/util/PriorityQueue;->size:I

    #@15
    if-ge v4, v5, :cond_0

    #@17
    move-object v5, v0

    #@18
    .line 701
    check-cast v5, Ljava/lang/Comparable;

    #@1a
    iget-object v6, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@1c
    aget-object v6, v6, v4

    #@1e
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@21
    move-result v5

    #@22
    if-lez v5, :cond_0

    #@24
    .line 702
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@26
    move v1, v4

    #@27
    aget-object v0, v5, v4

    #@29
    .line 703
    :cond_0
    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@2c
    move-result v5

    #@2d
    if-gtz v5, :cond_2

    #@2f
    .line 708
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v4    # "right":I
    :cond_1
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@31
    aput-object v3, v5, p1

    #@33
    .line 693
    return-void

    #@34
    .line 705
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v4    # "right":I
    :cond_2
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@36
    aput-object v0, v5, p1

    #@38
    .line 706
    move p1, v1

    #@39
    goto :goto_0
.end method

.method private siftDownUsingComparator(ILjava/lang/Object;)V
    .locals 6
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 713
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget v4, p0, Ljava/util/PriorityQueue;->size:I

    #@2
    ushr-int/lit8 v2, v4, 0x1

    #@4
    .line 714
    .local v2, "half":I
    :goto_0
    if-ge p1, v2, :cond_1

    #@6
    .line 715
    shl-int/lit8 v4, p1, 0x1

    #@8
    add-int/lit8 v1, v4, 0x1

    #@a
    .line 716
    .local v1, "child":I
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@c
    aget-object v0, v4, v1

    #@e
    .line 717
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    #@10
    .line 718
    .local v3, "right":I
    iget v4, p0, Ljava/util/PriorityQueue;->size:I

    #@12
    if-ge v3, v4, :cond_0

    #@14
    .line 719
    iget-object v4, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@16
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@18
    aget-object v5, v5, v3

    #@1a
    invoke-interface {v4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1d
    move-result v4

    #@1e
    if-lez v4, :cond_0

    #@20
    .line 720
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@22
    move v1, v3

    #@23
    aget-object v0, v4, v3

    #@25
    .line 721
    :cond_0
    iget-object v4, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@27
    invoke-interface {v4, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2a
    move-result v4

    #@2b
    if-gtz v4, :cond_2

    #@2d
    .line 726
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v3    # "right":I
    :cond_1
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@2f
    aput-object p2, v4, p1

    #@31
    .line 712
    return-void

    #@32
    .line 723
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v3    # "right":I
    :cond_2
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@34
    aput-object v0, v4, p1

    #@36
    .line 724
    move p1, v1

    #@37
    goto :goto_0
.end method

.method private siftUp(ILjava/lang/Object;)V
    .locals 1
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 644
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 645
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftUpUsingComparator(ILjava/lang/Object;)V

    #@7
    .line 643
    :goto_0
    return-void

    #@8
    .line 647
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftUpComparable(ILjava/lang/Object;)V

    #@b
    goto :goto_0
.end method

.method private siftUpComparable(ILjava/lang/Object;)V
    .locals 4
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    move-object v1, p2

    #@1
    .line 652
    check-cast v1, Ljava/lang/Comparable;

    #@3
    .line 653
    .local v1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TE;>;"
    :goto_0
    if-lez p1, :cond_0

    #@5
    .line 654
    add-int/lit8 v3, p1, -0x1

    #@7
    ushr-int/lit8 v2, v3, 0x1

    #@9
    .line 655
    .local v2, "parent":I
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@b
    aget-object v0, v3, v2

    #@d
    .line 656
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@10
    move-result v3

    #@11
    if-ltz v3, :cond_1

    #@13
    .line 661
    .end local v0    # "e":Ljava/lang/Object;
    .end local v2    # "parent":I
    :cond_0
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@15
    aput-object v1, v3, p1

    #@17
    .line 651
    return-void

    #@18
    .line 658
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v2    # "parent":I
    :cond_1
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@1a
    aput-object v0, v3, p1

    #@1c
    .line 659
    move p1, v2

    #@1d
    goto :goto_0
.end method

.method private siftUpUsingComparator(ILjava/lang/Object;)V
    .locals 3
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 666
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    :goto_0
    if-lez p1, :cond_0

    #@2
    .line 667
    add-int/lit8 v2, p1, -0x1

    #@4
    ushr-int/lit8 v1, v2, 0x1

    #@6
    .line 668
    .local v1, "parent":I
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@8
    aget-object v0, v2, v1

    #@a
    .line 669
    .local v0, "e":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@c
    invoke-interface {v2, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@f
    move-result v2

    #@10
    if-ltz v2, :cond_1

    #@12
    .line 674
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "parent":I
    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@14
    aput-object p2, v2, p1

    #@16
    .line 665
    return-void

    #@17
    .line 671
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v1    # "parent":I
    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@19
    aput-object v0, v2, p1

    #@1b
    .line 672
    move p1, v1

    #@1c
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
    .line 764
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 767
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@5
    add-int/lit8 v1, v1, 0x1

    #@7
    const/4 v2, 0x2

    #@8
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@b
    move-result v1

    #@c
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@f
    .line 770
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 771
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@16
    aget-object v1, v1, v0

    #@18
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1b
    .line 770
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 762
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 321
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    .line 579
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v1, p0, Ljava/util/PriorityQueue;->modCount:I

    #@2
    add-int/lit8 v1, v1, 0x1

    #@4
    iput v1, p0, Ljava/util/PriorityQueue;->modCount:I

    #@6
    .line 580
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 581
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v2, v1, v0

    #@10
    .line 580
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 582
    :cond_0
    const/4 v1, 0x0

    #@14
    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    #@16
    .line 578
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 749
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 409
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 484
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$Itr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$Itr;)V

    #@6
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    #@1
    .line 334
    if-nez p1, :cond_0

    #@3
    .line 335
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 336
    :cond_0
    iget v1, p0, Ljava/util/PriorityQueue;->modCount:I

    #@b
    add-int/lit8 v1, v1, 0x1

    #@d
    iput v1, p0, Ljava/util/PriorityQueue;->modCount:I

    #@f
    .line 337
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    #@11
    .line 338
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@13
    array-length v1, v1

    #@14
    if-lt v0, v1, :cond_1

    #@16
    .line 339
    add-int/lit8 v1, v0, 0x1

    #@18
    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->grow(I)V

    #@1b
    .line 340
    :cond_1
    add-int/lit8 v1, v0, 0x1

    #@1d
    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    #@1f
    .line 341
    if-nez v0, :cond_2

    #@21
    .line 342
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@23
    aput-object p1, v1, v2

    #@25
    .line 345
    :goto_0
    const/4 v1, 0x1

    #@26
    return v1

    #@27
    .line 344
    :cond_2
    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    #@2a
    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 350
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    #@3
    if-nez v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@9
    aget-object v0, v0, v1

    #@b
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 587
    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    #@4
    if-nez v3, :cond_0

    #@6
    .line 588
    return-object v5

    #@7
    .line 589
    :cond_0
    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    #@d
    .line 590
    .local v1, "s":I
    iget v3, p0, Ljava/util/PriorityQueue;->modCount:I

    #@f
    add-int/lit8 v3, v3, 0x1

    #@11
    iput v3, p0, Ljava/util/PriorityQueue;->modCount:I

    #@13
    .line 591
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@15
    aget-object v0, v3, v4

    #@17
    .line 592
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@19
    aget-object v2, v3, v1

    #@1b
    .line 593
    .local v2, "x":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@1d
    aput-object v5, v3, v1

    #@1f
    .line 594
    if-eqz v1, :cond_1

    #@21
    .line 595
    invoke-direct {p0, v4, v2}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    #@24
    .line 596
    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 374
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 375
    .local v0, "i":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 376
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 378
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    #@c
    .line 379
    const/4 v1, 0x1

    #@d
    return v1
.end method

.method removeAt(I)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 614
    iget v2, p0, Ljava/util/PriorityQueue;->modCount:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Ljava/util/PriorityQueue;->modCount:I

    #@7
    .line 615
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    #@9
    add-int/lit8 v1, v2, -0x1

    #@b
    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    #@d
    .line 616
    .local v1, "s":I
    if-ne v1, p1, :cond_1

    #@f
    .line 617
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@11
    aput-object v3, v2, p1

    #@13
    .line 628
    :cond_0
    return-object v3

    #@14
    .line 619
    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@16
    aget-object v0, v2, v1

    #@18
    .line 620
    .local v0, "moved":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@1a
    aput-object v3, v2, v1

    #@1c
    .line 621
    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    #@1f
    .line 622
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@21
    aget-object v2, v2, p1

    #@23
    if-ne v2, v0, :cond_0

    #@25
    .line 623
    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    #@28
    .line 624
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@2a
    aget-object v2, v2, p1

    #@2c
    if-eq v2, v0, :cond_0

    #@2e
    .line 625
    return-object v0
.end method

.method removeEq(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 391
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 392
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@7
    aget-object v1, v1, v0

    #@9
    if-ne p1, v1, :cond_0

    #@b
    .line 393
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    #@e
    .line 394
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 397
    :cond_1
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 571
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    #@2
    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 816
    new-instance v0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {v0, p0, v2, v1, v2}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    #@7
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 426
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@2
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    #@1
    .line 467
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    #@3
    .line 468
    .local v0, "size":I
    array-length v1, p1

    #@4
    if-ge v1, v0, :cond_0

    #@6
    .line 470
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 471
    :cond_0
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@13
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 472
    array-length v1, p1

    #@17
    if-le v1, v0, :cond_1

    #@19
    .line 473
    const/4 v1, 0x0

    #@1a
    aput-object v1, p1, v0

    #@1c
    .line 474
    :cond_1
    return-object p1
.end method
