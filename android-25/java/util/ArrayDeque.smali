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
        Ljava/util/ArrayDeque$DeqSpliterator;,
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
.field static final synthetic -assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field transient elements:[Ljava/lang/Object;

.field transient head:I

.field transient tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    #@b
    .line 86
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 170
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 171
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [Ljava/lang/Object;

    #@7
    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@9
    .line 170
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    #@0
    .prologue
    .line 180
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 181
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    #@6
    .line 180
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
    .line 194
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->allocateElements(I)V

    #@a
    .line 196
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    #@d
    .line 194
    return-void
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    #@0
    .prologue
    .line 128
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    #@2
    .local v0, "initialCapacity":I
    const/16 v1, 0x8

    #@4
    .line 131
    if-lt p1, v1, :cond_0

    #@6
    .line 132
    move v0, p1

    #@7
    .line 133
    ushr-int/lit8 v1, p1, 0x1

    #@9
    or-int v0, p1, v1

    #@b
    .line 134
    ushr-int/lit8 v1, v0, 0x2

    #@d
    or-int/2addr v0, v1

    #@e
    .line 135
    ushr-int/lit8 v1, v0, 0x4

    #@10
    or-int/2addr v0, v1

    #@11
    .line 136
    ushr-int/lit8 v1, v0, 0x8

    #@13
    or-int/2addr v0, v1

    #@14
    .line 137
    ushr-int/lit8 v1, v0, 0x10

    #@16
    or-int/2addr v0, v1

    #@17
    .line 138
    add-int/lit8 v0, v0, 0x1

    #@19
    .line 140
    if-gez v0, :cond_0

    #@1b
    .line 141
    ushr-int/lit8 v0, v0, 0x1

    #@1d
    .line 143
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    #@1f
    iput-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@21
    .line 127
    return-void
.end method

.method private checkInvariants()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 502
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_1

    #@6
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@8
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@a
    aget-object v2, v2, v3

    #@c
    if-nez v2, :cond_0

    #@e
    move v2, v0

    #@f
    :goto_0
    if-nez v2, :cond_1

    #@11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v0

    #@17
    :cond_0
    move v2, v1

    #@18
    goto :goto_0

    #@19
    .line 503
    :cond_1
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    #@1b
    if-nez v2, :cond_6

    #@1d
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    #@1f
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@21
    if-ne v2, v3, :cond_3

    #@23
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@25
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    #@27
    aget-object v2, v2, v3

    #@29
    if-nez v2, :cond_2

    #@2b
    move v2, v0

    #@2c
    :goto_1
    if-nez v2, :cond_6

    #@2e
    new-instance v0, Ljava/lang/AssertionError;

    #@30
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@33
    throw v0

    #@34
    :cond_2
    move v2, v1

    #@35
    goto :goto_1

    #@36
    .line 504
    :cond_3
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@38
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    #@3a
    aget-object v2, v2, v3

    #@3c
    if-eqz v2, :cond_5

    #@3e
    .line 505
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@40
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@42
    add-int/lit8 v3, v3, -0x1

    #@44
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@46
    array-length v4, v4

    #@47
    add-int/lit8 v4, v4, -0x1

    #@49
    and-int/2addr v3, v4

    #@4a
    aget-object v2, v2, v3

    #@4c
    if-eqz v2, :cond_4

    #@4e
    move v2, v0

    #@4f
    goto :goto_1

    #@50
    :cond_4
    move v2, v1

    #@51
    goto :goto_1

    #@52
    :cond_5
    move v2, v1

    #@53
    .line 504
    goto :goto_1

    #@54
    .line 506
    :cond_6
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    #@56
    if-nez v2, :cond_8

    #@58
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@5a
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    #@5c
    add-int/lit8 v3, v3, -0x1

    #@5e
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@60
    array-length v4, v4

    #@61
    add-int/lit8 v4, v4, -0x1

    #@63
    and-int/2addr v3, v4

    #@64
    aget-object v2, v2, v3

    #@66
    if-nez v2, :cond_7

    #@68
    :goto_2
    if-nez v0, :cond_8

    #@6a
    new-instance v0, Ljava/lang/AssertionError;

    #@6c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@6f
    throw v0

    #@70
    :cond_7
    move v0, v1

    #@71
    goto :goto_2

    #@72
    .line 501
    :cond_8
    return-void
.end method

.method private doubleCapacity()V
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v6, 0x0

    #@1
    .line 151
    sget-boolean v5, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    #@3
    if-nez v5, :cond_1

    #@5
    iget v5, p0, Ljava/util/ArrayDeque;->head:I

    #@7
    iget v7, p0, Ljava/util/ArrayDeque;->tail:I

    #@9
    if-ne v5, v7, :cond_0

    #@b
    const/4 v5, 0x1

    #@c
    :goto_0
    if-nez v5, :cond_1

    #@e
    new-instance v5, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v5

    #@14
    :cond_0
    move v5, v6

    #@15
    goto :goto_0

    #@16
    .line 152
    :cond_1
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    #@18
    .line 153
    .local v3, "p":I
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@1a
    array-length v1, v5

    #@1b
    .line 154
    .local v1, "n":I
    sub-int v4, v1, v3

    #@1d
    .line 155
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    #@1f
    .line 156
    .local v2, "newCapacity":I
    if-gez v2, :cond_2

    #@21
    .line 157
    new-instance v5, Ljava/lang/IllegalStateException;

    #@23
    const-string/jumbo v6, "Sorry, deque too big"

    #@26
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v5

    #@2a
    .line 158
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    #@2c
    .line 159
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2e
    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@31
    .line 160
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@33
    invoke-static {v5, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    .line 161
    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@38
    .line 162
    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    #@3a
    .line 163
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@3c
    .line 150
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
    .line 883
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 886
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v1

    #@7
    .line 887
    .local v1, "size":I
    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    #@a
    .line 888
    const/4 v2, 0x0

    #@b
    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    #@d
    .line 889
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@f
    .line 892
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@12
    .line 893
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@14
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v2, v0

    #@1a
    .line 892
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 882
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
    .line 863
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 866
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    #@6
    move-result v2

    #@7
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@a
    .line 869
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@c
    array-length v2, v2

    #@d
    add-int/lit8 v1, v2, -0x1

    #@f
    .line 870
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@11
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@13
    if-eq v0, v2, :cond_0

    #@15
    .line 871
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@17
    aget-object v2, v2, v0

    #@19
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1c
    .line 870
    add-int/lit8 v2, v0, 0x1

    #@1e
    and-int v0, v2, v1

    #@20
    goto :goto_0

    #@21
    .line 862
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
    .line 399
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@3
    .line 400
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
    .line 210
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 212
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@a
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@c
    add-int/lit8 v1, v1, -0x1

    #@e
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@10
    array-length v2, v2

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    and-int/2addr v1, v2

    #@14
    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    #@16
    aput-object p1, v0, v1

    #@18
    .line 213
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@1a
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@1c
    if-ne v0, v1, :cond_1

    #@1e
    .line 214
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    #@21
    .line 209
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
    .line 226
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    .line 227
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 228
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@a
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@c
    aput-object p1, v0, v1

    #@e
    .line 229
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@14
    array-length v1, v1

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    and-int/2addr v0, v1

    #@18
    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    #@1a
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@1c
    if-ne v0, v1, :cond_1

    #@1e
    .line 230
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    #@21
    .line 225
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
    .line 738
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@3
    .line 739
    .local v0, "h":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@5
    .line 740
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    #@7
    .line 741
    iput v4, p0, Ljava/util/ArrayDeque;->tail:I

    #@9
    iput v4, p0, Ljava/util/ArrayDeque;->head:I

    #@b
    .line 742
    move v1, v0

    #@c
    .line 743
    .local v1, "i":I
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@e
    array-length v4, v4

    #@f
    add-int/lit8 v2, v4, -0x1

    #@11
    .line 745
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@13
    const/4 v5, 0x0

    #@14
    aput-object v5, v4, v1

    #@16
    .line 746
    add-int/lit8 v4, v1, 0x1

    #@18
    and-int v1, v4, v2

    #@1a
    .line 747
    if-ne v1, v3, :cond_0

    #@1c
    .line 737
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
    .line 839
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
    .line 842
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/ArrayDeque;

    #@6
    .line 843
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
    .line 844
    return-object v1

    #@12
    .line 845
    .end local v1    # "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :catch_0
    move-exception v0

    #@13
    .line 846
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 705
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 706
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@4
    array-length v3, v3

    #@5
    add-int/lit8 v1, v3, -0x1

    #@7
    .line 707
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@9
    .line 708
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@b
    aget-object v2, v3, v0

    #@d
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@f
    .line 709
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 710
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 708
    :cond_0
    add-int/lit8 v3, v0, 0x1

    #@19
    and-int v0, v3, v1

    #@1b
    goto :goto_0

    #@1c
    .line 713
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    #@1d
    return v3
.end method

.method delete(I)Z
    .locals 10
    .param p1, "i"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 520
    invoke-direct {p0}, Ljava/util/ArrayDeque;->checkInvariants()V

    #@5
    .line 521
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@7
    .line 522
    .local v1, "elements":[Ljava/lang/Object;
    array-length v6, v1

    #@8
    add-int/lit8 v4, v6, -0x1

    #@a
    .line 523
    .local v4, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    #@c
    .line 524
    .local v3, "h":I
    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    #@e
    .line 525
    .local v5, "t":I
    sub-int v6, p1, v3

    #@10
    and-int v2, v6, v4

    #@12
    .line 526
    .local v2, "front":I
    sub-int v6, v5, p1

    #@14
    and-int v0, v6, v4

    #@16
    .line 529
    .local v0, "back":I
    sub-int v6, v5, v3

    #@18
    and-int/2addr v6, v4

    #@19
    if-lt v2, v6, :cond_0

    #@1b
    .line 530
    new-instance v6, Ljava/util/ConcurrentModificationException;

    #@1d
    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@20
    throw v6

    #@21
    .line 533
    :cond_0
    if-ge v2, v0, :cond_2

    #@23
    .line 534
    if-gt v3, p1, :cond_1

    #@25
    .line 535
    add-int/lit8 v6, v3, 0x1

    #@27
    invoke-static {v1, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2a
    .line 541
    :goto_0
    const/4 v6, 0x0

    #@2b
    aput-object v6, v1, v3

    #@2d
    .line 542
    add-int/lit8 v6, v3, 0x1

    #@2f
    and-int/2addr v6, v4

    #@30
    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    #@32
    .line 543
    return v8

    #@33
    .line 537
    :cond_1
    invoke-static {v1, v8, v1, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    .line 538
    aget-object v6, v1, v4

    #@38
    aput-object v6, v1, v8

    #@3a
    .line 539
    add-int/lit8 v6, v3, 0x1

    #@3c
    sub-int v7, v4, v3

    #@3e
    invoke-static {v1, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@41
    goto :goto_0

    #@42
    .line 545
    :cond_2
    if-ge p1, v5, :cond_3

    #@44
    .line 546
    add-int/lit8 v6, p1, 0x1

    #@46
    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@49
    .line 547
    add-int/lit8 v6, v5, -0x1

    #@4b
    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    #@4d
    .line 554
    :goto_1
    return v9

    #@4e
    .line 549
    :cond_3
    add-int/lit8 v6, p1, 0x1

    #@50
    sub-int v7, v4, p1

    #@52
    invoke-static {v1, v6, v1, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@55
    .line 550
    aget-object v6, v1, v8

    #@57
    aput-object v6, v1, v4

    #@59
    .line 551
    invoke-static {v1, v9, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5c
    .line 552
    add-int/lit8 v6, v5, -0x1

    #@5e
    and-int/2addr v6, v4

    #@5f
    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    #@61
    goto :goto_1
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
    .line 591
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
    .line 456
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
    .line 307
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    #@4
    aget-object v0, v1, v2

    #@6
    .line 308
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@8
    .line 309
    new-instance v1, Ljava/util/NoSuchElementException;

    #@a
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@d
    throw v1

    #@e
    .line 310
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
    .line 318
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
    .line 319
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@10
    .line 320
    new-instance v1, Ljava/util/NoSuchElementException;

    #@12
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@15
    throw v1

    #@16
    .line 321
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 575
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
    .line 587
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
    .line 413
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
    .line 241
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 242
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
    .line 253
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@3
    .line 254
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
    .line 469
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 332
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@2
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@8
    array-length v2, v2

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    and-int/2addr v1, v2

    #@c
    aget-object v0, v0, v1

    #@e
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
    .line 442
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 5
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
    .line 278
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@3
    .line 279
    .local v0, "elements":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@5
    .line 281
    .local v1, "h":I
    aget-object v2, v0, v1

    #@7
    .line 283
    .local v2, "result":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    #@9
    .line 284
    aput-object v3, v0, v1

    #@b
    .line 285
    add-int/lit8 v3, v1, 0x1

    #@d
    array-length v4, v0

    #@e
    add-int/lit8 v4, v4, -0x1

    #@10
    and-int/2addr v3, v4

    #@11
    iput v3, p0, Ljava/util/ArrayDeque;->head:I

    #@13
    .line 287
    :cond_0
    return-object v2
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 291
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@3
    .line 292
    .local v0, "elements":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@5
    add-int/lit8 v3, v3, -0x1

    #@7
    array-length v4, v0

    #@8
    add-int/lit8 v4, v4, -0x1

    #@a
    and-int v2, v3, v4

    #@c
    .line 294
    .local v2, "t":I
    aget-object v1, v0, v2

    #@e
    .line 295
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    #@10
    .line 296
    aput-object v5, v0, v2

    #@12
    .line 297
    iput v2, p0, Ljava/util/ArrayDeque;->tail:I

    #@14
    .line 299
    :cond_0
    return-object v1
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
    .line 498
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
    .line 484
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 483
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
    .line 428
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
    .line 730
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
    .line 261
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 262
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    .line 263
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 264
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 348
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 349
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@4
    array-length v3, v3

    #@5
    add-int/lit8 v1, v3, -0x1

    #@7
    .line 350
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    #@9
    .line 351
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@b
    aget-object v2, v3, v0

    #@d
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@f
    .line 352
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 353
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    #@18
    .line 354
    const/4 v3, 0x1

    #@19
    return v3

    #@1a
    .line 351
    :cond_0
    add-int/lit8 v3, v0, 0x1

    #@1c
    and-int v0, v3, v1

    #@1e
    goto :goto_0

    #@1f
    .line 358
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    #@20
    return v3
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
    .line 271
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 272
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@6
    .line 273
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 274
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 374
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1

    #@2
    .line 375
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@4
    array-length v3, v3

    #@5
    add-int/lit8 v1, v3, -0x1

    #@7
    .line 376
    .local v1, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@9
    add-int/lit8 v3, v3, -0x1

    #@b
    and-int v0, v3, v1

    #@d
    .line 377
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@f
    aget-object v2, v3, v0

    #@11
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@13
    .line 378
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 379
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    #@1c
    .line 380
    const/4 v3, 0x1

    #@1d
    return v3

    #@1e
    .line 377
    :cond_0
    add-int/lit8 v3, v0, -0x1

    #@20
    and-int v0, v3, v1

    #@22
    goto :goto_0

    #@23
    .line 384
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    #@24
    return v3
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 566
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

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v1, -0x1

    #@1
    .line 910
    new-instance v0, Ljava/util/ArrayDeque$DeqSpliterator;

    #@3
    invoke-direct {v0, p0, v1, v1}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    #@6
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 765
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    #@3
    .line 766
    .local v2, "head":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    #@5
    .line 767
    .local v3, "tail":I
    if-ge v3, v2, :cond_1

    #@7
    const/4 v4, 0x1

    #@8
    .line 768
    .local v4, "wrap":Z
    :goto_0
    if-eqz v4, :cond_2

    #@a
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@c
    array-length v6, v6

    #@d
    add-int v1, v3, v6

    #@f
    .line 769
    .local v1, "end":I
    :goto_1
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@11
    invoke-static {v6, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .line 770
    .local v0, "a":[Ljava/lang/Object;
    if-eqz v4, :cond_0

    #@17
    .line 771
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@19
    iget-object v7, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@1b
    array-length v7, v7

    #@1c
    sub-int/2addr v7, v2

    #@1d
    invoke-static {v6, v5, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@20
    .line 772
    :cond_0
    return-object v0

    #@21
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "end":I
    .end local v4    # "wrap":Z
    :cond_1
    move v4, v5

    #@22
    .line 767
    goto :goto_0

    #@23
    .line 768
    .restart local v4    # "wrap":Z
    :cond_2
    move v1, v3

    #@24
    .restart local v1    # "end":I
    goto :goto_1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
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
    const/4 v7, 0x0

    #@1
    .line 813
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    #@3
    .line 814
    .local v1, "head":I
    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    #@5
    .line 815
    .local v4, "tail":I
    if-ge v4, v1, :cond_2

    #@7
    const/4 v5, 0x1

    #@8
    .line 816
    .local v5, "wrap":Z
    :goto_0
    sub-int v8, v4, v1

    #@a
    if-eqz v5, :cond_3

    #@c
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@e
    array-length v6, v6

    #@f
    :goto_1
    add-int v3, v8, v6

    #@11
    .line 817
    .local v3, "size":I
    if-eqz v5, :cond_4

    #@13
    move v6, v4

    #@14
    :goto_2
    sub-int v0, v3, v6

    #@16
    .line 818
    .local v0, "firstLeg":I
    array-length v2, p1

    #@17
    .line 819
    .local v2, "len":I
    if-le v3, v2, :cond_5

    #@19
    .line 820
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@1b
    add-int v8, v1, v3

    #@1d
    .line 821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v9

    #@21
    .line 820
    invoke-static {v6, v1, v8, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    .line 827
    :cond_0
    :goto_3
    if-eqz v5, :cond_1

    #@27
    .line 828
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@29
    invoke-static {v6, v7, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    .line 829
    :cond_1
    return-object p1

    #@2d
    .end local v0    # "firstLeg":I
    .end local v2    # "len":I
    .end local v3    # "size":I
    .end local v5    # "wrap":Z
    :cond_2
    move v5, v7

    #@2e
    .line 815
    goto :goto_0

    #@2f
    .restart local v5    # "wrap":Z
    :cond_3
    move v6, v7

    #@30
    .line 816
    goto :goto_1

    #@31
    .restart local v3    # "size":I
    :cond_4
    move v6, v7

    #@32
    .line 817
    goto :goto_2

    #@33
    .line 823
    .restart local v0    # "firstLeg":I
    .restart local v2    # "len":I
    :cond_5
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    #@35
    invoke-static {v6, v1, p1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@38
    .line 824
    if-ge v3, v2, :cond_0

    #@3a
    .line 825
    const/4 v6, 0x0

    #@3b
    aput-object v6, p1, v3

    #@3d
    goto :goto_3
.end method
