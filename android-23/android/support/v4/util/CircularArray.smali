.class public final Landroid/support/v4/util/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    #@5
    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    if-gtz p1, :cond_0

    #@6
    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "capacity must be positive"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 59
    :cond_0
    move v0, p1

    #@10
    .line 62
    .local v0, "arrayCapacity":I
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    #@13
    move-result v1

    #@14
    if-eq v1, v2, :cond_1

    #@16
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    #@19
    move-result v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    shl-int v0, v2, v1

    #@1e
    .line 65
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@20
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@22
    .line 66
    new-array v1, v0, [Ljava/lang/Object;

    #@24
    iput-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@26
    .line 55
    return-void
.end method

.method private doubleCapacity()V
    .locals 7

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v6, 0x0

    #@1
    .line 28
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@3
    array-length v1, v4

    #@4
    .line 29
    .local v1, "n":I
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@6
    sub-int v3, v1, v4

    #@8
    .line 30
    .local v3, "r":I
    shl-int/lit8 v2, v1, 0x1

    #@a
    .line 31
    .local v2, "newCapacity":I
    if-gez v2, :cond_0

    #@c
    .line 32
    new-instance v4, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v5, "Max array capacity exceeded"

    #@11
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4

    #@15
    .line 34
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    #@17
    .line 35
    .local v0, "a":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@19
    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@1b
    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 36
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@20
    iget v5, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@22
    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@25
    .line 37
    iput-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@27
    .line 38
    iput v6, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@29
    .line 39
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@2b
    .line 40
    add-int/lit8 v4, v2, -0x1

    #@2d
    iput v4, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@2f
    .line 27
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@6
    and-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@9
    .line 75
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@b
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@d
    aput-object p1, v0, v1

    #@f
    .line 76
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@11
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 77
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    #@18
    .line 73
    :cond_0
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
    .line 86
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    aput-object p1, v0, v1

    #@6
    .line 87
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@c
    and-int/2addr v0, v1

    #@d
    iput v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@f
    .line 88
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@11
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 89
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    #@18
    .line 85
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 128
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    #@7
    .line 127
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 230
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 231
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    .line 233
    :cond_1
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@10
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@12
    add-int/2addr v1, p1

    #@13
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@15
    and-int/2addr v1, v2

    #@16
    aget-object v0, v0, v1

    #@18
    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 206
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 208
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@e
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@10
    aget-object v0, v0, v1

    #@12
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 217
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 218
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 220
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@e
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@14
    and-int/2addr v1, v2

    #@15
    aget-object v0, v0, v1

    #@17
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 249
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

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

.method public popFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 99
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 100
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v1

    #@c
    .line 102
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@e
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@10
    aget-object v0, v1, v2

    #@12
    .line 103
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@14
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@16
    const/4 v3, 0x0

    #@17
    aput-object v3, v1, v2

    #@19
    .line 104
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@1f
    and-int/2addr v1, v2

    #@20
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@22
    .line 105
    return-object v0
.end method

.method public popLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 115
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v2

    #@c
    .line 117
    :cond_0
    iget v2, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@e
    add-int/lit8 v2, v2, -0x1

    #@10
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@12
    and-int v1, v2, v3

    #@14
    .line 118
    .local v1, "t":I
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@16
    aget-object v0, v2, v1

    #@18
    .line 119
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@1a
    const/4 v3, 0x0

    #@1b
    aput-object v3, v2, v1

    #@1d
    .line 120
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@1f
    .line 121
    return-object v0
.end method

.method public removeFromEnd(I)V
    .locals 6
    .param p1, "numOfElements"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 172
    if-gtz p1, :cond_0

    #@3
    .line 173
    return-void

    #@4
    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    #@7
    move-result v4

    #@8
    if-le p1, v4, :cond_1

    #@a
    .line 176
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@c
    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@f
    throw v4

    #@10
    .line 178
    :cond_1
    const/4 v3, 0x0

    #@11
    .line 179
    .local v3, "start":I
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@13
    if-ge p1, v4, :cond_2

    #@15
    .line 180
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@17
    sub-int v3, v4, p1

    #@19
    .line 182
    :cond_2
    move v0, v3

    #@1a
    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@1c
    if-ge v0, v4, :cond_3

    #@1e
    .line 183
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@20
    aput-object v5, v4, v0

    #@22
    .line 182
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 185
    :cond_3
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@27
    sub-int v2, v4, v3

    #@29
    .line 186
    .local v2, "removed":I
    sub-int/2addr p1, v2

    #@2a
    .line 187
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@2c
    sub-int/2addr v4, v2

    #@2d
    iput v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@2f
    .line 188
    if-lez p1, :cond_5

    #@31
    .line 190
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@33
    array-length v4, v4

    #@34
    iput v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@36
    .line 191
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@38
    sub-int v1, v4, p1

    #@3a
    .line 192
    .local v1, "newTail":I
    move v0, v1

    #@3b
    :goto_1
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@3d
    if-ge v0, v4, :cond_4

    #@3f
    .line 193
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@41
    aput-object v5, v4, v0

    #@43
    .line 192
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_1

    #@46
    .line 195
    :cond_4
    iput v1, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@48
    .line 171
    .end local v1    # "newTail":I
    :cond_5
    return-void
.end method

.method public removeFromStart(I)V
    .locals 6
    .param p1, "numOfElements"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 139
    if-gtz p1, :cond_0

    #@3
    .line 140
    return-void

    #@4
    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    #@7
    move-result v3

    #@8
    if-le p1, v3, :cond_1

    #@a
    .line 143
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@c
    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@f
    throw v3

    #@10
    .line 145
    :cond_1
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@12
    array-length v0, v3

    #@13
    .line 146
    .local v0, "end":I
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@15
    sub-int v3, v0, v3

    #@17
    if-ge p1, v3, :cond_2

    #@19
    .line 147
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@1b
    add-int v0, v3, p1

    #@1d
    .line 149
    :cond_2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@1f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@21
    .line 150
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@23
    aput-object v5, v3, v1

    #@25
    .line 149
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 152
    :cond_3
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2a
    sub-int v2, v0, v3

    #@2c
    .line 153
    .local v2, "removed":I
    sub-int/2addr p1, v2

    #@2d
    .line 154
    iget v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@2f
    add-int/2addr v3, v2

    #@30
    iget v4, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@32
    and-int/2addr v3, v4

    #@33
    iput v3, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@35
    .line 155
    if-lez p1, :cond_5

    #@37
    .line 157
    const/4 v1, 0x0

    #@38
    :goto_1
    if-ge v1, p1, :cond_4

    #@3a
    .line 158
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    #@3c
    aput-object v5, v3, v1

    #@3e
    .line 157
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_1

    #@41
    .line 160
    :cond_4
    iput p1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@43
    .line 138
    :cond_5
    return-void
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 241
    .local p0, "this":Landroid/support/v4/util/CircularArray;, "Landroid/support/v4/util/CircularArray<TE;>;"
    iget v0, p0, Landroid/support/v4/util/CircularArray;->mTail:I

    #@2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mHead:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method
