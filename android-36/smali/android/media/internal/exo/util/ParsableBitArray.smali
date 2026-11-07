.class public final Landroid/media/internal/exo/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private blacklist bitOffset:I

.field private blacklist byteLimit:I

.field private blacklist byteOffset:I

.field public blacklist data:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Landroid/media/internal/exo/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    .line 45
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    .line 56
    iput p2, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method private blacklist assertValidOffset()V
    .registers 3

    .line 341
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_10

    iget v1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_e

    if-ne v0, v1, :cond_10

    iget p0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    if-nez p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public blacklist bitsLeft()I
    .registers 3

    .line 94
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist byteAlign()V
    .registers 2

    .line 240
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 243
    iput v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    .line 244
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    .line 245
    invoke-direct {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public blacklist getPosition()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist putInt(II)V
    .registers 11

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ge p2, v0, :cond_9

    shl-int v0, v1, p2

    sub-int/2addr v0, v1

    and-int/2addr p1, v0

    .line 316
    :cond_9
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    const/16 v2, 0x8

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 317
    iget v3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    const v5, 0xff00

    shr-int v3, v5, v3

    shl-int v5, v1, v4

    sub-int/2addr v5, v1

    or-int/2addr v3, v5

    .line 319
    iget-object v5, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    iget v6, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    aget-byte v7, v5, v6

    and-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    sub-int v0, p2, v0

    ushr-int v7, p1, v0

    shl-int v4, v7, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 321
    aput-byte v3, v5, v6

    add-int/2addr v6, v1

    :goto_36
    if-le v0, v2, :cond_47

    .line 326
    iget-object v3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v0, -0x8

    ushr-int v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    add-int/lit8 v0, v0, -0x8

    move v6, v4

    goto :goto_36

    :cond_47
    rsub-int/lit8 v2, v0, 0x8

    .line 330
    iget-object v3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    aget-byte v4, v3, v6

    shl-int v5, v1, v2

    sub-int/2addr v5, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    and-int/2addr p1, v0

    shl-int/2addr p1, v2

    or-int/2addr p1, v4

    int-to-byte p1, p1

    .line 333
    aput-byte p1, v3, v6

    .line 335
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 336
    invoke-direct {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public blacklist readBit()Z
    .registers 4

    .line 154
    iget-object v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 155
    :goto_11
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    return v0
.end method

.method public blacklist readBits(I)I
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 170
    :cond_4
    iget v1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    move v1, v0

    .line 171
    :goto_a
    iget v2, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_24

    add-int/lit8 v2, v2, -0x8

    .line 172
    iput v2, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    .line 173
    iget-object v3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    iget v4, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_a

    .line 175
    :cond_24
    iget-object v4, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    const/4 v4, -0x1

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_3e

    .line 178
    iput v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v5, v5, 0x1

    .line 179
    iput v5, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    .line 181
    :cond_3e
    invoke-direct {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->assertValidOffset()V

    return p1
.end method

.method public blacklist readBits([BII)V
    .registers 11

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_3
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_25

    .line 211
    iget-object v3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    iget v4, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v3, v4

    iget v6, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 212
    aget-byte v3, v3, v5

    and-int/2addr v1, v3

    sub-int/2addr v2, v6

    shr-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_25
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_2a

    return-void

    .line 220
    :cond_2a
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 221
    iget v3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    add-int v4, v3, p2

    if-le v4, v2, :cond_4b

    .line 223
    iget-object v4, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    shl-int/2addr v4, v3

    or-int/2addr p3, v4

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    sub-int/2addr v3, v2

    .line 224
    iput v3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    .line 226
    :cond_4b
    iget p3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    .line 227
    iget-object v3, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    iget v4, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    rsub-int/lit8 v3, p3, 0x8

    shr-int/2addr v1, v3

    .line 228
    aget-byte v3, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v1, p2

    int-to-byte p2, p2

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne p3, v2, :cond_6e

    const/4 p1, 0x0

    .line 230
    iput p1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v4, v4, 0x1

    .line 231
    iput v4, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    .line 233
    :cond_6e
    invoke-direct {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public blacklist readBitsToLong(I)J
    .registers 3

    const/16 v0, 0x20

    if-gt p1, v0, :cond_d

    .line 193
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p0

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->toUnsignedLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_d
    sub-int/2addr p1, v0

    .line 195
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/media/internal/exo/util/Util;->toLong(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist reset(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 4

    .line 75
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->reset([BI)V

    .line 76
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    return-void
.end method

.method public blacklist reset([B)V
    .registers 3

    .line 65
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->reset([BI)V

    return-void
.end method

.method public blacklist reset([BI)V
    .registers 3

    .line 86
    iput-object p1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    .line 88
    iput p1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    .line 89
    iput p2, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method public blacklist setPosition(I)V
    .registers 3

    .line 118
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    .line 119
    iput p1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    .line 120
    invoke-direct {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public blacklist skipBit()V
    .registers 3

    .line 125
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    .line 127
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    .line 129
    :cond_13
    invoke-direct {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public blacklist skipBits(I)V
    .registers 5

    .line 138
    div-int/lit8 v0, p1, 0x8

    .line 139
    iget v1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    .line 140
    iget v2, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    .line 142
    iput v1, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v2, v2, -0x8

    .line 143
    iput v2, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    .line 145
    :cond_1a
    invoke-direct {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public blacklist skipBytes(I)V
    .registers 3

    .line 272
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    .line 273
    iget v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/media/internal/exo/util/ParsableBitArray;->byteOffset:I

    .line 274
    invoke-direct {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method
