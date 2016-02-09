.class public Ljava/util/PriorityQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PriorityQueue$PriorityIterator;
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
.field private static final DEFAULT_CAPACITY:I = 0xb

.field private static final DEFAULT_CAPACITY_RATIO:I = 0x2

.field private static final DEFAULT_INIT_CAPACITY_RATIO:D = 1.1

.field private static final serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/PriorityQueue;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/PriorityQueue;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/util/PriorityQueue;I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->removeAt(I)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/16 v0, 0xb

    #@2
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    #@5
    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 69
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 3
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
    .line 83
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 84
    const/4 v0, 0x1

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "initialCapacity < 1: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 87
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@26
    .line 88
    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@28
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 106
    instance-of v0, p1, Ljava/util/PriorityQueue;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 107
    check-cast p1, Ljava/util/PriorityQueue;

    #@9
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromPriorityQueue(Ljava/util/PriorityQueue;)V

    #@c
    .line 105
    :goto_0
    return-void

    #@d
    .line 108
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 109
    check-cast p1, Ljava/util/SortedSet;

    #@13
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromSortedSet(Ljava/util/SortedSet;)V

    #@16
    goto :goto_0

    #@17
    .line 111
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    #@1a
    .line 112
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    #@1d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 126
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 127
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromPriorityQueue(Ljava/util/PriorityQueue;)V

    #@6
    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 141
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->getFromSortedSet(Ljava/util/SortedSet;)V

    #@6
    .line 140
    return-void
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 354
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "o1":Ljava/lang/Object;, "TE;"
    .local p2, "o2":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 355
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@6
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 357
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    #@d
    .end local p1    # "o1":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method private getFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    const/4 v3, 0x0

    #@1
    .line 326
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    #@4
    .line 327
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@a
    .line 328
    iget-object v0, p1, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@c
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@e
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    #@11
    move-result v2

    #@12
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 329
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    #@1b
    .line 325
    return-void
.end method

.method private getFromSortedSet(Ljava/util/SortedSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initSize(Ljava/util/Collection;)V

    #@3
    .line 335
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@9
    .line 336
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    .line 337
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 338
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@15
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    #@17
    add-int/lit8 v3, v2, 0x1

    #@19
    iput v3, p0, Ljava/util/PriorityQueue;->size:I

    #@1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    aput-object v3, v1, v2

    #@21
    goto :goto_0

    #@22
    .line 333
    :cond_0
    return-void
.end method

.method private growToSize(I)V
    .locals 4
    .param p1, "size"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 406
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    if-le p1, v1, :cond_0

    #@6
    .line 407
    mul-int/lit8 v1, p1, 0x2

    #@8
    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 408
    .local v0, "newElements":[Ljava/lang/Object;, "[TE;"
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@e
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@10
    array-length v2, v2

    #@11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    .line 409
    iput-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@16
    .line 405
    .end local v0    # "newElements":[Ljava/lang/Object;, "[TE;"
    :cond_0
    return-void
.end method

.method private initSize(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 393
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 394
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "c == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 396
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 397
    const/4 v1, 0x1

    #@12
    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@18
    .line 392
    :goto_0
    return-void

    #@19
    .line 399
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@1c
    move-result v1

    #@1d
    int-to-double v2, v1

    #@1e
    .line 400
    const-wide v4, 0x3ff199999999999aL    # 1.1

    #@23
    .line 399
    mul-double/2addr v2, v4

    #@24
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@27
    move-result-wide v2

    #@28
    double-to-int v0, v2

    #@29
    .line 401
    .local v0, "capacity":I
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@2f
    goto :goto_0
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 313
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    new-array v0, p1, [Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 304
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v0

    #@7
    .line 305
    .local v0, "capacity":I
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->newElementArray(I)[Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@d
    .line 306
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    #@10
    if-ge v1, v2, :cond_0

    #@12
    .line 307
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@14
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v2, v1

    #@1a
    .line 306
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 302
    :cond_0
    return-void
.end method

.method private removeAt(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 343
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@2
    add-int/lit8 v1, v1, -0x1

    #@4
    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    #@6
    .line 344
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@8
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    #@a
    aget-object v0, v1, v2

    #@c
    .line 345
    .local v0, "moved":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@e
    aput-object v0, v1, p1

    #@10
    .line 346
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->siftDown(I)V

    #@13
    .line 347
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@15
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    #@17
    const/4 v3, 0x0

    #@18
    aput-object v3, v1, v2

    #@1a
    .line 348
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@1c
    aget-object v1, v1, p1

    #@1e
    if-ne v0, v1, :cond_0

    #@20
    .line 349
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->siftUp(I)V

    #@23
    .line 342
    :cond_0
    return-void
.end method

.method private siftDown(I)V
    .locals 4
    .param p1, "rootIndex"    # I

    #@0
    .prologue
    .line 376
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@2
    aget-object v1, v2, p1

    #@4
    .line 378
    .local v1, "target":Ljava/lang/Object;, "TE;"
    :goto_0
    mul-int/lit8 v2, p1, 0x2

    #@6
    add-int/lit8 v0, v2, 0x1

    #@8
    .local v0, "childIndex":I
    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    #@a
    if-ge v0, v2, :cond_1

    #@c
    .line 379
    add-int/lit8 v2, v0, 0x1

    #@e
    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    #@10
    if-ge v2, v3, :cond_0

    #@12
    .line 380
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@14
    add-int/lit8 v3, v0, 0x1

    #@16
    aget-object v2, v2, v3

    #@18
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@1a
    aget-object v3, v3, v0

    #@1c
    invoke-direct {p0, v2, v3}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1f
    move-result v2

    #@20
    if-gez v2, :cond_0

    #@22
    .line 381
    add-int/lit8 v0, v0, 0x1

    #@24
    .line 383
    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@26
    aget-object v2, v2, v0

    #@28
    invoke-direct {p0, v1, v2}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2b
    move-result v2

    #@2c
    if-gtz v2, :cond_2

    #@2e
    .line 389
    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@30
    aput-object v1, v2, p1

    #@32
    .line 375
    return-void

    #@33
    .line 386
    :cond_2
    iget-object v2, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@35
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@37
    aget-object v3, v3, v0

    #@39
    aput-object v3, v2, p1

    #@3b
    .line 387
    move p1, v0

    #@3c
    goto :goto_0
.end method

.method private siftUp(I)V
    .locals 4
    .param p1, "childIndex"    # I

    #@0
    .prologue
    .line 361
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@2
    aget-object v2, v3, p1

    #@4
    .line 363
    .local v2, "target":Ljava/lang/Object;, "TE;"
    :goto_0
    if-lez p1, :cond_0

    #@6
    .line 364
    add-int/lit8 v3, p1, -0x1

    #@8
    div-int/lit8 v1, v3, 0x2

    #@a
    .line 365
    .local v1, "parentIndex":I
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@c
    aget-object v0, v3, v1

    #@e
    .line 366
    .local v0, "parent":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0, v2}, Ljava/util/PriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@11
    move-result v3

    #@12
    if-gtz v3, :cond_1

    #@14
    .line 372
    .end local v0    # "parent":Ljava/lang/Object;, "TE;"
    .end local v1    # "parentIndex":I
    :cond_0
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@16
    aput-object v2, v3, p1

    #@18
    .line 360
    return-void

    #@19
    .line 369
    .restart local v0    # "parent":Ljava/lang/Object;, "TE;"
    .restart local v1    # "parentIndex":I
    :cond_1
    iget-object v3, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@1b
    aput-object v0, v3, p1

    #@1d
    .line 370
    move p1, v1

    #@1e
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 318
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@5
    array-length v1, v1

    #@6
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@9
    .line 319
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 320
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@10
    aget-object v1, v1, v0

    #@12
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@15
    .line 319
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 316
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
    .line 270
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 171
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@6
    .line 172
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    #@9
    .line 170
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
    .line 230
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    #@2
    return-object v0
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
    .line 152
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$PriorityIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue$PriorityIterator;-><init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$PriorityIterator;)V

    #@6
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 188
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "o == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 191
    :cond_0
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->growToSize(I)V

    #@12
    .line 192
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@14
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@16
    aput-object p1, v0, v1

    #@18
    .line 193
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    #@1a
    add-int/lit8 v1, v0, 0x1

    #@1c
    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    #@1e
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->siftUp(I)V

    #@21
    .line 194
    const/4 v0, 0x1

    #@22
    return v0
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
    .line 217
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 218
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 220
    :cond_0
    iget-object v0, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@a
    const/4 v1, 0x0

    #@b
    aget-object v0, v0, v1

    #@d
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 203
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 204
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 206
    :cond_0
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@b
    aget-object v0, v1, v2

    #@d
    .line 207
    .local v0, "result":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v2}, Ljava/util/PriorityQueue;->removeAt(I)V

    #@10
    .line 208
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 244
    if-nez p1, :cond_0

    #@3
    .line 245
    return v2

    #@4
    .line 247
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "targetIndex":I
    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    #@7
    if-ge v0, v1, :cond_2

    #@9
    .line 248
    iget-object v1, p0, Ljava/util/PriorityQueue;->elements:[Ljava/lang/Object;

    #@b
    aget-object v1, v1, v0

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 249
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)V

    #@16
    .line 250
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 253
    :cond_2
    return v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 163
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    #@2
    return v0
.end method
