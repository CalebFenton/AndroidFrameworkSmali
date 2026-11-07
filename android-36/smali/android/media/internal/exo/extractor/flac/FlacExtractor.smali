.class public final Landroid/media/internal/exo/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;


# instance fields
.field private blacklist binarySearchSeeker:Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;

.field private final blacklist buffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist currentFrameBytesWritten:I

.field private blacklist currentFrameFirstSampleNumber:J

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

.field private blacklist frameStartMarker:I

.field private blacklist id3Metadata:Landroid/media/internal/exo/metadata/Metadata;

.field private final blacklist id3MetadataDisabled:Z

.field private blacklist minFrameSize:I

.field private final blacklist sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

.field private blacklist state:I

.field private final blacklist streamMarkerAndInfoBlock:[B

.field private blacklist trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 5

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    .line 133
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    .line 135
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 136
    :goto_1c
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    .line 137
    new-instance p1, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    .line 138
    iput v2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private blacklist findFrame(Landroid/media/internal/exo/util/ParsableByteArray;Z)J
    .registers 7

    .line 341
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 344
    :goto_9
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_2b

    .line 345
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 346
    iget-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-static {p1, v1, v2, v3}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkAndReadFrameHeader(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ILandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 348
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 349
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide p0, p0, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2b
    if-eqz p2, :cond_67

    .line 374
    :goto_2d
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p2

    iget v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_5f

    .line 375
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 p2, 0x0

    .line 378
    :try_start_3a
    iget-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    .line 379
    invoke-static {p1, v1, v2, v3}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkAndReadFrameHeader(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ILandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1
    :try_end_44
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_44} :catch_45

    goto :goto_46

    :catch_45
    move v1, p2

    .line 385
    :goto_46
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v3

    if-le v2, v3, :cond_51

    goto :goto_52

    :cond_51
    move p2, v1

    :goto_52
    if-eqz p2, :cond_5c

    .line 392
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 393
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide p0, p0, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 398
    :cond_5f
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    goto :goto_6a

    .line 400
    :cond_67
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    :goto_6a
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private blacklist getFrameStartMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-static {p1}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->getFrameStartMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->frameStartMarker:I

    .line 235
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/ExtractorOutput;

    .line 238
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 239
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 237
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->getSeekMap(JJ)Landroid/media/internal/exo/extractor/SeekMap;

    move-result-object p1

    .line 236
    invoke-interface {v0, p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    const/4 p1, 0x5

    .line 241
    iput p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private blacklist getSeekMap(JJ)Landroid/media/internal/exo/extractor/SeekMap;
    .registers 13

    .line 314
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget-object v0, v2, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    if-eqz v0, :cond_11

    .line 316
    new-instance p0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;

    invoke-direct {p0, v2, p1, p2}, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;-><init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;J)V

    return-object p0

    :cond_11
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2f

    .line 317
    iget-wide v0, v2, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2f

    .line 318
    new-instance v1, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;

    iget v3, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->frameStartMarker:I

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;-><init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;IJJ)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;

    .line 321
    invoke-virtual {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->getSeekMap()Landroid/media/internal/exo/extractor/SeekMap;

    move-result-object p0

    return-object p0

    .line 323
    :cond_2f
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p0
.end method

.method private blacklist getStreamMarkerAndInfoBlockBytes(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 206
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x2

    .line 207
    iput p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private blacklist outputSampleMetadata()V
    .registers 12

    .line 407
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    .line 410
    invoke-static {v2}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v2, v2, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 411
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/media/internal/exo/extractor/TrackOutput;

    iget v8, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 412
    invoke-interface/range {v4 .. v10}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method private blacklist readFrames(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 251
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->handlePendingSeek(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 255
    :cond_1b
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_2d

    .line 256
    iget-object p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    .line 257
    invoke-static {p1, p2}, Landroid/media/internal/exo/extractor/FlacFrameReader;->getFirstSampleNumber(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/FlacStreamMetadata;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    return v0

    .line 262
    :cond_2d
    iget-object p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p2

    const v1, 0x8000

    if-ge p2, v1, :cond_5e

    .line 265
    iget-object v4, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 267
    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    sub-int/2addr v1, p2

    .line 266
    invoke-interface {p1, v4, p2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    move v4, v0

    :goto_49
    if-nez v4, :cond_52

    .line 272
    iget-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    goto :goto_5f

    .line 273
    :cond_52
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-nez p1, :cond_5f

    .line 274
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    return v1

    :cond_5e
    move v4, v0

    .line 280
    :cond_5f
    :goto_5f
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p1

    .line 283
    iget p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge p2, v1, :cond_79

    .line 284
    iget-object v5, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    sub-int/2addr v1, p2

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v5, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 287
    :cond_79
    iget-object p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p0, p2, v4}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->findFrame(Landroid/media/internal/exo/util/ParsableByteArray;Z)J

    move-result-wide v4

    .line 288
    iget-object p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p2

    sub-int/2addr p2, p1

    .line 289
    iget-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 290
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {p1, v1, p2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 291
    iget p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    cmp-long p1, v4, v2

    if-eqz p1, :cond_a2

    .line 295
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    .line 296
    iput v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 297
    iput-wide v4, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 300
    :cond_a2
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_d1

    .line 303
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    .line 304
    iget-object p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 305
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    iget-object v2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 304
    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    iget-object p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 307
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    :cond_d1
    return v0
.end method

.method private blacklist readId3Metadata(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readId3Metadata(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->id3Metadata:Landroid/media/internal/exo/metadata/Metadata;

    .line 201
    iput v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private blacklist readMetadataBlocks(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    invoke-direct {v0, v1}, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;-><init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;)V

    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_19

    .line 220
    invoke-static {p1, v0}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readMetadataBlock(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z

    move-result v1

    .line 222
    iget-object v2, v0, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    invoke-static {v2}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iput-object v2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    goto :goto_8

    .line 225
    :cond_19
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    invoke-static {p1}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget p1, p1, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->minFrameSize:I

    .line 227
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    iget-object v2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->id3Metadata:Landroid/media/internal/exo/metadata/Metadata;

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getFormat([BLandroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/Format;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    const/4 p1, 0x4

    .line 230
    iput p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private blacklist readStreamMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-static {p1}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readStreamMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    const/4 p1, 0x3

    .line 212
    iput p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->state:I

    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 4

    .line 149
    iput-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 150
    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 151
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-eq v0, v2, :cond_23

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->readFrames(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 176
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 171
    :cond_1f
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->getFrameStartMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v1

    .line 168
    :cond_23
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->readMetadataBlocks(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v1

    .line 165
    :cond_27
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->readStreamMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v1

    .line 162
    :cond_2b
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->getStreamMarkerAndInfoBlockBytes(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v1

    .line 159
    :cond_2f
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->readId3Metadata(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v1
.end method

.method public blacklist seek(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_a

    .line 183
    iput p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->state:I

    goto :goto_11

    .line 184
    :cond_a
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_11

    .line 185
    invoke-virtual {p1, p3, p4}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_11
    :goto_11
    cmp-long p1, p3, v0

    if-nez p1, :cond_16

    goto :goto_18

    :cond_16
    const-wide/16 v0, -0x1

    .line 187
    :goto_18
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 188
    iput p2, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 189
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flac/FlacExtractor;->buffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 143
    invoke-static {p1, p0}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->peekId3Metadata(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Landroid/media/internal/exo/metadata/Metadata;

    .line 144
    invoke-static {p1}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->checkAndPeekStreamMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
