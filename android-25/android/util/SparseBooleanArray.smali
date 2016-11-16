.class public Landroid/util/SparseBooleanArray;
.super Ljava/lang/Object;
.source "SparseBooleanArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 51
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@5
    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    if-nez p1, :cond_0

    #@6
    .line 63
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@8
    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@a
    .line 64
    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    #@c
    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@e
    .line 69
    :goto_0
    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@10
    .line 61
    return-void

    #@11
    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@17
    .line 67
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@19
    array-length v0, v0

    #@1a
    new-array v0, v0, [Z

    #@1c
    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public append(IZ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 230
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@6
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    aget v0, v0, v1

    #@c
    if-gt p1, v0, :cond_0

    #@e
    .line 231
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@11
    .line 232
    return-void

    #@12
    .line 235
    :cond_0
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@14
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@16
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@1c
    .line 236
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@1e
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@20
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@26
    .line 237
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@2c
    .line 229
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@3
    .line 221
    return-void
.end method

.method public clone()Landroid/util/SparseBooleanArray;
    .locals 4

    #@0
    .prologue
    .line 74
    const/4 v1, 0x0

    #@1
    .line 76
    .local v1, "clone":Landroid/util/SparseBooleanArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/util/SparseBooleanArray;

    #@8
    move-object v1, v0

    #@9
    .line 77
    .local v1, "clone":Landroid/util/SparseBooleanArray;
    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@b
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, [I

    #@11
    iput-object v3, v1, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@13
    .line 78
    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@15
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, [Z

    #@1b
    iput-object v3, v1, Landroid/util/SparseBooleanArray;->mValues:[Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 82
    .end local v1    # "clone":Landroid/util/SparseBooleanArray;
    :goto_0
    return-object v1

    #@1e
    .line 79
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
    .line 73
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(I)V
    .locals 6
    .param p1, "key"    # I

    #@0
    .prologue
    .line 111
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 113
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 114
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@c
    add-int/lit8 v2, v0, 0x1

    #@e
    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@10
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@12
    add-int/lit8 v5, v0, 0x1

    #@14
    sub-int/2addr v4, v5

    #@15
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 115
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@1a
    add-int/lit8 v2, v0, 0x1

    #@1c
    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@1e
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@20
    add-int/lit8 v5, v0, 0x1

    #@22
    sub-int/2addr v4, v5

    #@23
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@26
    .line 116
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@28
    add-int/lit8 v1, v1, -0x1

    #@2a
    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@2c
    .line 110
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 251
    if-ne p0, p1, :cond_0

    #@4
    .line 252
    return v5

    #@5
    .line 255
    :cond_0
    instance-of v2, p1, Landroid/util/SparseBooleanArray;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 256
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 259
    check-cast v1, Landroid/util/SparseBooleanArray;

    #@d
    .line 260
    .local v1, "other":Landroid/util/SparseBooleanArray;
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@f
    iget v3, v1, Landroid/util/SparseBooleanArray;->mSize:I

    #@11
    if-eq v2, v3, :cond_2

    #@13
    .line 261
    return v4

    #@14
    .line 264
    :cond_2
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@17
    if-ge v0, v2, :cond_5

    #@19
    .line 265
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@1b
    aget v2, v2, v0

    #@1d
    iget-object v3, v1, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@1f
    aget v3, v3, v0

    #@21
    if-eq v2, v3, :cond_3

    #@23
    .line 266
    return v4

    #@24
    .line 268
    :cond_3
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@26
    aget-boolean v2, v2, v0

    #@28
    iget-object v3, v1, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@2a
    aget-boolean v3, v3, v0

    #@2c
    if-eq v2, v3, :cond_4

    #@2e
    .line 269
    return v4

    #@2f
    .line 264
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 272
    :cond_5
    return v5
.end method

.method public get(I)Z
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public get(IZ)Z
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # Z

    #@0
    .prologue
    .line 98
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 100
    .local v0, "i":I
    if-gez v0, :cond_0

    #@a
    .line 101
    return p2

    #@b
    .line 103
    :cond_0
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@d
    aget-boolean v1, v1, v0

    #@f
    return v1
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 242
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@2
    .line 243
    .local v0, "hashCode":I
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 244
    mul-int/lit8 v2, v0, 0x1f

    #@9
    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@b
    aget v3, v3, v1

    #@d
    add-int/2addr v3, v2

    #@e
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@10
    aget-boolean v2, v2, v1

    #@12
    if-eqz v2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :goto_1
    or-int v0, v3, v2

    #@17
    .line 243
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 244
    :cond_0
    const/4 v2, 0x0

    #@1b
    goto :goto_1

    #@1c
    .line 246
    :cond_1
    return v0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@2
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOfValue(Z)I
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 212
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@7
    aget-boolean v1, v1, v0

    #@9
    if-ne v1, p1, :cond_0

    #@b
    .line 213
    return v0

    #@c
    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 215
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
    .line 165
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public put(IZ)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 133
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@2
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@7
    move-result v0

    #@8
    .line 135
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 136
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@c
    aput-boolean p2, v1, v0

    #@e
    .line 132
    :goto_0
    return-void

    #@f
    .line 138
    :cond_0
    not-int v0, v0

    #@10
    .line 140
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@12
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@14
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@1a
    .line 141
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@1c
    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@1e
    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([ZIIZ)[Z

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@24
    .line 142
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@2a
    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@6
    iget v3, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@8
    add-int/lit8 v4, p1, 0x1

    #@a
    sub-int/2addr v3, v4

    #@b
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@e
    .line 123
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@10
    add-int/lit8 v1, p1, 0x1

    #@12
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@14
    iget v3, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@16
    add-int/lit8 v4, p1, 0x1

    #@18
    sub-int/2addr v3, v4

    #@19
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@1c
    .line 124
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@22
    .line 121
    return-void
.end method

.method public setKeyAt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "key"    # I

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    #@2
    aput p2, v0, p1

    #@4
    .line 189
    return-void
.end method

.method public setValueAt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@2
    aput-boolean p2, v0, p1

    #@4
    .line 184
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 151
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    #@3
    move-result v4

    #@4
    if-gtz v4, :cond_0

    #@6
    .line 283
    const-string/jumbo v4, "{}"

    #@9
    return-object v4

    #@a
    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@e
    mul-int/lit8 v4, v4, 0x1c

    #@10
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 287
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    #@15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 288
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    #@1b
    if-ge v1, v4, :cond_2

    #@1d
    .line 289
    if-lez v1, :cond_1

    #@1f
    .line 290
    const-string/jumbo v4, ", "

    #@22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 292
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@28
    move-result v2

    #@29
    .line 293
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 294
    const/16 v4, 0x3d

    #@2e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 295
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@34
    move-result v3

    #@35
    .line 296
    .local v3, "value":Z
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    .line 288
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 298
    .end local v2    # "key":I
    .end local v3    # "value":Z
    :cond_2
    const/16 v4, 0x7d

    #@3d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4
.end method

.method public valueAt(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    #@2
    aget-boolean v0, v0, p1

    #@4
    return v0
.end method
