.class public Landroid/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private greylist-max-o mKeys:[I

.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[J


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_e

    .line 65
    sget-object v0, Landroid/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 66
    sget-object v0, Landroid/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    goto :goto_1b

    .line 68
    :cond_e
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 69
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 71
    :goto_1b
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist append(IJ)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # J

    .line 305
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_12

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 307
    return-void

    .line 310
    :cond_12
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 311
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 312
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 313
    return-void
.end method

.method public whitelist clear()V
    .registers 2

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 298
    return-void
.end method

.method public whitelist clone()Landroid/util/SparseLongArray;
    .registers 3

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "clone":Landroid/util/SparseLongArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;

    move-object v0, v1

    .line 79
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 80
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/util/SparseLongArray;->mValues:[J
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 83
    goto :goto_1e

    .line 81
    :catch_1d
    move-exception v1

    .line 84
    :goto_1e
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist delete(I)V
    .registers 4
    .param p1, "key"    # I

    .line 113
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 115
    .local v0, "i":I
    if-ltz v0, :cond_d

    .line 116
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 118
    :cond_d
    return-void
.end method

.method public whitelist get(I)J
    .registers 4
    .param p1, "key"    # I

    .line 92
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist get(IJ)J
    .registers 7
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # J

    .line 100
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 102
    .local v0, "i":I
    if-gez v0, :cond_b

    .line 103
    return-wide p2

    .line 105
    :cond_b
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public blacklist incrementValue(IJ)V
    .registers 8
    .param p1, "key"    # I
    .param p2, "summand"    # J

    .line 176
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 178
    .local v0, "i":I
    if-ltz v0, :cond_12

    .line 179
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v2, v1, v0

    add-long/2addr v2, p2

    aput-wide v2, v1, v0

    goto :goto_2d

    .line 181
    :cond_12
    not-int v0, v0

    .line 183
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 184
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 185
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 187
    :goto_2d
    return-void
.end method

.method public whitelist indexOfKey(I)I
    .registers 4
    .param p1, "key"    # I

    .line 274
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public whitelist indexOfValue(J)I
    .registers 6
    .param p1, "value"    # J

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_11

    .line 287
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_e

    .line 288
    return v0

    .line 286
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 213
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 216
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 218
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist put(IJ)V
    .registers 7
    .param p1, "key"    # I
    .param p2, "value"    # J

    .line 152
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 154
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 155
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    goto :goto_2a

    .line 157
    :cond_f
    not-int v0, v0

    .line 159
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 160
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 161
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 163
    :goto_2a
    return-void
.end method

.method public whitelist removeAt(I)V
    .registers 7
    .param p1, "index"    # I

    .line 141
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 144
    return-void
.end method

.method public greylist-max-o removeAtRange(II)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 131
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 132
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int v1, p1, p2

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int v4, p1, p2

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int v1, p1, p2

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int v4, p1, p2

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 135
    return-void
.end method

.method public blacklist setValueAt(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 259
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 262
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 265
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 266
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 322
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 323
    const-string/jumbo v0, "{}"

    return-object v0

    .line 326
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 327
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v1, v2, :cond_3a

    .line 329
    if-lez v1, :cond_24

    .line 330
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    .line 333
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    .line 336
    .local v3, "value":J
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 328
    .end local v2    # "key":I
    .end local v3    # "value":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 338
    .end local v1    # "i":I
    :cond_3a
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueAt(I)J
    .registers 4
    .param p1, "index"    # I

    .line 238
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 241
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 243
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
