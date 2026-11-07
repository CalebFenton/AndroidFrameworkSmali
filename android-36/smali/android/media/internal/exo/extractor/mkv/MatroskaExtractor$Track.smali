.class public final Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Track"
.end annotation


# instance fields
.field public blacklist audioBitDepth:I

.field private blacklist blockAddIdType:I

.field public blacklist channelCount:I

.field public blacklist codecDelayNs:J

.field public blacklist codecId:Ljava/lang/String;

.field public blacklist codecPrivate:[B

.field public blacklist colorRange:I

.field public blacklist colorSpace:I

.field public blacklist colorTransfer:I

.field public blacklist cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

.field public blacklist defaultSampleDurationNs:I

.field public blacklist displayHeight:I

.field public blacklist displayUnit:I

.field public blacklist displayWidth:I

.field public blacklist dolbyVisionConfigBytes:[B

.field public blacklist drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

.field public blacklist flagDefault:Z

.field public blacklist flagForced:Z

.field public blacklist hasColorInfo:Z

.field public blacklist hasContentEncryption:Z

.field public blacklist height:I

.field private blacklist language:Ljava/lang/String;

.field public blacklist maxBlockAdditionId:I

.field public blacklist maxContentLuminance:I

.field public blacklist maxFrameAverageLuminance:I

.field public blacklist maxMasteringLuminance:F

.field public blacklist minMasteringLuminance:F

.field public blacklist nalUnitLengthFieldLength:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist number:I

.field public blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field public blacklist primaryBChromaticityX:F

.field public blacklist primaryBChromaticityY:F

.field public blacklist primaryGChromaticityX:F

.field public blacklist primaryGChromaticityY:F

.field public blacklist primaryRChromaticityX:F

.field public blacklist primaryRChromaticityY:F

.field public blacklist projectionData:[B

.field public blacklist projectionPosePitch:F

.field public blacklist projectionPoseRoll:F

.field public blacklist projectionPoseYaw:F

.field public blacklist projectionType:I

.field public blacklist sampleRate:I

.field public blacklist sampleStrippedBytes:[B

.field public blacklist seekPreRollNs:J

.field public blacklist stereoMode:I

.field public blacklist trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

.field public blacklist type:I

.field public blacklist whitePointChromaticityX:F

.field public blacklist whitePointChromaticityY:F

.field public blacklist width:I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 5

    .line 1909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1934
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1935
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1936
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1937
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v1, 0x0

    .line 1938
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 1939
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    const/4 v2, 0x0

    .line 1940
    iput v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 1941
    iput v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1942
    iput v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/4 v2, 0x0

    .line 1943
    iput-object v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1944
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1945
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 1946
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 1947
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 1948
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    const/16 v1, 0x3e8

    .line 1949
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v1, 0xc8

    .line 1950
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1951
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 1952
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 1953
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 1954
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 1955
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 1956
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 1957
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 1958
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 1959
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 1960
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v1, 0x1

    .line 1964
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 1965
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    .line 1966
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    const-wide/16 v2, 0x0

    .line 1967
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 1968
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 1973
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 1974
    const-string v0, "eng"

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;)V
    .registers 1

    .line 1909
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V

    return-void
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;)I
    .registers 1

    .line 1909
    iget p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p0
.end method

.method static synthetic blacklist access$202(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;I)I
    .registers 2

    .line 1909
    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p1
.end method

.method static synthetic blacklist access$302(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1909
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private blacklist assertOutputInitialized()V
    .registers 1

    .line 2460
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist getCodecPrivate(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 2465
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-eqz p0, :cond_5

    return-object p0

    .line 2466
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing CodecPrivate for codec "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist getHdrStaticInfo()[B
    .registers 6

    .line 2296
    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3f

    goto :goto_bb

    :cond_3f
    const/16 v0, 0x19

    .line 2309
    new-array v0, v0, [B

    .line 2310
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 2311
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2312
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2313
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2314
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2315
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2316
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2317
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2318
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2319
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2320
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2321
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2322
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2323
    iget p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short p0, p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_bb
    :goto_bb
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist parseFourCcPrivate(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 2338
    :try_start_3
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 2339
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    const-wide/32 v4, 0x58564944

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    .line 2341
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/divx"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_19
    const-wide/32 v4, 0x33363248

    cmp-long v0, v2, v4

    if-nez v0, :cond_28

    .line 2343
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/3gpp"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_28
    const-wide/32 v4, 0x31435657

    cmp-long v0, v2, v4

    if-nez v0, :cond_72

    .line 2347
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 2348
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    .line 2349
    :goto_39
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_6b

    .line 2350
    aget-byte v2, p0, v0

    if-nez v2, :cond_68

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_68

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_68

    .line 2355
    array-length v2, p0

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 2356
    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/wvc1"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 2359
    :cond_6b
    const-string p0, "Failed to find FourCC VC1 initialization data"

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
    :try_end_72
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_72} :catch_81

    .line 2367
    :cond_72
    const-string p0, "MatroskaExtractor"

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {p0, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/x-unknown"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 2363
    :catch_81
    const-string p0, "Error parsing FourCC private data"

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist parseMsAcmCodecPrivate(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 2435
    :try_start_0
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_34

    const/16 v0, 0x18

    .line 2439
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 2440
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    .line 2441
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2f} :catch_35

    cmp-long p0, v4, v6

    if-nez p0, :cond_34

    return v1

    :cond_34
    return v3

    .line 2446
    :catch_35
    const-string p0, "Error parsing MS/ACM codec private"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist parseVorbisCodecPrivate([B)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 2380
    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    aget-byte v3, p0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_64

    const/4 v3, 0x1

    move v6, v2

    move v5, v3

    .line 2386
    :goto_c
    aget-byte v7, p0, v5

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_19

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_19
    add-int/2addr v5, v3

    and-int/2addr v7, v9

    add-int/2addr v6, v7

    move v7, v2

    .line 2393
    :goto_1d
    aget-byte v8, p0, v5

    and-int/lit16 v10, v8, 0xff

    if-ne v10, v9, :cond_28

    add-int/lit16 v7, v7, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_28
    add-int/2addr v5, v3

    and-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 2399
    aget-byte v8, p0, v5

    if-ne v8, v3, :cond_5f

    .line 2403
    new-array v3, v6, [B

    .line 2404
    invoke-static {p0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    .line 2406
    aget-byte v6, p0, v5

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5a

    add-int/2addr v5, v7

    .line 2411
    aget-byte v6, p0, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_55

    .line 2415
    array-length v6, p0

    sub-int/2addr v6, v5

    new-array v6, v6, [B

    .line 2416
    array-length v7, p0

    sub-int/2addr v7, v5

    invoke-static {p0, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2417
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2418
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2419
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2412
    :cond_55
    invoke-static {v0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 2407
    :cond_5a
    invoke-static {v0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 2400
    :cond_5f
    invoke-static {v0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 2381
    :cond_64
    invoke-static {v0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
    :try_end_69
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_69} :catch_69

    .line 2422
    :catch_69
    invoke-static {v0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public blacklist initializeOutput(Landroid/media/internal/exo/extractor/ExtractorOutput;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x10

    .line 1989
    iget-object v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "application/dvbsubs"

    const-string v7, "application/vobsub"

    const-string v8, "application/pgs"

    const-string v9, "text/x-ssa"

    const-string v10, "application/x-subrip"

    const/4 v11, 0x4

    const/16 v12, 0x8

    const/4 v13, 0x3

    const-string v15, ". Setting mimeType to "

    const-string v16, "audio/raw"

    const-string v2, "MatroskaExtractor"

    const-string v3, "audio/x-unknown"

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_596

    :goto_27
    const/4 v4, -0x1

    goto/16 :goto_1ce

    :sswitch_2a
    const-string v14, "A_OPUS"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto :goto_27

    :cond_33
    const/16 v4, 0x1f

    goto/16 :goto_1ce

    :sswitch_37
    const-string v14, "A_FLAC"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto :goto_27

    :cond_40
    const/16 v4, 0x1e

    goto/16 :goto_1ce

    :sswitch_44
    const-string v14, "A_EAC3"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_27

    :cond_4d
    const/16 v4, 0x1d

    goto/16 :goto_1ce

    :sswitch_51
    const-string v14, "V_MPEG2"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    goto :goto_27

    :cond_5a
    const/16 v4, 0x1c

    goto/16 :goto_1ce

    :sswitch_5e
    const-string v14, "S_TEXT/UTF8"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    goto :goto_27

    :cond_67
    const/16 v4, 0x1b

    goto/16 :goto_1ce

    :sswitch_6b
    const-string v14, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    goto :goto_27

    :cond_74
    const/16 v4, 0x1a

    goto/16 :goto_1ce

    :sswitch_78
    const-string v14, "S_TEXT/ASS"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    goto :goto_27

    :cond_81
    const/16 v4, 0x19

    goto/16 :goto_1ce

    :sswitch_85
    const-string v14, "A_PCM/INT/LIT"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    goto :goto_27

    :cond_8e
    const/16 v4, 0x18

    goto/16 :goto_1ce

    :sswitch_92
    const-string v14, "A_PCM/INT/BIG"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    goto :goto_27

    :cond_9b
    const/16 v4, 0x17

    goto/16 :goto_1ce

    :sswitch_9f
    const-string v14, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a9

    goto/16 :goto_27

    :cond_a9
    const/16 v4, 0x16

    goto/16 :goto_1ce

    :sswitch_ad
    const-string v14, "A_DTS/EXPRESS"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b7

    goto/16 :goto_27

    :cond_b7
    const/16 v4, 0x15

    goto/16 :goto_1ce

    :sswitch_bb
    const-string v14, "V_THEORA"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c5

    goto/16 :goto_27

    :cond_c5
    const/16 v4, 0x14

    goto/16 :goto_1ce

    :sswitch_c9
    const-string v14, "S_HDMV/PGS"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d3

    goto/16 :goto_27

    :cond_d3
    const/16 v4, 0x13

    goto/16 :goto_1ce

    :sswitch_d7
    const-string v14, "V_VP9"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e1

    goto/16 :goto_27

    :cond_e1
    const/16 v4, 0x12

    goto/16 :goto_1ce

    :sswitch_e5
    const-string v14, "V_VP8"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ef

    goto/16 :goto_27

    :cond_ef
    const/16 v4, 0x11

    goto/16 :goto_1ce

    :sswitch_f3
    const-string v14, "V_AV1"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fd

    goto/16 :goto_27

    :cond_fd
    move v4, v1

    goto/16 :goto_1ce

    :sswitch_100
    const-string v14, "A_DTS"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10a

    goto/16 :goto_27

    :cond_10a
    const/16 v4, 0xf

    goto/16 :goto_1ce

    :sswitch_10e
    const-string v14, "A_AC3"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_118

    goto/16 :goto_27

    :cond_118
    const/16 v4, 0xe

    goto/16 :goto_1ce

    :sswitch_11c
    const-string v14, "A_AAC"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_126

    goto/16 :goto_27

    :cond_126
    const/16 v4, 0xd

    goto/16 :goto_1ce

    :sswitch_12a
    const-string v14, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_134

    goto/16 :goto_27

    :cond_134
    const/16 v4, 0xc

    goto/16 :goto_1ce

    :sswitch_138
    const-string v14, "S_VOBSUB"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_142

    goto/16 :goto_27

    :cond_142
    const/16 v4, 0xb

    goto/16 :goto_1ce

    :sswitch_146
    const-string v14, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_150

    goto/16 :goto_27

    :cond_150
    const/16 v4, 0xa

    goto/16 :goto_1ce

    :sswitch_154
    const-string v14, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15e

    goto/16 :goto_27

    :cond_15e
    const/16 v4, 0x9

    goto/16 :goto_1ce

    :sswitch_162
    const-string v14, "S_DVBSUB"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16c

    goto/16 :goto_27

    :cond_16c
    move v4, v12

    goto/16 :goto_1ce

    :sswitch_16f
    const-string v14, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_179

    goto/16 :goto_27

    :cond_179
    const/4 v4, 0x7

    goto :goto_1ce

    :sswitch_17b
    const-string v14, "A_MPEG/L3"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_185

    goto/16 :goto_27

    :cond_185
    const/4 v4, 0x6

    goto :goto_1ce

    :sswitch_187
    const-string v14, "A_MPEG/L2"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_191

    goto/16 :goto_27

    :cond_191
    const/4 v4, 0x5

    goto :goto_1ce

    :sswitch_193
    const-string v14, "A_VORBIS"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19d

    goto/16 :goto_27

    :cond_19d
    move v4, v11

    goto :goto_1ce

    :sswitch_19f
    const-string v14, "A_TRUEHD"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a9

    goto/16 :goto_27

    :cond_1a9
    move v4, v13

    goto :goto_1ce

    :sswitch_1ab
    const-string v14, "A_MS/ACM"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b5

    goto/16 :goto_27

    :cond_1b5
    const/4 v4, 0x2

    goto :goto_1ce

    :sswitch_1b7
    const-string v14, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c1

    goto/16 :goto_27

    :cond_1c1
    const/4 v4, 0x1

    goto :goto_1ce

    :sswitch_1c3
    const-string v14, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1cd

    goto/16 :goto_27

    :cond_1cd
    const/4 v4, 0x0

    :goto_1ce
    packed-switch v4, :pswitch_data_618

    .line 2175
    const-string v0, "Unrecognized codec identifier."

    invoke-static {v0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    .line 2042
    :pswitch_1d8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 2043
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2045
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v14, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v2, v14, v15}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 2044
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2047
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 2046
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2048
    const-string v16, "audio/opus"

    const/16 v2, 0x1680

    move v3, v2

    move-object v2, v5

    :goto_218
    const/4 v4, 0x0

    :goto_219
    const/4 v11, -0x1

    goto/16 :goto_40c

    .line 2086
    :pswitch_21c
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2087
    const-string v16, "audio/flac"

    move-object v2, v5

    :goto_229
    const/4 v3, -0x1

    goto :goto_218

    .line 2072
    :pswitch_22b
    const-string v16, "audio/eac3"

    :goto_22d
    move-object v1, v5

    move-object v2, v1

    goto :goto_229

    .line 2001
    :pswitch_230
    const-string v16, "video/mpeg2"

    goto :goto_22d

    :pswitch_233
    move-object v1, v5

    move-object v2, v1

    move-object/from16 v16, v10

    goto :goto_229

    .line 2018
    :pswitch_238
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroid/media/internal/exo/video/HevcConfig;->parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/HevcConfig;

    move-result-object v1

    .line 2019
    iget-object v2, v1, Landroid/media/internal/exo/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 2020
    iget v3, v1, Landroid/media/internal/exo/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2021
    iget-object v1, v1, Landroid/media/internal/exo/video/HevcConfig;->codecs:Ljava/lang/String;

    .line 2022
    const-string v16, "video/hevc"

    :goto_251
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_229

    .line 2158
    :pswitch_255
    # getter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B
    invoke-static {}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->access$400()[B

    move-result-object v1

    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v1

    move-object v2, v5

    move-object/from16 v16, v9

    goto :goto_229

    .line 2109
    :pswitch_267
    iget v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Landroid/media/internal/exo/util/Util;->getPcmEncoding(I)I

    move-result v11

    if-nez v11, :cond_28e

    .line 2113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28b
    move-object/from16 v16, v3

    goto :goto_22d

    :cond_28e
    :goto_28e
    move-object v1, v5

    move-object v2, v1

    :goto_290
    const/4 v3, -0x1

    const/4 v4, 0x0

    goto/16 :goto_40c

    .line 2123
    :pswitch_294
    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v4, v12, :cond_29c

    move-object v1, v5

    move-object v2, v1

    move v11, v13

    goto :goto_290

    :cond_29c
    if-ne v4, v1, :cond_2a1

    const/high16 v11, 0x10000000

    goto :goto_28e

    .line 2130
    :cond_2a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28b

    .line 2140
    :pswitch_2be
    iget v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v4, 0x20

    if-ne v1, v4, :cond_2c5

    goto :goto_28e

    .line 2145
    :cond_2c5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28b

    .line 2033
    :pswitch_2e2
    const-string v16, "video/x-unknown"

    goto/16 :goto_22d

    :pswitch_2e6
    move-object v1, v5

    move-object v2, v1

    move-object/from16 v16, v8

    goto/16 :goto_229

    .line 1995
    :pswitch_2ec
    const-string v16, "video/x-vnd.on2.vp9"

    goto/16 :goto_22d

    .line 1992
    :pswitch_2f0
    const-string v16, "video/x-vnd.on2.vp8"

    goto/16 :goto_22d

    .line 1998
    :pswitch_2f4
    const-string v16, "video/av01"

    goto/16 :goto_22d

    .line 2080
    :pswitch_2f8
    const-string v16, "audio/vnd.dts"

    goto/16 :goto_22d

    .line 2069
    :pswitch_2fc
    const-string v16, "audio/ac3"

    goto/16 :goto_22d

    .line 2051
    :pswitch_300
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2052
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Landroid/media/internal/exo/audio/AacUtil;->parseAudioSpecificConfig([B)Landroid/media/internal/exo/audio/AacUtil$Config;

    move-result-object v2

    .line 2055
    iget v3, v2, Landroid/media/internal/exo/audio/AacUtil$Config;->sampleRateHz:I

    iput v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2056
    iget v3, v2, Landroid/media/internal/exo/audio/AacUtil$Config;->channelCount:I

    iput v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2057
    iget-object v2, v2, Landroid/media/internal/exo/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 2058
    const-string v16, "audio/mp4a-latm"

    goto/16 :goto_229

    .line 2083
    :pswitch_31e
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_22d

    .line 2162
    :pswitch_322
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v1

    move-object v2, v5

    move-object/from16 v16, v7

    goto/16 :goto_229

    .line 2011
    :pswitch_331
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroid/media/internal/exo/video/AvcConfig;->parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/AvcConfig;

    move-result-object v1

    .line 2012
    iget-object v2, v1, Landroid/media/internal/exo/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 2013
    iget v3, v1, Landroid/media/internal/exo/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2014
    iget-object v1, v1, Landroid/media/internal/exo/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 2015
    const-string v16, "video/avc"

    goto/16 :goto_251

    .line 2170
    :pswitch_34c
    new-array v1, v11, [B

    .line 2171
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2172
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v1

    move-object v2, v5

    move-object/from16 v16, v6

    :goto_35f
    const/4 v3, -0x1

    goto/16 :goto_219

    :pswitch_362
    const/4 v4, 0x0

    .line 2024
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2025
    invoke-direct {v0, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 2026
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 2027
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    :goto_37c
    move-object v2, v5

    goto :goto_35f

    :pswitch_37e
    const/4 v4, 0x0

    .line 2066
    const-string v16, "audio/mpeg"

    :goto_381
    move-object v1, v5

    move-object v2, v1

    const/16 v3, 0x1000

    goto/16 :goto_219

    :pswitch_387
    const/4 v4, 0x0

    .line 2062
    const-string v16, "audio/mpeg-L2"

    goto :goto_381

    :pswitch_38b
    const/4 v4, 0x0

    .line 2037
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v1

    .line 2038
    const-string v16, "audio/vorbis"

    const/16 v2, 0x2000

    move v3, v2

    move-object v2, v5

    goto/16 :goto_219

    :pswitch_39e
    const/4 v4, 0x0

    .line 2075
    new-instance v1, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    invoke-direct {v1}, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    .line 2076
    const-string v16, "audio/true-hd"

    :goto_3a8
    move-object v1, v5

    move-object v2, v1

    goto :goto_35f

    :pswitch_3ab
    const/4 v4, 0x0

    .line 2090
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v11, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v11}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Landroid/media/internal/exo/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_3e8

    .line 2091
    iget v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Landroid/media/internal/exo/util/Util;->getPcmEncoding(I)I

    move-result v11

    if-nez v11, :cond_3e4

    .line 2095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e1
    move-object/from16 v16, v3

    goto :goto_3a8

    :cond_3e4
    move-object v1, v5

    move-object v2, v1

    const/4 v3, -0x1

    goto :goto_40c

    .line 2104
    :cond_3e8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e1

    :pswitch_3fd
    const/4 v4, 0x0

    .line 2007
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_404

    move-object v1, v5

    goto :goto_408

    :cond_404
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2008
    :goto_408
    const-string v16, "video/mp4v-es"

    goto/16 :goto_37c

    .line 2179
    :goto_40c
    iget-object v12, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v12, :cond_41f

    .line 2181
    new-instance v14, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v14, v12}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    .line 2182
    invoke-static {v14}, Landroid/media/internal/exo/video/DolbyVisionConfig;->parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/DolbyVisionConfig;

    move-result-object v12

    if-eqz v12, :cond_41f

    .line 2184
    iget-object v2, v12, Landroid/media/internal/exo/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 2185
    const-string v16, "video/dolby-vision"

    :cond_41f
    move-object/from16 v12, v16

    .line 2190
    iget-boolean v14, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 2191
    iget-boolean v15, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v15, :cond_429

    const/4 v15, 0x2

    goto :goto_42a

    :cond_429
    move v15, v4

    :goto_42a
    or-int/2addr v14, v15

    .line 2194
    new-instance v15, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v15}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 2197
    invoke-static {v12}, Landroid/media/internal/exo/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_448

    .line 2199
    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2200
    invoke-virtual {v15, v4}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    iget v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2201
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    .line 2202
    invoke-virtual {v4, v11}, Landroid/media/internal/exo/Format$Builder;->setPcmEncoding(I)Landroid/media/internal/exo/Format$Builder;

    const/4 v13, 0x1

    goto/16 :goto_549

    .line 2203
    :cond_448
    invoke-static {v12}, Landroid/media/internal/exo/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_523

    .line 2205
    iget v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v6, :cond_464

    .line 2206
    iget v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_459

    iget v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_459
    iput v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2207
    iget v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v6, v7, :cond_461

    iget v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_461
    iput v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_465

    :cond_464
    const/4 v7, -0x1

    .line 2210
    :goto_465
    iget v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v6, v7, :cond_477

    iget v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v8, v7, :cond_477

    .line 2211
    iget v9, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int/2addr v9, v6

    int-to-float v6, v9

    iget v9, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int/2addr v9, v8

    int-to-float v8, v9

    div-float/2addr v6, v8

    goto :goto_479

    :cond_477
    const/high16 v6, -0x40800000    # -1.0f

    .line 2214
    :goto_479
    iget-boolean v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v8, :cond_48d

    .line 2215
    invoke-direct {v0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v5

    .line 2216
    new-instance v8, Landroid/media/internal/exo/video/ColorInfo;

    iget v9, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v10, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v11, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v8, v9, v10, v11, v5}, Landroid/media/internal/exo/video/ColorInfo;-><init>(III[B)V

    move-object v5, v8

    .line 2220
    :cond_48d
    iget-object v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v8, :cond_4ad

    # getter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->access$500()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4ad

    .line 2221
    # getter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->access$500()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2223
    :cond_4ad
    iget v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v8, :cond_4fd

    iget v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v9, 0x0

    .line 2224
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_4fd

    iget v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2225
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_4fd

    .line 2227
    iget v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_4cb

    goto :goto_4fe

    .line 2229
    :cond_4cb
    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_4d8

    const/16 v4, 0x5a

    goto :goto_4fe

    .line 2231
    :cond_4d8
    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v8, -0x3ccc0000    # -180.0f

    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_4fa

    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v8, 0x43340000    # 180.0f

    .line 2232
    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_4ed

    goto :goto_4fa

    .line 2234
    :cond_4ed
    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_4fd

    const/16 v4, 0x10e

    goto :goto_4fe

    :cond_4fa
    :goto_4fa
    const/16 v4, 0xb4

    goto :goto_4fe

    :cond_4fd
    move v4, v7

    .line 2238
    :goto_4fe
    iget v7, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2239
    invoke-virtual {v15, v7}, Landroid/media/internal/exo/Format$Builder;->setWidth(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v7

    iget v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2240
    invoke-virtual {v7, v8}, Landroid/media/internal/exo/Format$Builder;->setHeight(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v7

    .line 2241
    invoke-virtual {v7, v6}, Landroid/media/internal/exo/Format$Builder;->setPixelWidthHeightRatio(F)Landroid/media/internal/exo/Format$Builder;

    move-result-object v6

    .line 2242
    invoke-virtual {v6, v4}, Landroid/media/internal/exo/Format$Builder;->setRotationDegrees(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    iget-object v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2243
    invoke-virtual {v4, v6}, Landroid/media/internal/exo/Format$Builder;->setProjectionData([B)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    iget v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2244
    invoke-virtual {v4, v6}, Landroid/media/internal/exo/Format$Builder;->setStereoMode(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    .line 2245
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/Format$Builder;->setColorInfo(Landroid/media/internal/exo/video/ColorInfo;)Landroid/media/internal/exo/Format$Builder;

    const/4 v13, 0x2

    goto :goto_549

    .line 2246
    :cond_523
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_549

    .line 2247
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_549

    .line 2248
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_549

    .line 2249
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_549

    .line 2250
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_542

    goto :goto_549

    .line 2253
    :cond_542
    const-string v0, "Unexpected MIME type."

    invoke-static {v0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    .line 2257
    :cond_549
    :goto_549
    iget-object v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v4, :cond_55e

    # getter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->access$500()Ljava/util/Map;

    move-result-object v4

    iget-object v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55e

    .line 2258
    iget-object v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroid/media/internal/exo/Format$Builder;->setLabel(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    :cond_55e
    move/from16 v4, p2

    .line 2263
    invoke-virtual {v15, v4}, Landroid/media/internal/exo/Format$Builder;->setId(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    .line 2264
    invoke-virtual {v4, v12}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    .line 2265
    invoke-virtual {v4, v3}, Landroid/media/internal/exo/Format$Builder;->setMaxInputSize(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 2266
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    .line 2267
    invoke-virtual {v3, v14}, Landroid/media/internal/exo/Format$Builder;->setSelectionFlags(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    .line 2268
    invoke-virtual {v3, v1}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 2269
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    .line 2270
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 2271
    invoke-virtual {v1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v1

    .line 2273
    iget v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v13}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 2274
    invoke-interface {v2, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    return-void

    :sswitch_data_596
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1c3
        -0x7ce7f3b0 -> :sswitch_1b7
        -0x76567dc0 -> :sswitch_1ab
        -0x6a615338 -> :sswitch_19f
        -0x672350af -> :sswitch_193
        -0x585f4fce -> :sswitch_187
        -0x585f4fcd -> :sswitch_17b
        -0x51dc40b2 -> :sswitch_16f
        -0x37a9c464 -> :sswitch_162
        -0x2016c535 -> :sswitch_154
        -0x2016c4e5 -> :sswitch_146
        -0x19552dbd -> :sswitch_138
        -0x1538b2ba -> :sswitch_12a
        0x3c02325 -> :sswitch_11c
        0x3c02353 -> :sswitch_10e
        0x3c030c5 -> :sswitch_100
        0x4e81333 -> :sswitch_f3
        0x4e86155 -> :sswitch_e5
        0x4e86156 -> :sswitch_d7
        0x5e8da3e -> :sswitch_c9
        0x1a8350d6 -> :sswitch_bb
        0x2056f406 -> :sswitch_ad
        0x25e26ee2 -> :sswitch_9f
        0x2b45174d -> :sswitch_92
        0x2b453ce4 -> :sswitch_85
        0x2c0618eb -> :sswitch_78
        0x32fdf009 -> :sswitch_6b
        0x54c61e47 -> :sswitch_5e
        0x6bd6c624 -> :sswitch_51
        0x7446132a -> :sswitch_44
        0x7446b0a6 -> :sswitch_37
        0x744ad97d -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_618
    .packed-switch 0x0
        :pswitch_3fd
        :pswitch_3fd
        :pswitch_3ab
        :pswitch_39e
        :pswitch_38b
        :pswitch_387
        :pswitch_37e
        :pswitch_362
        :pswitch_34c
        :pswitch_3fd
        :pswitch_331
        :pswitch_322
        :pswitch_31e
        :pswitch_300
        :pswitch_2fc
        :pswitch_2f8
        :pswitch_2f4
        :pswitch_2f0
        :pswitch_2ec
        :pswitch_2e6
        :pswitch_2e2
        :pswitch_2f8
        :pswitch_2be
        :pswitch_294
        :pswitch_267
        :pswitch_255
        :pswitch_238
        :pswitch_233
        :pswitch_230
        :pswitch_22b
        :pswitch_21c
        :pswitch_1d8
    .end packed-switch
.end method

.method public blacklist outputPendingSampleMetadata()V
    .registers 3

    .line 2280
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_b

    .line 2281
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    invoke-virtual {v0, v1, p0}, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    :cond_b
    return-void
.end method

.method public blacklist reset()V
    .registers 1

    .line 2287
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    if-eqz p0, :cond_7

    .line 2288
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->reset()V

    :cond_7
    return-void
.end method
