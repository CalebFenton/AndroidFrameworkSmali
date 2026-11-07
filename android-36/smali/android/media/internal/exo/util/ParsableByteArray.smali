.class public final Landroid/media/internal/exo/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# instance fields
.field private blacklist data:[B

.field private blacklist limit:I

.field private blacklist position:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Landroid/media/internal/exo/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    .line 47
    iput p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    .line 57
    array-length p1, p1

    iput p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    .line 68
    iput p2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    return-void
.end method


# virtual methods
.method public blacklist bytesLeft()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    iget p0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist capacity()I
    .registers 1

    .line 170
    iget-object p0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    array-length p0, p0

    return p0
.end method

.method public blacklist ensureCapacity(I)V
    .registers 3

    .line 113
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result v0

    if-le p1, v0, :cond_e

    .line 114
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    :cond_e
    return-void
.end method

.method public blacklist getData()[B
    .registers 1

    .line 165
    iget-object p0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    return-object p0
.end method

.method public blacklist getPosition()I
    .registers 1

    .line 140
    iget p0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    return p0
.end method

.method public blacklist limit()I
    .registers 1

    .line 125
    iget p0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    return p0
.end method

.method public blacklist readBytes(Landroid/media/internal/exo/util/ParsableBitArray;I)V
    .registers 5

    .line 192
    iget-object v0, p1, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 193
    invoke-virtual {p1, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    return-void
.end method

.method public blacklist readBytes([BII)V
    .registers 6

    .line 205
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    return-void
.end method

.method public blacklist readDelimiterTerminatedString(C)Ljava/lang/String;
    .registers 5

    .line 476
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 479
    :cond_8
    iget v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    .line 480
    :goto_a
    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    if-eq v1, p1, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 483
    :cond_17
    iget-object p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    sub-int v2, v0, v1

    invoke-static {p1, v1, v2}, Landroid/media/internal/exo/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object p1

    .line 484
    iput v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    .line 485
    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_2b

    add-int/lit8 v0, v0, 0x1

    .line 486
    iput v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    :cond_2b
    return-object p1
.end method

.method public blacklist readDouble()D
    .registers 3

    .line 410
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readInt()I
    .registers 6

    .line 302
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    iput v3, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    return p0
.end method

.method public blacklist readInt24()I
    .registers 6

    .line 265
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    shr-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    return p0
.end method

.method public blacklist readLittleEndianInt()I
    .registers 6

    .line 310
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    iput v3, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v2

    return p0
.end method

.method public blacklist readLittleEndianLong()J
    .registers 12

    .line 330
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x8

    shl-long/2addr v8, v2

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x3

    iput v8, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x10

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/lit8 v7, v1, 0x4

    iput v7, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x5

    iput v8, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x20

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/lit8 v7, v1, 0x6

    iput v7, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x7

    iput v8, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x30

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v8

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public blacklist readLittleEndianShort()S
    .registers 5

    .line 253
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v3

    int-to-short p0, p0

    return p0
.end method

.method public blacklist readLittleEndianUnsignedInt()J
    .registers 11

    .line 294
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x8

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x18

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist readLittleEndianUnsignedIntToInt()I
    .registers 4

    .line 383
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p0

    if-ltz p0, :cond_7

    return p0

    .line 385
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readLittleEndianUnsignedShort()I
    .registers 5

    .line 243
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v3

    return p0
.end method

.method public blacklist readLong()J
    .registers 11

    .line 318
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x30

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v7, v1, 0x4

    iput v7, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v4, v0, v4

    int-to-long v8, v4

    and-long/2addr v8, v5

    const/16 v4, 0x20

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x5

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v7, v1, 0x6

    iput v7, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v4, v0, v4

    int-to-long v8, v4

    and-long/2addr v8, v5

    const/16 v4, 0x10

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x7

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/2addr v1, v9

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    int-to-long v0, p0

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist readNullTerminatedString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readDelimiterTerminatedString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist readNullTerminatedString(I)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    .line 445
    const-string p0, ""

    return-object p0

    .line 448
    :cond_5
    iget v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    .line 449
    iget v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_18

    add-int/lit8 v1, p1, -0x1

    goto :goto_19

    :cond_18
    move v1, p1

    .line 452
    :goto_19
    iget-object v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    invoke-static {v2, v0, v1}, Landroid/media/internal/exo/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    return-object v0
.end method

.method public blacklist readShort()S
    .registers 5

    .line 248
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v3

    int-to-short p0, p0

    return p0
.end method

.method public blacklist readString(I)Ljava/lang/String;
    .registers 3

    .line 420
    sget-object v0, Landroid/media/internal/guava_common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 431
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 432
    iget p2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    return-object v0
.end method

.method public blacklist readSynchSafeInt()I
    .registers 4

    .line 356
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 357
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 358
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 359
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public blacklist readUnsignedByte()I
    .registers 4

    .line 233
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public blacklist readUnsignedFixedPoint1616()I
    .registers 6

    .line 342
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x4

    .line 343
    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    return v0
.end method

.method public blacklist readUnsignedInt()J
    .registers 11

    .line 286
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    int-to-long v0, p0

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist readUnsignedInt24()I
    .registers 6

    .line 258
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    return p0
.end method

.method public blacklist readUnsignedIntToInt()I
    .registers 4

    .line 369
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    if-ltz p0, :cond_7

    return p0

    .line 371
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readUnsignedLongToLong()J
    .registers 5

    .line 396
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_b

    return-wide v0

    .line 398
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist readUnsignedShort()I
    .registers 5

    .line 238
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v3

    return p0
.end method

.method public blacklist readUtf8EncodedLong()J
    .registers 12

    .line 542
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    move v3, v2

    :goto_9
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_25

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_22

    if-ge v3, v4, :cond_1e

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_26

    :cond_1e
    if-ne v3, v2, :cond_25

    move v2, v5

    goto :goto_26

    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_5c

    :goto_28
    if-ge v5, v2, :cond_56

    .line 559
    iget-object v3, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3f

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 561
    :cond_3f
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 565
    :cond_56
    iget v3, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    return-wide v0

    .line 556
    :cond_5c
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset(I)V
    .registers 3

    .line 78
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [B

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    :goto_b
    invoke-virtual {p0, v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    return-void
.end method

.method public blacklist reset([B)V
    .registers 3

    .line 88
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    return-void
.end method

.method public blacklist reset([BI)V
    .registers 3

    .line 98
    iput-object p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    .line 99
    iput p2, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    return-void
.end method

.method public blacklist setLimit(I)V
    .registers 3

    if-ltz p1, :cond_9

    .line 134
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 135
    iput p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public blacklist setPosition(I)V
    .registers 3

    if-ltz p1, :cond_8

    .line 152
    iget v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 153
    iput p1, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    return-void
.end method

.method public blacklist skipBytes(I)V
    .registers 3

    .line 181
    iget v0, p0, Landroid/media/internal/exo/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method
