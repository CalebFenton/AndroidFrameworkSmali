.class public final Landroid/support/v4/util/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularIntArray;-><init>(I)V

    #@5
    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    if-gtz p1, :cond_0

    #@6
    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "capacity must be positive"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 60
    :cond_0
    move v0, p1

    #@10
    .line 63
    .local v0, "arrayCapacity":I
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    #@13
    move-result v1

    #@14
    if-eq v1, v2, :cond_1

    #@16
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    #@19
    move-result v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    shl-int v0, v2, v1

    #@1e
    .line 66
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@20
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@22
    .line 67
    new-array v1, v0, [I

    #@24
    iput-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@26
    .line 56
    return-void
.end method

.method private doubleCapacity()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 29
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@3
    array-length v1, v4

    #@4
    .line 30
    .local v1, "n":I
    iget v4, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@6
    sub-int v3, v1, v4

    #@8
    .line 31
    .local v3, "r":I
    shl-int/lit8 v2, v1, 0x1

    #@a
    .line 32
    .local v2, "newCapacity":I
    if-gez v2, :cond_0

    #@c
    .line 33
    new-instance v4, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v5, "Max array capacity exceeded"

    #@11
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4

    #@15
    .line 35
    :cond_0
    new-array v0, v2, [I

    #@17
    .line 36
    .local v0, "a":[I
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@19
    iget v5, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@1b
    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 37
    iget-object v4, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@20
    iget v5, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@22
    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@25
    .line 38
    iput-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@27
    .line 39
    iput v6, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@29
    .line 40
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@2b
    .line 41
    add-int/lit8 v4, v2, -0x1

    #@2d
    iput v4, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@2f
    .line 28
    return-void
.end method


# virtual methods
.method public addFirst(I)V
    .locals 2
    .param p1, "e"    # I

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@6
    and-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@9
    .line 76
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@b
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@d
    aput p1, v0, v1

    #@f
    .line 77
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@11
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 78
    invoke-direct {p0}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    #@18
    .line 74
    :cond_0
    return-void
.end method

.method public addLast(I)V
    .locals 2
    .param p1, "e"    # I

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@4
    aput p1, v0, v1

    #@6
    .line 88
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@c
    and-int/2addr v0, v1

    #@d
    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@f
    .line 89
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@11
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 90
    invoke-direct {p0}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    #@18
    .line 86
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 123
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@2
    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@4
    .line 122
    return-void
.end method

.method public get(I)I
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 187
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    .line 188
    :cond_1
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@10
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@12
    add-int/2addr v1, p1

    #@13
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@15
    and-int/2addr v1, v2

    #@16
    aget v0, v0, v1

    #@18
    return v0
.end method

.method public getFirst()I
    .locals 2

    #@0
    .prologue
    .line 166
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 167
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@e
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@10
    aget v0, v0, v1

    #@12
    return v0
.end method

.method public getLast()I
    .locals 3

    #@0
    .prologue
    .line 176
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 177
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@e
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@14
    and-int/2addr v1, v2

    #@15
    aget v0, v0, v1

    #@17
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 204
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

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

.method public popFirst()I
    .locals 3

    #@0
    .prologue
    .line 100
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@2
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v1

    #@c
    .line 101
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@e
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@10
    aget v0, v1, v2

    #@12
    .line 102
    .local v0, "result":I
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@14
    add-int/lit8 v1, v1, 0x1

    #@16
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@18
    and-int/2addr v1, v2

    #@19
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@1b
    .line 103
    return v0
.end method

.method public popLast()I
    .locals 4

    #@0
    .prologue
    .line 112
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@2
    iget v3, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@4
    if-ne v2, v3, :cond_0

    #@6
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v2

    #@c
    .line 113
    :cond_0
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@e
    add-int/lit8 v2, v2, -0x1

    #@10
    iget v3, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@12
    and-int v1, v2, v3

    #@14
    .line 114
    .local v1, "t":I
    iget-object v2, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    #@16
    aget v0, v2, v1

    #@18
    .line 115
    .local v0, "result":I
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@1a
    .line 116
    return v0
.end method

.method public removeFromEnd(I)V
    .locals 2
    .param p1, "numOfElements"    # I

    #@0
    .prologue
    .line 151
    if-gtz p1, :cond_0

    #@2
    .line 152
    return-void

    #@3
    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    #@6
    move-result v0

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 155
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v0

    #@f
    .line 157
    :cond_1
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@11
    sub-int/2addr v0, p1

    #@12
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@14
    and-int/2addr v0, v1

    #@15
    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@17
    .line 150
    return-void
.end method

.method public removeFromStart(I)V
    .locals 2
    .param p1, "numOfElements"    # I

    #@0
    .prologue
    .line 134
    if-gtz p1, :cond_0

    #@2
    .line 135
    return-void

    #@3
    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    #@6
    move-result v0

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 138
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@b
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@e
    throw v0

    #@f
    .line 140
    :cond_1
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@11
    add-int/2addr v0, p1

    #@12
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@14
    and-int/2addr v0, v1

    #@15
    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@17
    .line 133
    return-void
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 196
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method
