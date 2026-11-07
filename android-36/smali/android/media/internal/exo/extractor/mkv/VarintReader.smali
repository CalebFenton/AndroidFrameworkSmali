.class final Landroid/media/internal/exo/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# static fields
.field private static final blacklist VARINT_LENGTH_MASKS:[J


# instance fields
.field private blacklist length:I

.field private final blacklist scratch:[B

.field private blacklist state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 35
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_a
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 44
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->scratch:[B

    return-void
.end method

.method public static blacklist assembleVarint([BIZ)J
    .registers 9

    const/4 v0, 0x0

    .line 141
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    if-eqz p2, :cond_11

    .line 143
    sget-object p2, Landroid/media/internal/exo/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v4, p2, v4

    not-long v4, v4

    and-long/2addr v0, v4

    :cond_11
    const/4 p2, 0x1

    :goto_12
    if-ge p2, p1, :cond_1f

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    .line 146
    aget-byte v4, p0, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_1f
    return-wide v0
.end method

.method public static blacklist parseUnsignedVarintLength(I)I
    .registers 6

    const/4 v0, 0x0

    .line 122
    :goto_1
    sget-object v1, Landroid/media/internal/exo/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 123
    aget-wide v1, v1, v0

    int-to-long v3, p0

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public blacklist getLastLength()I
    .registers 1

    .line 110
    iget p0, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->length:I

    return p0
.end method

.method public blacklist readUnsignedVarint(Landroid/media/internal/exo/extractor/ExtractorInput;ZZI)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    .line 83
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->scratch:[B

    invoke-interface {p1, v0, v1, v2, p2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p2

    if-nez p2, :cond_11

    const-wide/16 p0, -0x1

    return-wide p0

    .line 86
    :cond_11
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->scratch:[B

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    .line 87
    invoke-static {p2}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result p2

    iput p2, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->length:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_23

    .line 91
    iput v2, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->state:I

    goto :goto_2b

    .line 89
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No valid varint length mask found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_2b
    :goto_2b
    iget p2, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->length:I

    if-le p2, p4, :cond_34

    .line 95
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->state:I

    const-wide/16 p0, -0x2

    return-wide p0

    :cond_34
    if-eq p2, v2, :cond_3c

    .line 101
    iget-object p4, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->scratch:[B

    sub-int/2addr p2, v2

    invoke-interface {p1, p4, v2, p2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 104
    :cond_3c
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->state:I

    .line 105
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->scratch:[B

    iget p0, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->length:I

    invoke-static {p1, p0, p3}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->state:I

    .line 50
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/VarintReader;->length:I

    return-void
.end method
