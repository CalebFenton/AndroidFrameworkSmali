.class public final Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

.field private static final blacklist REQUIRED_ID3_FRAME_PREDICATE:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;


# instance fields
.field private blacklist basisTimeUs:J

.field private blacklist currentTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist disableSeeking:Z

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist firstSamplePosition:J

.field private final blacklist flags:I

.field private final blacklist forcedFirstSampleTimestampUs:J

.field private final blacklist gaplessInfoHolder:Landroid/media/internal/exo/extractor/GaplessInfoHolder;

.field private final blacklist id3Peeker:Landroid/media/internal/exo/extractor/Id3Peeker;

.field private blacklist isSeekInProgress:Z

.field private blacklist metadata:Landroid/media/internal/exo/metadata/Metadata;

.field private blacklist realTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist sampleBytesRemaining:I

.field private blacklist samplesRead:J

.field private final blacklist scratch:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist seekTimeUs:J

.field private blacklist seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

.field private final blacklist skippingTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

.field private final blacklist synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

.field private blacklist synchronizedHeaderData:I


# direct methods
.method public static synthetic blacklist $r8$lambda$JP6yHZcecReZk3RJDxG9SPIeTIQ(IIIII)Z
    .registers 8

    .line 0
    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_11

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_11

    if-ne p3, v2, :cond_11

    if-eq p4, v2, :cond_1f

    if-eq p0, v1, :cond_1f

    :cond_11
    if-ne p1, v2, :cond_21

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_21

    if-ne p3, p1, :cond_21

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1f

    if-ne p0, v1, :cond_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    .line 117
    new-instance v0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 170
    invoke-direct {p0, p1, v0, v1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .registers 5

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x1

    .line 182
    :cond_9
    iput p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->flags:I

    .line 183
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 184
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 185
    new-instance p1, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    invoke-direct {p1}, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    .line 186
    new-instance p1, Landroid/media/internal/exo/extractor/GaplessInfoHolder;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/GaplessInfoHolder;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroid/media/internal/exo/extractor/GaplessInfoHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 187
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 188
    new-instance p1, Landroid/media/internal/exo/extractor/Id3Peeker;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/Id3Peeker;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->id3Peeker:Landroid/media/internal/exo/extractor/Id3Peeker;

    .line 189
    new-instance p1, Landroid/media/internal/exo/extractor/DummyTrackOutput;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 190
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    return-void
.end method

.method private blacklist assertInitialized()V
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist computeSeeker(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/extractor/mp3/Seeker;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/extractor/mp3/Seeker;

    move-result-object v0

    .line 440
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Landroid/media/internal/exo/metadata/Metadata;J)Landroid/media/internal/exo/extractor/mp3/MlltSeeker;

    move-result-object v1

    .line 442
    iget-boolean v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    if-eqz v2, :cond_18

    .line 443
    new-instance p0, Landroid/media/internal/exo/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    return-object p0

    .line 447
    :cond_18
    iget v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4a

    if-eqz v1, :cond_2b

    .line 451
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    .line 452
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v0

    :goto_28
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_3f

    :cond_2b
    if-eqz v0, :cond_36

    .line 454
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    .line 455
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v0

    goto :goto_28

    .line 457
    :cond_36
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroid/media/internal/exo/metadata/Metadata;)J

    move-result-wide v2

    const-wide/16 v0, -0x1

    goto :goto_28

    .line 459
    :goto_3f
    new-instance v4, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;

    .line 461
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    invoke-direct/range {v4 .. v10}, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    move-object v0, v4

    goto :goto_52

    :cond_4a
    if-eqz v1, :cond_4e

    move-object v0, v1

    goto :goto_52

    :cond_4e
    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    const/4 v1, 0x1

    if-eqz v0, :cond_62

    .line 469
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/SeekMap;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_61

    iget v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_61

    goto :goto_62

    :cond_61
    return-object v0

    .line 470
    :cond_62
    :goto_62
    iget v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v1, 0x0

    .line 471
    :goto_6a
    invoke-direct {p0, p1, v1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Landroid/media/internal/exo/extractor/mp3/Seeker;

    move-result-object p0

    return-object p0
.end method

.method private blacklist computeTimeUs(J)J
    .registers 7

    .line 339
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget p0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v2, p0

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private blacklist getConstantBitrateSeeker(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Landroid/media/internal/exo/extractor/mp3/Seeker;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 528
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 529
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 530
    new-instance v2, Landroid/media/internal/exo/extractor/mp3/ConstantBitrateSeeker;

    .line 531
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    move v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/media/internal/exo/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLandroid/media/internal/exo/audio/MpegAudioUtil$Header;Z)V

    return-object v2
.end method

.method private static blacklist getId3TlenUs(Landroid/media/internal/exo/metadata/Metadata;)J
    .registers 6

    if-eqz p0, :cond_2b

    .line 584
    invoke-virtual {p0}, Landroid/media/internal/exo/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2b

    .line 586
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/metadata/Metadata;->get(I)Landroid/media/internal/exo/metadata/Metadata$Entry;

    move-result-object v2

    .line 587
    instance-of v3, v2, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_28

    check-cast v2, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    iget-object v3, v2, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v4, "TLEN"

    .line 588
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 589
    iget-object p0, v2, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/media/internal/exo/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static blacklist getSeekFrameHeader(Landroid/media/internal/exo/util/ParsableByteArray;I)I
    .registers 4

    .line 551
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1a

    .line 552
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 553
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_19

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1a

    :cond_19
    return p1

    .line 558
    :cond_1a
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_31

    const/16 p1, 0x24

    .line 559
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 560
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_31

    return p1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist headersMatch(IJ)Z
    .registers 7

    .line 0
    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist maybeHandleSeekMetadata(Landroid/media/internal/exo/metadata/Metadata;J)Landroid/media/internal/exo/extractor/mp3/MlltSeeker;
    .registers 7

    if-eqz p0, :cond_1f

    .line 571
    invoke-virtual {p0}, Landroid/media/internal/exo/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 573
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/metadata/Metadata;->get(I)Landroid/media/internal/exo/metadata/Metadata$Entry;

    move-result-object v2

    .line 574
    instance-of v3, v2, Landroid/media/internal/exo/metadata/id3/MlltFrame;

    if-eqz v3, :cond_1c

    .line 575
    check-cast v2, Landroid/media/internal/exo/metadata/id3/MlltFrame;

    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroid/media/internal/exo/metadata/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Landroid/media/internal/exo/extractor/mp3/MlltSeeker;->create(JLandroid/media/internal/exo/metadata/id3/MlltFrame;J)Landroid/media/internal/exo/extractor/mp3/MlltSeeker;

    move-result-object p0

    return-object p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist maybeReadSeekFrame(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/extractor/mp3/Seeker;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    new-instance v5, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v0, v0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-direct {v5, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 491
    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v1, v1, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 493
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v1, v0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->version:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_27

    .line 494
    iget v0, v0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->channels:I

    if-eq v0, v2, :cond_25

    const/16 v3, 0x24

    :cond_25
    :goto_25
    move v7, v3

    goto :goto_2f

    .line 495
    :cond_27
    iget v0, v0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->channels:I

    if-eq v0, v2, :cond_2c

    goto :goto_25

    :cond_2c
    const/16 v3, 0xd

    goto :goto_25

    .line 496
    :goto_2f
    invoke-static {v5, v7}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Landroid/media/internal/exo/util/ParsableByteArray;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_5e

    if-ne v8, v9, :cond_3e

    goto :goto_5e

    :cond_3e
    const v0, 0x56425249

    if-ne v8, v0, :cond_59

    .line 514
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    invoke-static/range {v0 .. v5}, Landroid/media/internal/exo/extractor/mp3/VbriSeeker;->create(JJLandroid/media/internal/exo/audio/MpegAudioUtil$Header;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/mp3/VbriSeeker;

    move-result-object v0

    .line 515
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget p0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return-object v0

    .line 519
    :cond_59
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    return-object p0

    .line 499
    :cond_5e
    :goto_5e
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    invoke-static/range {v0 .. v5}, Landroid/media/internal/exo/extractor/mp3/XingSeeker;->create(JJLandroid/media/internal/exo/audio/MpegAudioUtil$Header;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/mp3/XingSeeker;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 500
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroid/media/internal/exo/extractor/GaplessInfoHolder;

    invoke-virtual {v1}, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-nez v1, :cond_98

    .line 502
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit16 v7, v7, 0x8d

    .line 503
    invoke-interface {p1, v7}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 504
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 505
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 506
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroid/media/internal/exo/extractor/GaplessInfoHolder;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    .line 508
    :cond_98
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v1, v1, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    if-eqz v0, :cond_ae

    .line 509
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_ae

    if-ne v8, v9, :cond_ae

    .line 511
    invoke-direct {p0, p1, v6}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Landroid/media/internal/exo/extractor/mp3/Seeker;

    move-result-object p0

    return-object p0

    :cond_ae
    return-object v0
.end method

.method private blacklist peekEndOfStreamOrHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 422
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1b

    .line 424
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_1b

    return v1

    .line 429
    :cond_1b
    :try_start_1b
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 430
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 429
    invoke-interface {p1, p0, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_27} :catch_29

    xor-int/2addr p0, v1

    return p0

    :catch_29
    return v1
.end method

.method private blacklist readInternal(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 256
    :try_start_5
    invoke-direct {p0, p1, v0}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronize(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_b

    :catch_9
    const/4 p0, -0x1

    return p0

    .line 261
    :cond_b
    :goto_b
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    if-nez v0, :cond_6b

    .line 262
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->computeSeeker(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/extractor/mp3/Seeker;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    .line 263
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 264
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    new-instance v1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget-object v2, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 266
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    const/16 v2, 0x1000

    .line 267
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setMaxInputSize(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v2, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->channels:I

    .line 268
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v2, v2, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 269
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroid/media/internal/exo/extractor/GaplessInfoHolder;

    iget v2, v2, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 270
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setEncoderDelay(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroid/media/internal/exo/extractor/GaplessInfoHolder;

    iget v2, v2, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 271
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setEncoderPadding(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 272
    iget v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_57

    const/4 v2, 0x0

    goto :goto_59

    :cond_57
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    :goto_59
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setMetadata(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v1

    .line 264
    invoke-interface {v0, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 274
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    goto :goto_82

    .line 275
    :cond_6b
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_82

    .line 276
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 277
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_82

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 279
    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 282
    :cond_82
    :goto_82
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->readSample(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p0

    return p0
.end method

.method private blacklist readSample(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_9c

    .line 288
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 289
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v2

    .line 292
    :cond_11
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 293
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 294
    iget v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 295
    invoke-static {v0}, Landroid/media/internal/exo/audio/MpegAudioUtil;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_2c

    goto :goto_96

    .line 301
    :cond_2c
    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    invoke-virtual {v4, v0}, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 302
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_5e

    .line 303
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Landroid/media/internal/exo/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 304
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5e

    .line 305
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Landroid/media/internal/exo/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    .line 306
    iget-wide v6, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 309
    :cond_5e
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v4, v0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    iput v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 310
    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    instance-of v5, v4, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;

    if-eqz v5, :cond_9c

    .line 311
    check-cast v4, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;

    .line 314
    iget-wide v5, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget v0, v0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    .line 315
    invoke-direct {p0, v5, v6}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    .line 316
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v0, v0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    .line 314
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->maybeAddSeekPoint(JJ)V

    .line 317
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v0, :cond_9c

    iget-wide v5, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    invoke-virtual {v4, v5, v6}, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 318
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 319
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    goto :goto_9c

    .line 297
    :cond_96
    :goto_96
    invoke-interface {p1, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 298
    iput v3, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v3

    .line 323
    :cond_9c
    :goto_9c
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iget v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, p1, v4, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I

    move-result p1

    if-ne p1, v2, :cond_a7

    return v2

    .line 327
    :cond_a7
    iget v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v0, :cond_af

    return v3

    .line 331
    :cond_af
    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 332
    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v8, p1, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 331
    invoke-interface/range {v4 .. v10}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 333
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget p1, p1, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 334
    iput v3, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    return v3
.end method

.method private blacklist synchronize(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const v0, 0x8000

    goto :goto_8

    :cond_6
    const/high16 v0, 0x20000

    .line 348
    :goto_8
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 349
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_3e

    .line 352
    iget v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1f

    move-object v1, v2

    goto :goto_21

    .line 354
    :cond_1f
    sget-object v1, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;

    .line 355
    :goto_21
    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->id3Peeker:Landroid/media/internal/exo/extractor/Id3Peeker;

    invoke-virtual {v4, p1, v1}, Landroid/media/internal/exo/extractor/Id3Peeker;->peekId3Data(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    if-eqz v1, :cond_30

    .line 357
    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroid/media/internal/exo/extractor/GaplessInfoHolder;

    invoke-virtual {v4, v1}, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->setFromMetadata(Landroid/media/internal/exo/metadata/Metadata;)Z

    .line 359
    :cond_30
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    long-to-int v1, v4

    if-nez p2, :cond_3a

    .line 361
    invoke-interface {p1, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    :cond_3a
    move v4, v3

    :goto_3b
    move v5, v4

    move v6, v5

    goto :goto_41

    :cond_3e
    move v1, v3

    move v4, v1

    goto :goto_3b

    .line 365
    :goto_41
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_51

    if-lez v5, :cond_4b

    goto :goto_9a

    .line 370
    :cond_4b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 372
    :cond_51
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v7, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 373
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v7

    if-eqz v4, :cond_65

    int-to-long v9, v4

    .line 376
    invoke-static {v7, v9, v10}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 377
    :cond_65
    invoke-static {v7}, Landroid/media/internal/exo/audio/MpegAudioUtil;->getFrameSize(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8c

    :cond_6c
    add-int/lit8 v4, v6, 0x1

    if-ne v6, v0, :cond_7a

    if-eqz p2, :cond_73

    return v3

    .line 381
    :cond_73
    const-string p0, "Searched too many bytes."

    invoke-static {p0, v2}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :cond_7a
    if-eqz p2, :cond_85

    .line 389
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v5, v1, v4

    .line 390
    invoke-interface {p1, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_88

    .line 392
    :cond_85
    invoke-interface {p1, v8}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    :goto_88
    move v5, v3

    move v6, v4

    move v4, v5

    goto :goto_41

    :cond_8c
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_97

    .line 398
    iget-object v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    invoke-virtual {v4, v7}, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move v4, v7

    goto :goto_a7

    :cond_97
    const/4 v7, 0x4

    if-ne v5, v7, :cond_a7

    :goto_9a
    if-eqz p2, :cond_a1

    add-int/2addr v1, v6

    .line 408
    invoke-interface {p1, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_a4

    .line 410
    :cond_a1
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 412
    :goto_a4
    iput v4, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v8

    :cond_a7
    :goto_a7
    add-int/lit8 v9, v9, -0x4

    .line 403
    invoke-interface {p1, v9}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_41
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 4

    .line 202
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 203
    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 204
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 205
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->assertInitialized()V

    .line 229
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->readInternal(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2e

    .line 230
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    instance-of p2, p2, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_2e

    .line 232
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->samplesRead:J

    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v0

    .line 233
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    invoke-interface {p2}, Landroid/media/internal/exo/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_2e

    .line 234
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    check-cast p2, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;

    invoke-virtual {p2, v0, v1}, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->setDurationUs(J)V

    .line 235
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    invoke-interface {p2, p0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    :cond_2e
    return p1
.end method

.method public blacklist seek(JJ)V
    .registers 7

    const/4 p1, 0x0

    .line 210
    iput p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 211
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v0, 0x0

    .line 212
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 213
    iput p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 214
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    .line 215
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->seeker:Landroid/media/internal/exo/extractor/mp3/Seeker;

    instance-of p2, p1, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_27

    check-cast p1, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;

    invoke-virtual {p1, p3, p4}, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result p1

    if-nez p1, :cond_27

    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 217
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    :cond_27
    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, p1, v0}, Landroid/media/internal/exo/extractor/mp3/Mp3Extractor;->synchronize(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method
