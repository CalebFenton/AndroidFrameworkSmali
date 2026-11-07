.class final Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImaAdPcmOutputWriter"
.end annotation


# static fields
.field private static final blacklist INDEX_TABLE:[I

.field private static final blacklist STEP_TABLE:[I


# instance fields
.field private final blacklist decodedData:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private final blacklist format:Landroid/media/internal/exo/Format;

.field private final blacklist framesPerBlock:I

.field private final blacklist inputData:[B

.field private blacklist outputFrameCount:J

.field private blacklist pendingInputBytes:I

.field private blacklist pendingOutputBytes:I

.field private blacklist startTimeUs:J

.field private final blacklist targetSampleSizeFrames:I

.field private final blacklist trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

.field private final blacklist wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 381
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    const/16 v0, 0x59

    .line 385
    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_38
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/wav/WavFormat;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    .line 429
    iput-object p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 430
    iput-object p3, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    .line 431
    iget p1, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    .line 433
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v1, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->extraData:[B

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    .line 434
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 435
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    .line 437
    iget v1, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->numChannels:I

    .line 442
    iget v2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    mul-int/lit8 v3, v1, 0x4

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x8

    iget v3, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr v3, v1

    div-int/2addr v2, v3

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_86

    .line 454
    invoke-static {p1, v0}, Landroid/media/internal/exo/util/Util;->ceilDivide(II)I

    move-result p2

    .line 455
    iget v2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    .line 456
    new-instance v2, Landroid/media/internal/exo/util/ParsableByteArray;

    .line 458
    invoke-static {v0, v1}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v3

    mul-int/2addr p2, v3

    invoke-direct {v2, p2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 462
    iget p2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    iget v2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v0

    .line 463
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v2, "audio/raw"

    .line 465
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 466
    invoke-virtual {v0, p2}, Landroid/media/internal/exo/Format$Builder;->setAverageBitrate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 467
    invoke-virtual {v0, p2}, Landroid/media/internal/exo/Format$Builder;->setPeakBitrate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    .line 468
    invoke-static {p1, v1}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/media/internal/exo/Format$Builder;->setMaxInputSize(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget p2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->numChannels:I

    .line 469
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget p2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    .line 470
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 471
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/Format$Builder;->setPcmEncoding(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Landroid/media/internal/exo/Format;

    return-void

    .line 447
    :cond_86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expected frames per block: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist decode([BILandroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_18

    move v2, v0

    .line 563
    :goto_5
    iget-object v3, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v3, v3, Landroid/media/internal/exo/extractor/wav/WavFormat;->numChannels:I

    if-ge v2, v3, :cond_15

    .line 564
    invoke-virtual {p3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodeBlockForChannel([BII[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 567
    :cond_18
    iget p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr p1, p2

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result p0

    .line 568
    invoke-virtual {p3, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 569
    invoke-virtual {p3, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method private blacklist decodeBlockForChannel([BII[B)V
    .registers 14

    .line 574
    iget-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v1, v0, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    .line 575
    iget v0, v0, Landroid/media/internal/exo/extractor/wav/WavFormat;->numChannels:I

    mul-int v2, p2, v1

    mul-int/lit8 v3, p3, 0x4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v2

    .line 587
    div-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v4, v2, 0x1

    .line 591
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    add-int/lit8 v2, v2, 0x2

    .line 593
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x58

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 594
    sget-object v5, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v5, v5, v2

    .line 597
    iget p0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr p2, p0

    mul-int/2addr p2, v0

    add-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    and-int/lit16 p0, v4, 0xff

    int-to-byte p0, p0

    .line 598
    aput-byte p0, p4, p2

    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 p3, v4, 0x8

    int-to-byte p3, p3

    .line 599
    aput-byte p3, p4, p0

    const/4 p0, 0x0

    move p3, p0

    :goto_44
    mul-int/lit8 v6, v1, 0x2

    if-ge p3, v6, :cond_99

    .line 603
    div-int/lit8 v6, p3, 0x8

    .line 604
    div-int/lit8 v7, p3, 0x2

    rem-int/lit8 v7, v7, 0x4

    mul-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v3

    add-int/2addr v6, v7

    .line 607
    aget-byte v6, p1, v6

    and-int/lit16 v7, v6, 0xff

    .line 608
    rem-int/lit8 v8, p3, 0x2

    if-nez v8, :cond_5e

    and-int/lit8 v6, v6, 0xf

    goto :goto_60

    :cond_5e
    shr-int/lit8 v6, v7, 0x4

    :goto_60
    and-int/lit8 v7, v6, 0x7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v5

    shr-int/lit8 v5, v7, 0x3

    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_6e

    neg-int v5, v5

    :cond_6e
    add-int/2addr v4, v5

    const/16 v5, -0x8000

    const/16 v7, 0x7fff

    .line 622
    invoke-static {v4, v5, v7}, Landroid/media/internal/exo/util/Util;->constrainValue(III)I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr p2, v5

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 626
    aput-byte v5, p4, p2

    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    .line 627
    aput-byte v7, p4, v5

    .line 629
    sget-object v5, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    aget v5, v5, v6

    add-int/2addr v2, v5

    .line 630
    sget-object v5, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, p0, v6}, Landroid/media/internal/exo/util/Util;->constrainValue(III)I

    move-result v2

    .line 631
    aget v5, v5, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_44

    :cond_99
    return-void
.end method

.method private blacklist numOutputBytesToFrames(I)I
    .registers 2

    .line 636
    iget-object p0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget p0, p0, Landroid/media/internal/exo/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p1, p0

    return p1
.end method

.method private blacklist numOutputFramesToBytes(I)I
    .registers 2

    .line 640
    iget-object p0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget p0, p0, Landroid/media/internal/exo/extractor/wav/WavFormat;->numChannels:I

    invoke-static {p1, p0}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result p0

    return p0
.end method

.method private static blacklist numOutputFramesToBytes(II)I
    .registers 2

    .line 0
    mul-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, p1

    return p0
.end method

.method private blacklist writeSampleMetadata(I)V
    .registers 13

    .line 542
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    iget-object v4, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v4, v4, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, v4

    const-wide/32 v4, 0xf4240

    .line 544
    invoke-static/range {v2 .. v7}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    .line 546
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result v8

    .line 547
    iget v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int v9, v0, v8

    .line 548
    iget-object v4, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 550
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    .line 551
    iget p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int/2addr p1, v8

    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    return-void
.end method


# virtual methods
.method public blacklist init(IJ)V
    .registers 12

    .line 485
    iget-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance v1, Landroid/media/internal/exo/extractor/wav/WavSeekMap;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v3, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    int-to-long v4, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Landroid/media/internal/exo/extractor/wav/WavSeekMap;-><init>(Landroid/media/internal/exo/extractor/wav/WavFormat;IJJ)V

    invoke-interface {v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 487
    iget-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Landroid/media/internal/exo/Format;

    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    return-void
.end method

.method public blacklist reset(J)V
    .registers 4

    const/4 v0, 0x0

    .line 477
    iput v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 478
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    .line 479
    iput v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 480
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public blacklist sampleData(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    iget v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 495
    invoke-direct {p0, v1}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 497
    iget v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    invoke-static {v0, v1}, Landroid/media/internal/exo/util/Util;->ceilDivide(II)I

    move-result v0

    .line 498
    iget-object v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v1, v1, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v0, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    :goto_1b
    move v1, v2

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-nez v1, :cond_3e

    .line 502
    iget v3, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    if-ge v3, v0, :cond_3e

    sub-int v3, v0, v3

    int-to-long v3, v3

    .line 503
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 504
    iget-object v4, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget v5, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    invoke-interface {p1, v4, v5, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_38

    goto :goto_1b

    .line 508
    :cond_38
    iget v4, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    goto :goto_1e

    .line 512
    :cond_3e
    iget p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget p2, p2, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    div-int/2addr p1, p2

    if-lez p1, :cond_75

    .line 515
    iget-object p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget-object p3, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p0, p2, p1, p3}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decode([BILandroid/media/internal/exo/util/ParsableByteArray;)V

    .line 516
    iget p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object p3, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget p3, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr p1, p3

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 519
    iget-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p1

    .line 520
    iget-object p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object p3, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 521
    iget p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 524
    invoke-direct {p0, p2}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result p1

    .line 525
    iget p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    if-lt p1, p2, :cond_75

    .line 526
    invoke-direct {p0, p2}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_75
    if-eqz v1, :cond_82

    .line 532
    iget p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result p1

    if-lez p1, :cond_82

    .line 534
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_82
    return v1
.end method
