.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    #@5
    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 46
    if-nez p1, :cond_0

    #@6
    .line 47
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@8
    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    #@a
    .line 51
    :goto_0
    iput v1, p0, Landroid/util/IntArray;->mSize:I

    #@c
    .line 45
    return-void

    #@d
    .line 49
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    #@13
    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 114
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@3
    .line 115
    .local v0, "currentSize":I
    add-int v1, v0, p1

    #@5
    .line 116
    .local v1, "minCapacity":I
    iget-object v5, p0, Landroid/util/IntArray;->mValues:[I

    #@7
    array-length v5, v5

    #@8
    if-lt v1, v5, :cond_0

    #@a
    .line 117
    const/4 v5, 0x6

    #@b
    if-ge v0, v5, :cond_1

    #@d
    .line 118
    const/16 v5, 0xc

    #@f
    .line 117
    :goto_0
    add-int v4, v0, v5

    #@11
    .line 119
    .local v4, "targetCap":I
    if-le v4, v1, :cond_2

    #@13
    move v2, v4

    #@14
    .line 120
    .local v2, "newCapacity":I
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@17
    move-result-object v3

    #@18
    .line 121
    .local v3, "newValues":[I
    iget-object v5, p0, Landroid/util/IntArray;->mValues:[I

    #@1a
    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 122
    iput-object v3, p0, Landroid/util/IntArray;->mValues:[I

    #@1f
    .line 113
    .end local v2    # "newCapacity":I
    .end local v3    # "newValues":[I
    .end local v4    # "targetCap":I
    :cond_0
    return-void

    #@20
    .line 118
    :cond_1
    shr-int/lit8 v5, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 119
    .restart local v4    # "targetCap":I
    :cond_2
    move v2, v1

    #@24
    .restart local v2    # "newCapacity":I
    goto :goto_1
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 58
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/util/IntArray;->add(II)V

    #@5
    .line 57
    return-void
.end method

.method public add(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 67
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 71
    :cond_1
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    #@10
    .line 73
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@12
    sub-int/2addr v0, p1

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 74
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    #@17
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    #@19
    add-int/lit8 v2, p1, 0x1

    #@1b
    iget v3, p0, Landroid/util/IntArray;->mSize:I

    #@1d
    sub-int/2addr v3, p1

    #@1e
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 77
    :cond_2
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    #@23
    aput p2, v0, p1

    #@25
    .line 78
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    iput v0, p0, Landroid/util/IntArray;->mSize:I

    #@2b
    .line 66
    return-void
.end method

.method public addAll(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "values"    # Landroid/util/IntArray;

    #@0
    .prologue
    .line 103
    iget v0, p1, Landroid/util/IntArray;->mSize:I

    #@2
    .line 104
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    #@5
    .line 106
    iget-object v1, p1, Landroid/util/IntArray;->mValues:[I

    #@7
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    #@9
    iget v3, p0, Landroid/util/IntArray;->mSize:I

    #@b
    const/4 v4, 0x0

    #@c
    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@f
    .line 107
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    #@11
    add-int/2addr v1, v0

    #@12
    iput v1, p0, Landroid/util/IntArray;->mSize:I

    #@14
    .line 102
    return-void
.end method

.method public binarySearch(I)I
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    #@2
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/util/IntArray;->mSize:I

    #@3
    .line 129
    return-void
.end method

.method public clone()Landroid/util/IntArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/util/IntArray;

    #@6
    .line 136
    .local v0, "clone":Landroid/util/IntArray;
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [I

    #@e
    iput-object v1, v0, Landroid/util/IntArray;->mValues:[I

    #@10
    .line 137
    return-object v0
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
    .line 134
    invoke-virtual {p0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 145
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    #@8
    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    #@b
    throw v0

    #@c
    .line 147
    :cond_0
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    #@e
    aget v0, v0, p1

    #@10
    return v0
.end method

.method public indexOf(I)I
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 155
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    #@2
    .line 156
    .local v1, "n":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@5
    .line 157
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    #@7
    aget v2, v2, v0

    #@9
    if-ne v2, p1, :cond_0

    #@b
    .line 158
    return v0

    #@c
    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 161
    :cond_1
    const/4 v2, -0x1

    #@10
    return v2
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 168
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 169
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    #@8
    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    #@b
    throw v0

    #@c
    .line 171
    :cond_0
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    #@e
    add-int/lit8 v1, p1, 0x1

    #@10
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    #@12
    iget v3, p0, Landroid/util/IntArray;->mSize:I

    #@14
    sub-int/2addr v3, p1

    #@15
    add-int/lit8 v3, v3, -0x1

    #@17
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@1a
    .line 172
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    iput v0, p0, Landroid/util/IntArray;->mSize:I

    #@20
    .line 167
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 179
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    #@2
    return v0
.end method

.method public toArray()[I
    .locals 2

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    #@2
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
