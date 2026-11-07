.class public final Landroid/media/internal/exo/extractor/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private blacklist bitOffset:I

.field private final blacklist byteLimit:I

.field private blacklist byteOffset:I

.field private final blacklist data:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->data:[B

    .line 43
    array-length p1, p1

    iput p1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteLimit:I

    return-void
.end method

.method private blacklist assertValidOffset()V
    .registers 3

    .line 121
    iget v0, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteOffset:I

    if-ltz v0, :cond_10

    iget v1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteLimit:I

    if-lt v0, v1, :cond_e

    if-ne v0, v1, :cond_10

    iget p0, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->bitOffset:I

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
.method public blacklist getPosition()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist readBit()Z
    .registers 3

    .line 58
    iget-object v0, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->data:[B

    iget v1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 59
    :goto_12
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    return v0
.end method

.method public blacklist readBits(I)I
    .registers 8

    .line 70
    iget v0, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteOffset:I

    .line 71
    iget v1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 72
    iget-object v2, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    iget v4, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v2, v4

    and-int/2addr v0, v4

    :goto_1b
    if-ge v1, p1, :cond_2a

    .line 74
    iget-object v4, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    and-int/2addr v3, v2

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_1b

    :cond_2a
    rsub-int/lit8 v1, p1, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    .line 78
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    return v0
.end method

.method public blacklist skipBits(I)V
    .registers 5

    .line 88
    div-int/lit8 v0, p1, 0x8

    .line 89
    iget v1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteOffset:I

    .line 90
    iget v2, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->bitOffset:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    .line 92
    iput v1, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 v2, v2, -0x8

    .line 93
    iput v2, p0, Landroid/media/internal/exo/extractor/VorbisBitArray;->bitOffset:I

    .line 95
    :cond_1a
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->assertValidOffset()V

    return-void
.end method
