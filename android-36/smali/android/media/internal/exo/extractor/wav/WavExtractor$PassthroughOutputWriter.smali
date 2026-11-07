.class final Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;
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
    name = "PassthroughOutputWriter"
.end annotation


# instance fields
.field private final blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private final blacklist format:Landroid/media/internal/exo/Format;

.field private blacklist outputFrameCount:J

.field private blacklist pendingOutputBytes:I

.field private blacklist startTimeUs:J

.field private final blacklist targetSampleSizeBytes:I

.field private final blacklist trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

.field private final blacklist wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/wav/WavFormat;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    .line 303
    iput-object p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 304
    iput-object p3, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    .line 306
    iget p1, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->numChannels:I

    iget p2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 308
    iget p2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    if-ne p2, p1, :cond_4f

    .line 314
    iget p2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    mul-int/2addr p2, p1

    .line 315
    div-int/lit8 p2, p2, 0xa

    .line 316
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 317
    new-instance p2, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p2}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 319
    invoke-virtual {p2, p4}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    .line 320
    invoke-virtual {p2, v0}, Landroid/media/internal/exo/Format$Builder;->setAverageBitrate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    .line 321
    invoke-virtual {p2, v0}, Landroid/media/internal/exo/Format$Builder;->setPeakBitrate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    .line 322
    invoke-virtual {p2, p1}, Landroid/media/internal/exo/Format$Builder;->setMaxInputSize(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget p2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->numChannels:I

    .line 323
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget p2, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    .line 324
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 325
    invoke-virtual {p1, p5}, Landroid/media/internal/exo/Format$Builder;->setPcmEncoding(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Landroid/media/internal/exo/Format;

    return-void

    .line 309
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected block size: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public blacklist init(IJ)V
    .registers 12

    .line 338
    iget-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance v1, Landroid/media/internal/exo/extractor/wav/WavSeekMap;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    const/4 v3, 0x1

    int-to-long v4, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Landroid/media/internal/exo/extractor/wav/WavSeekMap;-><init>(Landroid/media/internal/exo/extractor/wav/WavFormat;IJJ)V

    invoke-interface {v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 340
    iget-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Landroid/media/internal/exo/Format;

    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    return-void
.end method

.method public blacklist reset(J)V
    .registers 3

    .line 331
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    const/4 p1, 0x0

    .line 332
    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 333
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public blacklist sampleData(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_2d

    .line 346
    iget v7, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    iget v8, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    if-ge v7, v8, :cond_2d

    sub-int/2addr v8, v7

    int-to-long v7, v8

    .line 347
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    .line 348
    iget-object v7, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_25

    move-wide v1, v3

    goto :goto_4

    .line 352
    :cond_25
    iget v3, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    add-int/2addr v3, v5

    iput v3, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_4

    .line 360
    :cond_2d
    iget-object v1, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v2, v1, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    .line 361
    iget v3, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    div-int/2addr v3, v2

    if-lez v3, :cond_5e

    .line 363
    iget-wide v7, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    iget-wide v9, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    iget v1, v1, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v13, v1

    const-wide/32 v11, 0xf4240

    .line 365
    invoke-static/range {v9 .. v14}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    .line 368
    iget v1, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int v16, v1, v15

    .line 369
    iget-object v11, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v14, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    move/from16 v1, v16

    .line 371
    iget-wide v7, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 372
    iput v1, v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    :cond_5e
    if-gtz v5, :cond_61

    return v6

    :cond_61
    const/4 v0, 0x0

    return v0
.end method
