.class public Ljava/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayDeque$DeqIterator;,
        Ljava/util/ArrayDeque$DescendingIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method static synthetic -get0(Ljava/util/ArrayDeque;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/ArrayDeque;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/util/ArrayDeque;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/util/ArrayDeque;I)Z
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->delete(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 155
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 156
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [Ljava/lang/Object;

    #@7
    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@9
    .line 155
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    #@0
    .prologue
    .line 165
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 166
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    #@6
    .line 165
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
    .line 179
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 180
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->allocateElements(I)V

    #@a
    .line 181
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    #@d
    .line 179
    return-void
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    #@0
    .prologue
    .line 95
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    #@2
    .local v0, "initialCapacity":I
    const/16 v1, 0x8

    #@4
    .line 98
    if-lt p1, v1, :cond_0

    #@6
    .line 99
    move v0, p1

    #@7
    .line 100
    ushr-int/lit8 v1, v0, 0x1

    #@9
    or-int/2addr v0, v1

    #@a
    .line 101
    ushr-int/lit8 v1, v0, 0x2

    #@c
    or-int/2addr v0, v1

    #@d
    .line 102
    ushr-int/lit8 v1, v0, 0x4

    #@f
    or-int/2addr v0, v1

    #@10
    .line 103
    ushr-int/lit8 v1, v0, 0x8

    #@12
    or-int/2addr v0, v1

    #@13
    .line 104
    ushr-int/lit8 v1, v0, 0x10

    #@15
    or-int/2addr v0, v1

    #@16
    .line 105
    add-int/lit8 v0, v0, 0x1

    #@18
    .line 107
    if-gez v0, :cond_0

    #@1a
    .line 108
    ushr-int/lit8 v0, v0, 0x1

    #@1c
    .line 110
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    #@1e
    iput-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@20
    .line 94
    return-void
.end method

.method private checkInvariants()V
    .locals 0

    #@0
    .prologue
    .line 486
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    #@1
    .line 141
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@3
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 142
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@9
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    #@b
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    #@e
    move-result v3

    #@f
    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 148
    :cond_0
    :goto_0
    return-object p1

    #@13
    .line 143
    :cond_1
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@15
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@17
    if-le v1, v2, :cond_0

    #@19
    .line 144
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@1b
    array-length v1, v1

    #@1c
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    #@1e
    sub-int v0, v1, v2

    #@20
    .line 145
    .local v0, "headPortionLen":I
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@22
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    #@24
    invoke-static {v1, v2, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@27
    .line 146
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@29
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@2b
    invoke-static {v1, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    goto :goto_0
.end method

.method private delete(I)Z
    .locals 10
    .param p1, "i"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 506
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@4
    .line 507
    .local v1, "elements":[Ljava/lang/Object;
    array-length v6, v1

    #@5
    add-int/lit8 v4, v6, -0x1

    #@7
    .line 508
    .local v4, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    #@9
    .line 509
    .local v3, "h":I
    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    #@b
    .line 510
    .local v5, "t":I
    sub-int v6, p1, v3

    #@d
    and-int v2, v6, v4

    #@f
    .line 511
    .local v2, "front":I
    sub-int v6, v5, p1

    #@11
    and-int v0, v6, v4

    #@13
    .line 514
    .local v0, "back":I
    sub-int v6, v5, v3

    #@15
    and-int/2addr v6, v4

    #@16
    if-lt v2, v6, :cond_0

    #@18
    .line 515
    new-instance v6, Ljava/util/ConcurrentModificationException;

    #@1a
    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1d
    throw v6

    #@1e
    .line 518
    :cond_0
    if-ge v2, v0, :cond_2

    #@20
    .line 519
    if-gt v3, p1, :cond_1

    #@22
    .line 520
    add-int/lit8 v6, v3, 0x1

    #@24
    invoke-static {v1, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@27
    .line 526
    :goto_0
    const/4 v6, 0x0

    #@28
    aput-object v6, v1, v3

    #@2a
    .line 527
    add-int/lit8 v6, v3, 0x1

    #@2c
    and-int/2addr v6, v4

    #@2d
    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    #@2f
    .line 528
    return v8

    #@30
    .line 522
    :cond_1
    invoke-static {v1, v8, v1, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@33
    .line 523
    aget-object v6, v1, v4

    #@35
    aput-object v6, v1, v8

    #@37
    .line 524
    add-int/lit8 v6, v3, 0x1

    #@39
    sub-int v7, v4, v3

    #@3b
    invoke-static {v1, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e
    goto :goto_0

    #@3f
    .line 530
    :cond_2
    if-ge p1, v5, :cond_3

    #@41
    .line 531
    add-int/lit8 v6, p1, 0x1

    #@43
    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@46
    .line 532
    add-int/lit8 v6, v5, -0x1

    #@48
    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    #@4a
    .line 539
    :goto_1
    return v9

    #@4b
    .line 534
    :cond_3
    add-int/lit8 v6, p1, 0x1

    #@4d
    sub-int v7, v4, p1

    #@4f
    invoke-static {v1, v6, v1, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@52
    .line 535
    aget-object v6, v1, v8

    #@54
    aput-object v6, v1, v4

    #@56
    .line 536
    invoke-static {v1, v9, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@59
    .line 537
    add-int/lit8 v6, v5, -0x1

    #@5b
    and-int/2addr v6, v4

    #@5c
    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    #@5e
    goto :goto_1
.end method

.method private doubleCapacity()V
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v6, 0x0

    #@1
    .line 119
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    #@3
    .line 120
    .local v3, "p":I
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@5
    array-length v1, v5

    #@6
    .line 121
    .local v1, "n":I
    sub-int v4, v1, v3

    #@8
    .line 122
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    #@a
    .line 123
    .local v2, "newCapacity":I
    if-gez v2, :cond_0

    #@c
    .line 124
    new-instance v5, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v6, "Sorry, deque too big"

    #@11
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v5

    #@15
    .line 125
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    #@17
    .line 126
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@19
    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 127
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@1e
    invoke-static {v5, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 128
    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@23
    .line 129
    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    #@25
    .line 130
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@27
    .line 117
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 832
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 835
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v1

    #@7
    .line 836
    .local v1, "size":I
    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    #@a
    .line 837
    const/4 v2, 0x0

    #@b
    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    #@d
    .line 838
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@f
    .line 841
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@12
    .line 842
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@14
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v2, v0

    #@1a
    .line 841
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 831
    :cond_0
    return-void
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
    .line 816
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 819
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    #@6
    move-result v2

    #@7
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@a
    .line 822
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@c
    array-length v2, v2

    #@d
    add-int/lit8 v1, v2, -0x1

    #@f
    .line 823
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@11
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@13
    if-eq v0, v2, :cond_0

    #@15
    .line 824
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@17
    aget-object v2, v2, v0

    #@19
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1c
    .line 823
    add-int/lit8 v2, v0, 0x1

    #@1e
    and-int v0, v2, v1

    #@20
    goto :goto_0

    #@21
    .line 815
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
    .line 384
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@3
    .line 385
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "e == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 197
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@d
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@13
    array-length v2, v2

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    and-int/2addr v1, v2

    #@17
    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    #@19
    aput-object p1, v0, v1

    #@1b
    .line 198
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@1d
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@1f
    if-ne v0, v1, :cond_1

    #@21
    .line 199
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    #@24
    .line 194
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 211
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "e == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 213
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@d
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@f
    aput-object p1, v0, v1

    #@11
    .line 214
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@17
    array-length v1, v1

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    and-int/2addr v0, v1

    #@1b
    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    #@1d
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@1f
    if-ne v0, v1, :cond_1

    #@21
    .line 215
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    #@24
    .line 210
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 705
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@3
    .line 706
    .local v0, "h":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@5
    .line 707
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    #@7
    .line 708
    iput v4, p0, Ljava/util/ArrayDeque;->tail:I

    #@9
    iput v4, p0, Ljava/util/ArrayDeque;->head:I

    #@b
    .line 709
    move v1, v0

    #@c
    .line 710
    .local v1, "i":I
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@e
    array-length v4, v4

    #@f
    add-int/lit8 v2, v4, -0x1

    #@11
    .line 712
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@13
    const/4 v5, 0x0

    #@14
    aput-object v5, v4, v1

    #@16
    .line 713
    add-int/lit8 v4, v1, 0x1

    #@18
    and-int v1, v4, v2

    #@1a
    .line 714
    if-ne v1, v3, :cond_0

    #@1c
    .line 704
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1
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
    .line 790
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Ljava/util/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 793
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/ArrayDeque;

    #@6
    .line 794
    .local v1, "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@8
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@a
    array-length v3, v3

    #@b
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    iput-object v2, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 795
    return-object v1

    #@12
    .line 797
    .end local v1    # "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :catch_0
    move-exception v0

    #@13
    .line 798
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 670
    if-nez p1, :cond_0

    #@3
    .line 671
    return v4

    #@4
    .line 672
    :cond_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@6
    array-length v3, v3

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .line 673
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@b
    .line 675
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@d
    aget-object v2, v3, v0

    #@f
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_2

    #@11
    .line 676
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 677
    const/4 v3, 0x1

    #@18
    return v3

    #@19
    .line 678
    :cond_1
    add-int/lit8 v3, v0, 0x1

    #@1b
    and-int v0, v3, v1

    #@1d
    goto :goto_0

    #@1e
    .line 680
    :cond_2
    return v4
.end method

.method public descendingIterator()Ljava/util/Iterator;
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
    .line 576
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DescendingIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DescendingIterator;)V

    #@6
    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 441
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 287
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    #@4
    aget-object v0, v1, v2

    #@6
    .line 288
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@8
    .line 289
    new-instance v1, Ljava/util/NoSuchElementException;

    #@a
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@d
    throw v1

    #@e
    .line 290
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 298
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@4
    add-int/lit8 v2, v2, -0x1

    #@6
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@8
    array-length v3, v3

    #@9
    add-int/lit8 v3, v3, -0x1

    #@b
    and-int/2addr v2, v3

    #@c
    aget-object v0, v1, v2

    #@e
    .line 299
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@10
    .line 300
    new-instance v1, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v1

    #@16
    .line 301
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 560
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@2
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@4
    if-ne v0, v1, :cond_0

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
    .line 572
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DeqIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DeqIterator;)V

    #@6
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 398
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 226
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 227
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 238
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@3
    .line 239
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 454
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 305
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    #@4
    aget-object v0, v1, v2

    #@6
    .line 307
    .local v0, "result":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 312
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@4
    add-int/lit8 v2, v2, -0x1

    #@6
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@8
    array-length v3, v3

    #@9
    add-int/lit8 v3, v3, -0x1

    #@b
    and-int/2addr v2, v3

    #@c
    aget-object v0, v1, v2

    #@e
    .line 313
    .local v0, "result":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 427
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 263
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@3
    .line 264
    .local v0, "h":I
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@5
    aget-object v1, v2, v0

    #@7
    .line 266
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    #@9
    .line 267
    return-object v3

    #@a
    .line 268
    :cond_0
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@c
    aput-object v3, v2, v0

    #@e
    .line 269
    add-int/lit8 v2, v0, 0x1

    #@10
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@12
    array-length v3, v3

    #@13
    add-int/lit8 v3, v3, -0x1

    #@15
    and-int/2addr v2, v3

    #@16
    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    #@18
    .line 270
    return-object v1
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 274
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@3
    add-int/lit8 v2, v2, -0x1

    #@5
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@7
    array-length v3, v3

    #@8
    add-int/lit8 v3, v3, -0x1

    #@a
    and-int v1, v2, v3

    #@c
    .line 275
    .local v1, "t":I
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@e
    aget-object v0, v2, v1

    #@10
    .line 276
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@12
    .line 277
    return-object v4

    #@13
    .line 278
    :cond_0
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@15
    aput-object v4, v2, v1

    #@17
    .line 279
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@19
    .line 280
    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 483
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 469
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 468
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 413
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 697
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 247
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    .line 248
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 249
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 329
    if-nez p1, :cond_0

    #@3
    .line 330
    return v4

    #@4
    .line 331
    :cond_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@6
    array-length v3, v3

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .line 332
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@b
    .line 334
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@d
    aget-object v2, v3, v0

    #@f
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_2

    #@11
    .line 335
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 336
    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    #@1a
    .line 337
    const/4 v3, 0x1

    #@1b
    return v3

    #@1c
    .line 339
    :cond_1
    add-int/lit8 v3, v0, 0x1

    #@1e
    and-int v0, v3, v1

    #@20
    goto :goto_0

    #@21
    .line 341
    :cond_2
    return v4
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 257
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    .line 258
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 259
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 357
    if-nez p1, :cond_0

    #@3
    .line 358
    return v4

    #@4
    .line 359
    :cond_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@6
    array-length v3, v3

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .line 360
    .local v1, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@b
    add-int/lit8 v3, v3, -0x1

    #@d
    and-int v0, v3, v1

    #@f
    .line 362
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@11
    aget-object v2, v3, v0

    #@13
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_2

    #@15
    .line 363
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 364
    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    #@1e
    .line 365
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 367
    :cond_1
    add-int/lit8 v3, v0, -0x1

    #@22
    and-int v0, v3, v1

    #@24
    goto :goto_0

    #@25
    .line 369
    :cond_2
    return v4
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 551
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    #@2
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@7
    array-length v1, v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    and-int/2addr v0, v1

    #@b
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 732
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    #@3
    move-result v0

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 773
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    #@3
    move-result v0

    #@4
    .line 774
    .local v0, "size":I
    array-length v1, p1

    #@5
    if-ge v1, v0, :cond_0

    #@7
    .line 776
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v1

    #@f
    .line 775
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@15
    .line 777
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    #@18
    .line 778
    array-length v1, p1

    #@19
    if-le v1, v0, :cond_1

    #@1b
    .line 779
    const/4 v1, 0x0

    #@1c
    aput-object v1, p1, v0

    #@1e
    .line 780
    :cond_1
    return-object p1
.end method
