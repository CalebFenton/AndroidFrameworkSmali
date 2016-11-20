.class public Landroid/util/LongSparseLongArray;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    #@5
    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    if-nez p1, :cond_0

    #@6
    .line 68
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@8
    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@a
    .line 69
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    #@c
    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@e
    .line 74
    :goto_0
    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@10
    .line 66
    return-void

    #@11
    .line 71
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@17
    .line 72
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@19
    array-length v0, v0

    #@1a
    new-array v0, v0, [J

    #@1c
    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public append(JJ)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "value"    # J

    #@0
    .prologue
    .line 225
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@6
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    aget-wide v0, v0, v1

    #@c
    cmp-long v0, p1, v0

    #@e
    if-gtz v0, :cond_0

    #@10
    .line 226
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    #@13
    .line 227
    return-void

    #@14
    .line 230
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@16
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@18
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@1e
    .line 231
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@20
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@22
    invoke-static {v0, v1, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@28
    .line 232
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@2e
    .line 224
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@3
    .line 216
    return-void
.end method

.method public clone()Landroid/util/LongSparseLongArray;
    .locals 4

    #@0
    .prologue
    .line 79
    const/4 v1, 0x0

    #@1
    .line 81
    .local v1, "clone":Landroid/util/LongSparseLongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/util/LongSparseLongArray;

    #@8
    move-object v1, v0

    #@9
    .line 82
    .local v1, "clone":Landroid/util/LongSparseLongArray;
    iget-object v3, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@b
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, [J

    #@11
    iput-object v3, v1, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@13
    .line 83
    iget-object v3, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@15
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, [J

    #@1b
    iput-object v3, v1, Landroid/util/LongSparseLongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 87
    .end local v1    # "clone":Landroid/util/LongSparseLongArray;
    :goto_0
    return-object v1

    #@1e
    .line 84
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
    .line 78
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(J)V
    .locals 3
    .param p1, "key"    # J

    #@0
    .prologue
    .line 116
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@2
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    .line 118
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 119
    invoke-virtual {p0, v0}, Landroid/util/LongSparseLongArray;->removeAt(I)V

    #@d
    .line 115
    :cond_0
    return-void
.end method

.method public get(J)J
    .locals 3
    .param p1, "key"    # J

    #@0
    .prologue
    .line 95
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->get(JJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public get(JJ)J
    .locals 5
    .param p1, "key"    # J
    .param p3, "valueIfKeyNotFound"    # J

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@2
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    .line 105
    .local v0, "i":I
    if-gez v0, :cond_0

    #@a
    .line 106
    return-wide p3

    #@b
    .line 108
    :cond_0
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@d
    aget-wide v2, v1, v0

    #@f
    return-wide v2
.end method

.method public indexOfKey(J)I
    .locals 3
    .param p1, "key"    # J

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@2
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@4
    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOfValue(J)I
    .locals 5
    .param p1, "value"    # J

    #@0
    .prologue
    .line 206
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 207
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@7
    aget-wide v2, v1, v0

    #@9
    cmp-long v1, v2, p1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 208
    return v0

    #@e
    .line 206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 210
    :cond_1
    const/4 v1, -0x1

    #@12
    return v1
.end method

.method public keyAt(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    return-wide v0
.end method

.method public put(JJ)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "value"    # J

    #@0
    .prologue
    .line 138
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@2
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@4
    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    #@7
    move-result v0

    #@8
    .line 140
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@a
    .line 141
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@c
    aput-wide p3, v1, v0

    #@e
    .line 137
    :goto_0
    return-void

    #@f
    .line 143
    :cond_0
    not-int v0, v0

    #@10
    .line 145
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@12
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@14
    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@1a
    .line 146
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@1c
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@1e
    invoke-static {v1, v2, v0, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@24
    .line 147
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@2a
    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    #@6
    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@8
    add-int/lit8 v4, p1, 0x1

    #@a
    sub-int/2addr v3, v4

    #@b
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@e
    .line 128
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@10
    add-int/lit8 v1, p1, 0x1

    #@12
    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@14
    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@16
    add-int/lit8 v4, p1, 0x1

    #@18
    sub-int/2addr v3, v4

    #@19
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@1c
    .line 129
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@22
    .line 126
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    #@3
    move-result v6

    #@4
    if-gtz v6, :cond_0

    #@6
    .line 243
    const-string/jumbo v6, "{}"

    #@9
    return-object v6

    #@a
    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v6, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@e
    mul-int/lit8 v6, v6, 0x1c

    #@10
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 247
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    #@15
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 248
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v6, p0, Landroid/util/LongSparseLongArray;->mSize:I

    #@1b
    if-ge v1, v6, :cond_2

    #@1d
    .line 249
    if-lez v1, :cond_1

    #@1f
    .line 250
    const-string/jumbo v6, ", "

    #@22
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 252
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    #@28
    move-result-wide v2

    #@29
    .line 253
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    .line 254
    const/16 v6, 0x3d

    #@2e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 255
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    #@34
    move-result-wide v4

    #@35
    .line 256
    .local v4, "value":J
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    .line 248
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 258
    .end local v2    # "key":J
    .end local v4    # "value":J
    :cond_2
    const/16 v6, 0x7d

    #@3d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    return-object v6
.end method

.method public valueAt(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    return-wide v0
.end method
