.class public final Landroid/media/internal/exo/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

.field private static final blacklist MAX_FRAME_SIZE_BYTES:I

.field private static final blacklist amrSignatureNb:[B

.field private static final blacklist amrSignatureWb:[B

.field private static final blacklist frameSizeBytesByTypeNb:[I

.field private static final blacklist frameSizeBytesByTypeWb:[I


# instance fields
.field private blacklist currentSampleBytesRemaining:I

.field private blacklist currentSampleSize:I

.field private blacklist currentSampleTimeUs:J

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist firstSamplePosition:J

.field private blacklist firstSampleSize:I

.field private final blacklist flags:I

.field private blacklist hasOutputFormat:Z

.field private blacklist hasOutputSeekMap:Z

.field private blacklist isWideBand:Z

.field private blacklist numSamplesWithSameSize:I

.field private final blacklist scratch:[B

.field private blacklist seekMap:Landroid/media/internal/exo/extractor/SeekMap;

.field private blacklist timeOffsetUs:J

.field private blacklist trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    .line 89
    new-array v1, v0, [I

    fill-array-data v1, :array_2e

    sput-object v1, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    .line 112
    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    .line 131
    const-string v1, "#!AMR\n"

    invoke-static {v1}, Landroid/media/internal/exo/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    .line 132
    const-string v1, "#!AMR-WB\n"

    invoke-static {v1}, Landroid/media/internal/exo/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    const/16 v1, 0x8

    .line 135
    aget v0, v0, v1

    sput v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    return-void

    :array_2e
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_52
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x1

    .line 173
    :cond_9
    iput p1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->flags:I

    const/4 p1, 0x1

    .line 174
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->scratch:[B

    const/4 p1, -0x1

    .line 175
    iput p1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSampleSize:I

    return-void
.end method

.method private blacklist assertInitialized()V
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object p0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static blacklist getBitrateFromFrameSize(IJ)I
    .registers 7

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 409
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private blacklist getConstantBitrateSeekMap(JZ)Landroid/media/internal/exo/extractor/SeekMap;
    .registers 15

    .line 390
    iget v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSampleSize:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v8

    .line 391
    new-instance v3, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSamplePosition:J

    iget v9, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSampleSize:I

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-object v3
.end method

.method private blacklist getFrameSizeInBytes(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 342
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal AMR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_17

    const-string p0, "WB"

    goto :goto_19

    :cond_17
    const-string p0, "NB"

    :goto_19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 343
    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 348
    :cond_2e
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_37

    sget-object p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget p0, p0, p1

    return p0

    :cond_37
    sget-object p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget p0, p0, p1

    return p0
.end method

.method private blacklist isNarrowBandValidFrameType(I)Z
    .registers 2

    .line 364
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isWideBand:Z

    if-nez p0, :cond_e

    const/16 p0, 0xc

    if-lt p1, p0, :cond_c

    const/16 p0, 0xe

    if-le p1, p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isValidFrameType(I)Z
    .registers 3

    if-ltz p1, :cond_14

    const/16 v0, 0xf

    if-gt p1, v0, :cond_14

    .line 354
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isWideBandValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isNarrowBandValidFrameType(I)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isWideBandValidFrameType(I)Z
    .registers 2

    .line 359
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_e

    const/16 p0, 0xa

    if-lt p1, p0, :cond_c

    const/16 p0, 0xd

    if-le p1, p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist maybeOutputFormat()V
    .registers 5

    .line 272
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    if-nez v0, :cond_37

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    .line 274
    iget-boolean v1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v1, :cond_e

    const-string v2, "audio/amr-wb"

    goto :goto_10

    :cond_e
    const-string v2, "audio/3gpp"

    :goto_10
    if-eqz v1, :cond_15

    const/16 v1, 0x3e80

    goto :goto_17

    :cond_15
    const/16 v1, 0x1f40

    .line 276
    :goto_17
    iget-object p0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    new-instance v3, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v3}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 278
    invoke-virtual {v3, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    sget v3, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    .line 279
    invoke-virtual {v2, v3}, Landroid/media/internal/exo/Format$Builder;->setMaxInputSize(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    .line 280
    invoke-virtual {v2, v0}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    .line 276
    invoke-interface {p0, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    :cond_37
    return-void
.end method

.method private blacklist maybeOutputSeekMap(JI)V
    .registers 9

    .line 369
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_5

    goto :goto_25

    .line 373
    :cond_5
    iget v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-eqz v1, :cond_3b

    iget v1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSampleSize:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1c

    iget v4, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-eq v1, v4, :cond_1c

    goto :goto_3b

    .line 379
    :cond_1c
    iget v1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    const/16 v4, 0x14

    if-ge v1, v4, :cond_26

    if-ne p3, v3, :cond_25

    goto :goto_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    :goto_26
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_2c

    move p3, v2

    goto :goto_2d

    :cond_2c
    const/4 p3, 0x0

    .line 382
    :goto_2d
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->getConstantBitrateSeekMap(JZ)Landroid/media/internal/exo/extractor/SeekMap;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->seekMap:Landroid/media/internal/exo/extractor/SeekMap;

    .line 384
    iget-object p2, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {p2, p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 385
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    return-void

    .line 376
    :cond_3b
    :goto_3b
    new-instance p1, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->seekMap:Landroid/media/internal/exo/extractor/SeekMap;

    .line 377
    iget-object p2, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {p2, p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 378
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    return-void
.end method

.method private static blacklist peekAmrSignature(Landroid/media/internal/exo/extractor/ExtractorInput;[B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 265
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 266
    array-length v2, p1

    invoke-interface {p0, v0, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 267
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private blacklist peekNextSampleSize(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 327
    iget-object v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 329
    iget-object p1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->scratch:[B

    aget-byte p1, p1, v2

    and-int/lit16 v0, p1, 0x83

    if-gtz v0, :cond_1b

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0xf

    .line 338
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->getFrameSizeInBytes(I)I

    move-result p0

    return p0

    .line 333
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid padding bits for frame header "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readAmrHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    sget-object v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    invoke-static {p1, v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->peekAmrSignature(Landroid/media/internal/exo/extractor/ExtractorInput;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 250
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 251
    array-length p0, v0

    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return v3

    .line 253
    :cond_11
    sget-object v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    invoke-static {p1, v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->peekAmrSignature(Landroid/media/internal/exo/extractor/ExtractorInput;[B)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 254
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 255
    array-length p0, v0

    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return v3

    :cond_20
    return v2
.end method

.method private blacklist readSample(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_29

    .line 290
    :try_start_6
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->peekNextSampleSize(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_c} :catch_28

    .line 294
    iput v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 295
    iget v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne v0, v2, :cond_1c

    .line 296
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSamplePosition:J

    .line 297
    iget v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSampleSize:I

    .line 299
    :cond_1c
    iget v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v3, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne v0, v3, :cond_29

    .line 300
    iget v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    goto :goto_29

    :catch_28
    return v2

    .line 304
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iget v3, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 305
    invoke-interface {v0, p1, v3, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I

    move-result p1

    if-ne p1, v2, :cond_34

    return v2

    .line 310
    :cond_34
    iget v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 p1, 0x0

    if-lez v0, :cond_3d

    return p1

    .line 315
    :cond_3d
    iget-object v1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v2, v4

    iget v5, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 321
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    return p1
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 4

    .line 187
    iput-object p1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 189
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->assertInitialized()V

    .line 195
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1c

    .line 196
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->readAmrHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_1c

    .line 197
    :cond_14
    const-string p0, "Could not find AMR header."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 201
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->maybeOutputFormat()V

    .line 202
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->readSample(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p2

    .line 203
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->maybeOutputSeekMap(JI)V

    return p2
.end method

.method public blacklist seek(JJ)V
    .registers 7

    const-wide/16 p3, 0x0

    .line 209
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const/4 v0, 0x0

    .line 210
    iput v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleSize:I

    .line 211
    iput v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1c

    .line 212
    iget-object v0, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->seekMap:Landroid/media/internal/exo/extractor/SeekMap;

    instance-of v1, v0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;

    if-eqz v1, :cond_1c

    .line 213
    check-cast v0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;

    invoke-virtual {v0, p1, p2}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->timeOffsetUs:J

    return-void

    .line 215
    :cond_1c
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->timeOffsetUs:J

    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/amr/AmrExtractor;->readAmrHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
