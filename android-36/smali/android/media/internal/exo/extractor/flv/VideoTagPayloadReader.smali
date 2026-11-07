.class final Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;
.super Landroid/media/internal/exo/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# instance fields
.field private blacklist frameType:I

.field private blacklist hasOutputFormat:Z

.field private blacklist hasOutputKeyframe:Z

.field private final blacklist nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist nalUnitLengthFieldLength:I


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/TrackOutput;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;)V

    .line 54
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    sget-object v0, Landroid/media/internal/exo/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 55
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method protected blacklist parseHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_16

    .line 72
    iput v0, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 p0, 0x5

    if-eq v0, p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0

    .line 70
    :cond_16
    new-instance p0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video format not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist parsePayload(Landroid/media/internal/exo/util/ParsableByteArray;J)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt24()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_69

    .line 83
    iget-boolean v1, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v1, :cond_69

    .line 84
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    .line 85
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 86
    invoke-static {v0}, Landroid/media/internal/exo/video/AvcConfig;->parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/AvcConfig;

    move-result-object p1

    .line 87
    iget v0, p1, Landroid/media/internal/exo/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v0, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 89
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v1, "video/avc"

    .line 91
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/media/internal/exo/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroid/media/internal/exo/video/AvcConfig;->width:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setWidth(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroid/media/internal/exo/video/AvcConfig;->height:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setHeight(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroid/media/internal/exo/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 95
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setPixelWidthHeightRatio(F)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    iget-object p1, p1, Landroid/media/internal/exo/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 96
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    .line 98
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v0, p1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 99
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    return p3

    :cond_69
    if-ne v0, p2, :cond_cb

    .line 101
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v0, :cond_cb

    .line 102
    iget v0, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v0, p2, :cond_75

    move v6, p2

    goto :goto_76

    :cond_75
    move v6, p3

    .line 103
    :goto_76
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v0, :cond_7d

    if-nez v6, :cond_7d

    return p3

    .line 109
    :cond_7d
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 110
    aput-byte p3, v0, p3

    .line 111
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 112
    aput-byte p3, v0, v1

    .line 113
    iget v0, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    move v7, p3

    .line 119
    :goto_90
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_c1

    .line 121
    iget-object v2, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget v3, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v2, v0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 122
    iget-object v2, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2, p3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 123
    iget-object v2, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 126
    iget-object v3, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, p3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 127
    iget-object v3, p0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v8, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v3, v8, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    add-int/lit8 v7, v7, 0x4

    .line 131
    iget-object v3, p0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v3, p1, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    add-int/2addr v7, v2

    goto :goto_90

    .line 134
    :cond_c1
    iget-object v3, p0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 136
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    return p2

    :cond_cb
    return p3
.end method
