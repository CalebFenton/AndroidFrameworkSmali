.class public final Landroid/media/internal/exo/video/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


# instance fields
.field public final blacklist codecs:Ljava/lang/String;

.field public final blacklist height:I

.field public final blacklist initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final blacklist nalUnitLengthFieldLength:I

.field public final blacklist pixelWidthHeightRatio:F

.field public final blacklist width:I


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroid/media/internal/exo/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 119
    iput p2, p0, Landroid/media/internal/exo/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 120
    iput p3, p0, Landroid/media/internal/exo/video/AvcConfig;->width:I

    .line 121
    iput p4, p0, Landroid/media/internal/exo/video/AvcConfig;->height:I

    .line 122
    iput p5, p0, Landroid/media/internal/exo/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 123
    iput-object p6, p0, Landroid/media/internal/exo/video/AvcConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method private static blacklist buildNalUnitForChild(Landroid/media/internal/exo/util/ParsableByteArray;)[B
    .registers 3

    .line 127
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 128
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 129
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 130
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/AvcConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 41
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 42
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_6d

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    if-ge v2, v0, :cond_27

    .line 49
    invoke-static {p0}, Landroid/media/internal/exo/video/AvcConfig;->buildNalUnitForChild(Landroid/media/internal/exo/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 51
    :cond_27
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    move v5, v1

    :goto_2c
    if-ge v5, v2, :cond_38

    .line 53
    invoke-static {p0}, Landroid/media/internal/exo/video/AvcConfig;->buildNalUnitForChild(Landroid/media/internal/exo/util/ParsableByteArray;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_38
    if-lez v0, :cond_60

    .line 61
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 64
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    .line 63
    invoke-static {v0, v4, p0}, Landroid/media/internal/exo/util/NalUnitUtil;->parseSpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    move-result-object p0

    .line 65
    iget v0, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->width:I

    .line 66
    iget v1, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->height:I

    .line 67
    iget v2, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 68
    iget v5, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->profileIdc:I

    iget v6, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget p0, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 69
    invoke-static {v5, v6, p0}, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object p0

    move v5, v0

    move v6, v1

    :goto_5d
    move-object v8, p0

    move v7, v2

    goto :goto_67

    :cond_60
    const/4 v0, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 p0, 0x0

    move v5, v0

    move v6, v5

    goto :goto_5d

    .line 73
    :goto_67
    new-instance v2, Landroid/media/internal/exo/video/AvcConfig;

    invoke-direct/range {v2 .. v8}, Landroid/media/internal/exo/video/AvcConfig;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V

    return-object v2

    .line 44
    :cond_6d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_73
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_73} :catch_73

    :catch_73
    move-exception v0

    move-object p0, v0

    .line 81
    const-string v0, "Error parsing AVC config"

    invoke-static {v0, p0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method
