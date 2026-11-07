.class public Landroid/util/LongSparseLongArray;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LongSparseLongArray$Parcelling;
    }
.end annotation


# instance fields
.field private greylist-max-p mKeys:[J

.field private greylist-max-p mSize:I

.field private greylist-max-p mValues:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J
    .registers 1

    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSize(Landroid/util/LongSparseLongArray;)I
    .registers 1

    iget p0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValues(Landroid/util/LongSparseLongArray;)[J
    .registers 1

    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeys(Landroid/util/LongSparseLongArray;[J)V
    .registers 2

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSize(Landroid/util/LongSparseLongArray;I)V
    .registers 2

    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmValues(Landroid/util/LongSparseLongArray;[J)V
    .registers 2

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 62
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_e

    .line 74
    sget-object v0, Landroid/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 75
    sget-object v0, Landroid/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    goto :goto_1b

    .line 77
    :cond_e
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 78
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 80
    :goto_1b
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 81
    return-void
.end method


# virtual methods
.method public greylist-max-o append(JJ)V
    .registers 7
    .param p1, "key"    # J
    .param p3, "value"    # J

    .line 251
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 252
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 253
    return-void

    .line 256
    :cond_14
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 257
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 258
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 259
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 244
    return-void
.end method

.method public blacklist clone()Landroid/util/LongSparseLongArray;
    .registers 3

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "clone":Landroid/util/LongSparseLongArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseLongArray;

    move-object v0, v1

    .line 88
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 89
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/util/LongSparseLongArray;->mValues:[J
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 92
    goto :goto_1e

    .line 90
    :catch_1d
    move-exception v1

    .line 93
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

    .line 49
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o delete(J)V
    .registers 5
    .param p1, "key"    # J

    .line 122
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 124
    .local v0, "i":I
    if-ltz v0, :cond_d

    .line 125
    invoke-virtual {p0, v0}, Landroid/util/LongSparseLongArray;->removeAt(I)V

    .line 127
    :cond_d
    return-void
.end method

.method public greylist-max-o get(J)J
    .registers 5
    .param p1, "key"    # J

    .line 101
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o get(JJ)J
    .registers 8
    .param p1, "key"    # J
    .param p3, "valueIfKeyNotFound"    # J

    .line 109
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 111
    .local v0, "i":I
    if-gez v0, :cond_b

    .line 112
    return-wide p3

    .line 114
    :cond_b
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public greylist-max-o indexOfKey(J)I
    .registers 5
    .param p1, "key"    # J

    .line 220
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o indexOfValue(J)I
    .registers 6
    .param p1, "value"    # J

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v0, v1, :cond_11

    .line 233
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_e

    .line 234
    return v0

    .line 232
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "i":I
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o keyAt(I)J
    .registers 4
    .param p1, "index"    # I

    .line 181
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 184
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 186
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public greylist-max-o put(JJ)V
    .registers 8
    .param p1, "key"    # J
    .param p3, "value"    # J

    .line 144
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 146
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 147
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    goto :goto_2a

    .line 149
    :cond_f
    not-int v0, v0

    .line 151
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 152
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 153
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 155
    :goto_2a
    return-void
.end method

.method public greylist-max-o removeAt(I)V
    .registers 7
    .param p1, "index"    # I

    .line 133
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 136
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 268
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 269
    const-string/jumbo v0, "{}"

    return-object v0

    .line 272
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 273
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v1, v2, :cond_3a

    .line 275
    if-lez v1, :cond_24

    .line 276
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    .line 279
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 282
    .local v4, "value":J
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    .end local v2    # "key":J
    .end local v4    # "value":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 284
    .end local v1    # "i":I
    :cond_3a
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o valueAt(I)J
    .registers 4
    .param p1, "index"    # I

    .line 206
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 209
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 211
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
