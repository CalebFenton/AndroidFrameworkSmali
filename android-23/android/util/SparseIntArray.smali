.class public Landroid/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    #@5
    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 65
    if-nez p1, :cond_0

    #@6
    .line 66
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@8
    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@a
    .line 67
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@c
    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@e
    .line 72
    :goto_0
    iput v1, p0, Landroid/util/SparseIntArray;->mSize:I

    #@10
    .line 64
    return-void

    #@11
    .line 69
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@17
    .line 70
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@19
    array-length v0, v0

    #@1a
    new-array v0, v0, [I

    #@1c
    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public append(II)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 231
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@6
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    aget v0, v0, v1

    #@c
    if-gt p1, v0, :cond_0

    #@e
    .line 232
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@11
    .line 233
    return-void

    #@12
    .line 236
    :cond_0
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@14
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    #@16
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@1c
    .line 237
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@1e
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    #@20
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@26
    .line 238
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    #@2c
    .line 230
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 223
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    #@3
    .line 222
    return-void
.end method

.method public clone()Landroid/util/SparseIntArray;
    .locals 4

    #@0
    .prologue
    .line 77
    const/4 v1, 0x0

    #@1
    .line 79
    .local v1, "clone":Landroid/util/SparseIntArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/util/SparseIntArray;

    #@8
    move-object v1, v0

    #@9
    .line 80
    .local v1, "clone":Landroid/util/SparseIntArray;
    iget-object v3, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@b
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, [I

    #@11
    iput-object v3, v1, Landroid/util/SparseIntArray;->mKeys:[I

    #@13
    .line 81
    iget-object v3, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@15
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, [I

    #@1b
    iput-object v3, v1, Landroid/util/SparseIntArray;->mValues:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 85
    .end local v1    # "clone":Landroid/util/SparseIntArray;
    :goto_0
    return-object v1

    #@1e
    .line 82
    :catch_0
    move-exception v2

    #@1f
    .local v2, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
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
    .line 76
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 114
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 116
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 117
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@d
    .line 113
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public get(II)I
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # I

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 103
    .local v0, "i":I
    if-gez v0, :cond_0

    #@a
    .line 104
    return p2

    #@b
    .line 106
    :cond_0
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@d
    aget v1, v1, v0

    #@f
    return v1
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@2
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOfValue(I)I
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 212
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 213
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 214
    return v0

    #@c
    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 216
    :cond_1
    const/4 v1, -0x1

    #@10
    return v1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public put(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 136
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 138
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 139
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@c
    aput p2, v1, v0

    #@e
    .line 135
    :goto_0
    return-void

    #@f
    .line 141
    :cond_0
    not-int v0, v0

    #@10
    .line 143
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@12
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    #@14
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@1a
    .line 144
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@1c
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    #@1e
    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@24
    .line 145
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    iput v1, p0, Landroid/util/SparseIntArray;->mSize:I

    #@2a
    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    #@6
    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    #@8
    add-int/lit8 v4, p1, 0x1

    #@a
    sub-int/2addr v3, v4

    #@b
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@e
    .line 126
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@10
    add-int/lit8 v1, p1, 0x1

    #@12
    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@14
    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    #@16
    add-int/lit8 v4, p1, 0x1

    #@18
    sub-int/2addr v3, v4

    #@19
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@1c
    .line 127
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    #@22
    .line 124
    return-void
.end method

.method public setValueAt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@2
    aput p2, v0, p1

    #@4
    .line 190
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 154
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    #@3
    move-result v4

    #@4
    if-gtz v4, :cond_0

    #@6
    .line 249
    const-string/jumbo v4, "{}"

    #@9
    return-object v4

    #@a
    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    #@e
    mul-int/lit8 v4, v4, 0x1c

    #@10
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 253
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    #@15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 254
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    #@1b
    if-ge v1, v4, :cond_2

    #@1d
    .line 255
    if-lez v1, :cond_1

    #@1f
    .line 256
    const-string/jumbo v4, ", "

    #@22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 258
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@28
    move-result v2

    #@29
    .line 259
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 260
    const/16 v4, 0x3d

    #@2e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 261
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@34
    move-result v3

    #@35
    .line 262
    .local v3, "value":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    .line 254
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 264
    .end local v2    # "key":I
    .end local v3    # "value":I
    :cond_2
    const/16 v4, 0x7d

    #@3d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4
.end method

.method public valueAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method
