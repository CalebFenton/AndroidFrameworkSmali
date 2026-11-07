.class public Lcom/android/internal/widget/remotecompose/core/WireBuffer;
.super Ljava/lang/Object;
.source "WireBuffer.java"


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x100000


# instance fields
.field blacklist mBuffer:[B

.field blacklist mIndex:I

.field blacklist mMaxSize:I

.field blacklist mSize:I

.field blacklist mStartingIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 28
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    .line 29
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 37
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    .line 38
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    .line 39
    return-void
.end method

.method private blacklist resize(I)V
    .registers 4
    .param p1, "need"    # I

    .line 47
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    if-lt v0, v1, :cond_1e

    .line 48
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    .line 51
    :cond_1e
    return-void
.end method


# virtual methods
.method public blacklist available()Z
    .registers 3

    .line 158
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist endWithSize()V
    .registers 4

    .line 122
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    sub-int/2addr v0, v1

    .line 123
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 124
    .local v1, "currentIndex":I
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 126
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 127
    return-void
.end method

.method public blacklist getBuffer()[B
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    return-object v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    return v0
.end method

.method public blacklist getMax_size()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    return v0
.end method

.method public blacklist getSize()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return v0
.end method

.method public blacklist peekInt()I
    .registers 7

    .line 213
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 214
    .local v0, "tmp":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tmp":I
    .local v2, "tmp":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 215
    .local v0, "v1":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmp":I
    .local v3, "tmp":I
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 216
    .local v1, "v2":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmp":I
    .local v4, "tmp":I
    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 217
    .local v2, "v3":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmp":I
    .local v5, "tmp":I
    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    .line 218
    .local v3, "v4":I
    add-int v4, v0, v1

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    return v4
.end method

.method public blacklist readBoolean()Z
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    .line 181
    .local v0, "value":B
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 182
    if-ne v0, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method public blacklist readBuffer()[B
    .registers 5

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 277
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 278
    .local v1, "b":[B
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 279
    return-object v1
.end method

.method public blacklist readBuffer(I)[B
    .registers 6
    .param p1, "maxSize"    # I

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 291
    .local v0, "count":I
    if-ltz v0, :cond_19

    if-gt v0, p1, :cond_19

    .line 295
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 296
    .local v1, "b":[B
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 297
    return-object v1

    .line 292
    .end local v1    # "b":[B
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt read a buff of invalid size 0 <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readByte()I
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 192
    .local v0, "value":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 193
    return v0
.end method

.method public blacklist readDouble()D
    .registers 3

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .registers 2

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readInt()I
    .registers 7

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 228
    .local v0, "v1":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 229
    .local v1, "v2":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 230
    .local v2, "v3":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    .line 231
    .local v3, "v4":I
    add-int v4, v0, v1

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    return v4
.end method

.method public blacklist readLong()J
    .registers 21

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    .line 241
    .local v1, "v1":J
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    .line 242
    .local v5, "v2":J
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v8, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    .line 243
    .local v7, "v3":J
    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v10, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v9, v9, v10

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    .line 244
    .local v9, "v4":J
    iget-object v11, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v13, 0x18

    shl-long/2addr v11, v13

    .line 245
    .local v11, "v5":J
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v14, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/16 v15, 0x10

    shl-long/2addr v13, v15

    .line 246
    .local v13, "v6":J
    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    move-wide/from16 v16, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, v15, v3

    int-to-long v3, v3

    and-long v3, v3, v16

    const/16 v15, 0x8

    shl-long/2addr v3, v15

    .line 247
    .local v3, "v7":J
    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    move-wide/from16 v18, v1

    .end local v1    # "v1":J
    .local v18, "v1":J
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v15, v1

    int-to-long v1, v1

    and-long v1, v1, v16

    const/4 v15, 0x0

    shl-long/2addr v1, v15

    .line 248
    .local v1, "v8":J
    add-long v15, v18, v5

    add-long/2addr v15, v7

    add-long/2addr v15, v9

    add-long/2addr v15, v11

    add-long/2addr v15, v13

    add-long/2addr v15, v3

    add-long/2addr v15, v1

    return-wide v15
.end method

.method public blacklist readOperationType()I
    .registers 2

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    return v0
.end method

.method public blacklist readShort()I
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 203
    .local v0, "v1":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 204
    .local v1, "v2":I
    add-int v2, v0, v1

    return v2
.end method

.method public blacklist readUTF8()Ljava/lang/String;
    .registers 3

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer()[B

    move-result-object v0

    .line 308
    .local v0, "stringBuffer":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public blacklist readUTF8(I)Ljava/lang/String;
    .registers 4
    .param p1, "maxSize"    # I

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBuffer(I)[B

    move-result-object v0

    .line 320
    .local v0, "stringBuffer":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public blacklist reset(I)V
    .registers 3
    .param p1, "expectedSize"    # I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 136
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    .line 137
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 138
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mMaxSize:I

    if-lt p1, v0, :cond_e

    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 141
    :cond_e
    return-void
.end method

.method public blacklist setIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 96
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 97
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    return v0
.end method

.method public blacklist start(I)V
    .registers 3
    .param p1, "type"    # I

    .line 105
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 107
    return-void
.end method

.method public blacklist startWithSize(I)V
    .registers 3
    .param p1, "type"    # I

    .line 115
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mStartingIndex:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 117
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    .line 118
    return-void
.end method

.method public blacklist writeBoolean(Z)V
    .registers 6
    .param p1, "value"    # Z

    .line 333
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 335
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 336
    return-void
.end method

.method public blacklist writeBuffer([B)V
    .registers 6
    .param p1, "b"    # [B

    .line 420
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 421
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 423
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 425
    .end local v0    # "i":I
    :cond_1d
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 426
    return-void
.end method

.method public blacklist writeByte(I)V
    .registers 6
    .param p1, "value"    # I

    .line 344
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 345
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 346
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 347
    return-void
.end method

.method public blacklist writeDouble(D)V
    .registers 5
    .param p1, "value"    # D

    .line 411
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 412
    return-void
.end method

.method public blacklist writeFloat(F)V
    .registers 3
    .param p1, "value"    # F

    .line 402
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 403
    return-void
.end method

.method public blacklist writeInt(I)V
    .registers 6
    .param p1, "value"    # I

    .line 368
    const/4 v0, 0x4

    .line 369
    .local v0, "need":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 370
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 371
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 372
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 373
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 374
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 375
    return-void
.end method

.method public blacklist writeLong(J)V
    .registers 10
    .param p1, "value"    # J

    .line 383
    const/16 v0, 0x8

    .line 384
    .local v0, "need":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 385
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 386
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 387
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 388
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 389
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 390
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 391
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    const/16 v3, 0x8

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 392
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-long v3, p1, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 393
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 394
    return-void
.end method

.method public blacklist writeShort(I)V
    .registers 6
    .param p1, "value"    # I

    .line 355
    const/4 v0, 0x2

    .line 356
    .local v0, "need":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->resize(I)V

    .line 357
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 358
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mIndex:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 359
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I

    .line 360
    return-void
.end method

.method public blacklist writeUTF8(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 435
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 436
    return-void
.end method
