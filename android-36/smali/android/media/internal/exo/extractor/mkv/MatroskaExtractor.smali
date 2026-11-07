.class public Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;,
        Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;
    }
.end annotation


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

.field private static final blacklist SSA_DIALOGUE_FORMAT:[B

.field private static final blacklist SSA_PREFIX:[B

.field private static final blacklist SUBRIP_PREFIX:[B

.field private static final blacklist TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private final blacklist blockAdditionalData:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist blockAdditionalId:I

.field private blacklist blockDurationUs:J

.field private blacklist blockFlags:I

.field private blacklist blockHasReferenceBlock:Z

.field private blacklist blockSampleCount:I

.field private blacklist blockSampleIndex:I

.field private blacklist blockSampleSizes:[I

.field private blacklist blockState:I

.field private blacklist blockTimeUs:J

.field private blacklist blockTrackNumber:I

.field private blacklist blockTrackNumberLength:I

.field private blacklist clusterTimecodeUs:J

.field private blacklist cueClusterPositions:Landroid/media/internal/exo/util/LongArray;

.field private blacklist cueTimesUs:Landroid/media/internal/exo/util/LongArray;

.field private blacklist cuesContentPosition:J

.field private blacklist currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

.field private blacklist durationTimecode:J

.field private blacklist durationUs:J

.field private final blacklist encryptionInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist encryptionSubsampleData:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist haveOutputSample:Z

.field private final blacklist nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist reader:Landroid/media/internal/exo/extractor/mkv/EbmlReader;

.field private blacklist sampleBytesRead:I

.field private blacklist sampleBytesWritten:I

.field private blacklist sampleCurrentNalBytesRemaining:I

.field private blacklist sampleEncodingHandled:Z

.field private blacklist sampleInitializationVectorRead:Z

.field private blacklist samplePartitionCount:I

.field private blacklist samplePartitionCountRead:Z

.field private blacklist sampleSignalByte:B

.field private blacklist sampleSignalByteRead:Z

.field private final blacklist sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist scratch:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist seekEntryId:I

.field private final blacklist seekEntryIdBytes:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist seekEntryPosition:J

.field private blacklist seekForCues:Z

.field private final blacklist seekForCuesEnabled:Z

.field private blacklist seekPositionAfterBuildingCues:J

.field private blacklist seenClusterPositionForCurrentCuePoint:Z

.field private blacklist segmentContentPosition:J

.field private blacklist segmentContentSize:J

.field private blacklist sentSeekMap:Z

.field private final blacklist subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist timecodeScale:J

.field private final blacklist tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

.field private final blacklist vorbisNumPageSamples:Landroid/media/internal/exo/util/ParsableByteArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 80
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    const/16 v0, 0x20

    .line 280
    new-array v1, v0, [B

    fill-array-data v1, :array_68

    sput-object v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    .line 296
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 297
    invoke-static {v1}, Landroid/media/internal/exo/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 311
    new-array v0, v0, [B

    fill-array-data v0, :array_7c

    sput-object v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    .line 333
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-void

    nop

    :array_68
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_7c
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 421
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 425
    new-instance v0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;-><init>(Landroid/media/internal/exo/extractor/mkv/EbmlReader;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/internal/exo/extractor/mkv/EbmlReader;I)V
    .registers 7

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 366
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 367
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 368
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 369
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 383
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 384
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 385
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 429
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->reader:Landroid/media/internal/exo/extractor/mkv/EbmlReader;

    .line 430
    new-instance v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/mkv/EbmlReader;->init(Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_29

    move p2, p1

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    .line 431
    :goto_2a
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 432
    new-instance p2, Landroid/media/internal/exo/extractor/mkv/VarintReader;

    invoke-direct {p2}, Landroid/media/internal/exo/extractor/mkv/VarintReader;-><init>()V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

    .line 433
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 434
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 435
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 436
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 437
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    sget-object v1, Landroid/media/internal/exo/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 438
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 439
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 440
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 441
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0x8

    invoke-direct {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 442
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 443
    new-instance p2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 444
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    return-void
.end method

.method static synthetic blacklist access$400()[B
    .registers 1

    .line 77
    sget-object v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method static synthetic blacklist access$500()Ljava/util/Map;
    .registers 1

    .line 77
    sget-object v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$600()Ljava/util/UUID;
    .registers 1

    .line 77
    sget-object v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private blacklist assertInCues(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1322
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroid/media/internal/exo/util/LongArray;

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroid/media/internal/exo/util/LongArray;

    if-eqz p0, :cond_9

    return-void

    .line 1323
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Element "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist assertInTrackEntry(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1314
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    if-eqz p0, :cond_5

    return-void

    .line 1315
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Element "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist assertInitialized()V
    .registers 1

    .line 1859
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist buildSeekMap(Landroid/media/internal/exo/util/LongArray;Landroid/media/internal/exo/util/LongArray;)Landroid/media/internal/exo/extractor/SeekMap;
    .registers 14

    .line 1730
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a6

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a6

    if-eqz p1, :cond_a6

    .line 1733
    invoke-virtual {p1}, Landroid/media/internal/exo/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_a6

    if-eqz p2, :cond_a6

    .line 1735
    invoke-virtual {p2}, Landroid/media/internal/exo/util/LongArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/internal/exo/util/LongArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_29

    goto/16 :goto_a6

    .line 1739
    :cond_29
    invoke-virtual {p1}, Landroid/media/internal/exo/util/LongArray;->size()I

    move-result v0

    .line 1740
    new-array v1, v0, [I

    .line 1741
    new-array v2, v0, [J

    .line 1742
    new-array v3, v0, [J

    .line 1743
    new-array v4, v0, [J

    const/4 v5, 0x0

    move v6, v5

    :goto_37
    if-ge v6, v0, :cond_4b

    .line 1745
    invoke-virtual {p1, v6}, Landroid/media/internal/exo/util/LongArray;->get(I)J

    move-result-wide v7

    aput-wide v7, v4, v6

    .line 1746
    iget-wide v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    invoke-virtual {p2, v6}, Landroid/media/internal/exo/util/LongArray;->get(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_4b
    :goto_4b
    add-int/lit8 p1, v0, -0x1

    if-ge v5, p1, :cond_62

    add-int/lit8 p1, v5, 0x1

    .line 1749
    aget-wide v6, v2, p1

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int p2, v6

    aput p2, v1, v5

    .line 1750
    aget-wide v6, v4, p1

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    move v5, p1

    goto :goto_4b

    .line 1752
    :cond_62
    iget-wide v5, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v5, v7

    aget-wide v7, v2, p1

    sub-long/2addr v5, v7

    long-to-int p2, v5

    aput p2, v1, p1

    .line 1754
    iget-wide v5, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v7, v4, p1

    sub-long/2addr v5, v7

    aput-wide v5, v3, p1

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-gtz p0, :cond_a0

    .line 1758
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Discarding last cue point with unexpected duration: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MatroskaExtractor"

    invoke-static {p2, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 1760
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 1761
    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 1762
    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 1765
    :cond_a0
    new-instance p0, Landroid/media/internal/exo/extractor/ChunkIndex;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/media/internal/exo/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object p0

    .line 1737
    :cond_a6
    :goto_a6
    new-instance p1, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p1
.end method

.method private blacklist commitSampleToOutput(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1341
    iget-object v2, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    const/4 v9, 0x1

    if-eqz v2, :cond_1c

    move-object v3, v2

    .line 1342
    iget-object v2, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v8, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroid/media/internal/exo/extractor/TrackOutput;JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    goto/16 :goto_bf

    .line 1345
    :cond_1c
    const-string v2, "S_TEXT/UTF8"

    iget-object v3, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "S_TEXT/ASS"

    iget-object v3, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1346
    :cond_30
    iget v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const-string v3, "MatroskaExtractor"

    if-le v2, v9, :cond_3c

    .line 1347
    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v3, v2}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 1348
    :cond_3c
    iget-wide v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-nez v2, :cond_4f

    .line 1349
    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v3, v2}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    move/from16 v2, p5

    goto :goto_8e

    .line 1351
    :cond_4f
    iget-object v2, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->setSubtitleEndTime(Ljava/lang/String;J[B)V

    .line 1355
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    :goto_60
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v3

    if-ge v2, v3, :cond_7b

    .line 1356
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_78

    .line 1357
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    goto :goto_7b

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 1363
    :cond_7b
    :goto_7b
    iget-object v2, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 1364
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v2

    add-int v2, p5, v2

    :goto_8e
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_af

    .line 1369
    iget v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-le v3, v9, :cond_a0

    const v3, -0x10000001

    and-int v3, p4, v3

    move v14, v2

    move v13, v3

    goto :goto_b2

    .line 1375
    :cond_a0
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v3

    .line 1376
    iget-object v4, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v3, v6}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    add-int/2addr v2, v3

    :cond_af
    move/from16 v13, p4

    move v14, v2

    .line 1381
    :goto_b2
    iget-object v10, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v1, v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    move-wide/from16 v11, p2

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 1383
    :goto_bf
    iput-boolean v9, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    return-void
.end method

.method private static blacklist ensureArrayCapacity([II)[I
    .registers 3

    if-nez p0, :cond_5

    .line 1848
    new-array p0, p1, [I

    return-object p0

    .line 1849
    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    return-object p0

    .line 1853
    :cond_9
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private blacklist finishWriteSampleData()I
    .registers 2

    .line 1601
    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1602
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return v0
.end method

.method private static blacklist formatSubtitleTimecode(JLjava/lang/String;J)[B
    .registers 12

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1677
    :goto_c
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    const-wide v0, 0xd693a400L

    .line 1679
    div-long v0, p0, v0

    long-to-int v0, v0

    mul-int/lit16 v1, v0, 0xe10

    int-to-long v1, v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    sub-long/2addr p0, v1

    const-wide/32 v1, 0x3938700

    .line 1681
    div-long v1, p0, v1

    long-to-int v1, v1

    mul-int/lit8 v2, v1, 0x3c

    int-to-long v5, v2

    mul-long/2addr v5, v3

    sub-long/2addr p0, v5

    .line 1683
    div-long v5, p0, v3

    long-to-int v2, v5

    int-to-long v5, v2

    mul-long/2addr v5, v3

    sub-long/2addr p0, v5

    .line 1685
    div-long/2addr p0, p3

    long-to-int p0, p0

    .line 1686
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1688
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p4, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1687
    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isCodecSupported(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1803
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1bc

    goto/16 :goto_1b6

    :sswitch_f
    const-string v3, "A_OPUS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_1b6

    :cond_19
    const/16 v2, 0x1f

    goto/16 :goto_1b6

    :sswitch_1d
    const-string v3, "A_FLAC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_1b6

    :cond_27
    const/16 v2, 0x1e

    goto/16 :goto_1b6

    :sswitch_2b
    const-string v3, "A_EAC3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_1b6

    :cond_35
    const/16 v2, 0x1d

    goto/16 :goto_1b6

    :sswitch_39
    const-string v3, "V_MPEG2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_1b6

    :cond_43
    const/16 v2, 0x1c

    goto/16 :goto_1b6

    :sswitch_47
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_1b6

    :cond_51
    const/16 v2, 0x1b

    goto/16 :goto_1b6

    :sswitch_55
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto/16 :goto_1b6

    :cond_5f
    const/16 v2, 0x1a

    goto/16 :goto_1b6

    :sswitch_63
    const-string v3, "S_TEXT/ASS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto/16 :goto_1b6

    :cond_6d
    const/16 v2, 0x19

    goto/16 :goto_1b6

    :sswitch_71
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto/16 :goto_1b6

    :cond_7b
    const/16 v2, 0x18

    goto/16 :goto_1b6

    :sswitch_7f
    const-string v3, "A_PCM/INT/BIG"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto/16 :goto_1b6

    :cond_89
    const/16 v2, 0x17

    goto/16 :goto_1b6

    :sswitch_8d
    const-string v3, "A_PCM/FLOAT/IEEE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    goto/16 :goto_1b6

    :cond_97
    const/16 v2, 0x16

    goto/16 :goto_1b6

    :sswitch_9b
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto/16 :goto_1b6

    :cond_a5
    const/16 v2, 0x15

    goto/16 :goto_1b6

    :sswitch_a9
    const-string v3, "V_THEORA"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_1b6

    :cond_b3
    const/16 v2, 0x14

    goto/16 :goto_1b6

    :sswitch_b7
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_1b6

    :cond_c1
    const/16 v2, 0x13

    goto/16 :goto_1b6

    :sswitch_c5
    const-string v3, "V_VP9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    goto/16 :goto_1b6

    :cond_cf
    const/16 v2, 0x12

    goto/16 :goto_1b6

    :sswitch_d3
    const-string v3, "V_VP8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dd

    goto/16 :goto_1b6

    :cond_dd
    const/16 v2, 0x11

    goto/16 :goto_1b6

    :sswitch_e1
    const-string v3, "V_AV1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto/16 :goto_1b6

    :cond_eb
    const/16 v2, 0x10

    goto/16 :goto_1b6

    :sswitch_ef
    const-string v3, "A_DTS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    goto/16 :goto_1b6

    :cond_f9
    const/16 v2, 0xf

    goto/16 :goto_1b6

    :sswitch_fd
    const-string v3, "A_AC3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_107

    goto/16 :goto_1b6

    :cond_107
    const/16 v2, 0xe

    goto/16 :goto_1b6

    :sswitch_10b
    const-string v3, "A_AAC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_115

    goto/16 :goto_1b6

    :cond_115
    const/16 v2, 0xd

    goto/16 :goto_1b6

    :sswitch_119
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_123

    goto/16 :goto_1b6

    :cond_123
    const/16 v2, 0xc

    goto/16 :goto_1b6

    :sswitch_127
    const-string v3, "S_VOBSUB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_131

    goto/16 :goto_1b6

    :cond_131
    const/16 v2, 0xb

    goto/16 :goto_1b6

    :sswitch_135
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13f

    goto/16 :goto_1b6

    :cond_13f
    const/16 v2, 0xa

    goto/16 :goto_1b6

    :sswitch_143
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14d

    goto/16 :goto_1b6

    :cond_14d
    const/16 v2, 0x9

    goto/16 :goto_1b6

    :sswitch_151
    const-string v3, "S_DVBSUB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15b

    goto/16 :goto_1b6

    :cond_15b
    const/16 v2, 0x8

    goto/16 :goto_1b6

    :sswitch_15f
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_168

    goto :goto_1b6

    :cond_168
    const/4 v2, 0x7

    goto :goto_1b6

    :sswitch_16a
    const-string v3, "A_MPEG/L3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_173

    goto :goto_1b6

    :cond_173
    const/4 v2, 0x6

    goto :goto_1b6

    :sswitch_175
    const-string v3, "A_MPEG/L2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17e

    goto :goto_1b6

    :cond_17e
    const/4 v2, 0x5

    goto :goto_1b6

    :sswitch_180
    const-string v3, "A_VORBIS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_189

    goto :goto_1b6

    :cond_189
    const/4 v2, 0x4

    goto :goto_1b6

    :sswitch_18b
    const-string v3, "A_TRUEHD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_194

    goto :goto_1b6

    :cond_194
    const/4 v2, 0x3

    goto :goto_1b6

    :sswitch_196
    const-string v3, "A_MS/ACM"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19f

    goto :goto_1b6

    :cond_19f
    const/4 v2, 0x2

    goto :goto_1b6

    :sswitch_1a1
    const-string v3, "V_MPEG4/ISO/SP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1aa

    goto :goto_1b6

    :cond_1aa
    move v2, v0

    goto :goto_1b6

    :sswitch_1ac
    const-string v3, "V_MPEG4/ISO/AP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b5

    goto :goto_1b6

    :cond_1b5
    move v2, v1

    :goto_1b6
    packed-switch v2, :pswitch_data_23e

    return v1

    :pswitch_1ba
    return v0

    nop

    :sswitch_data_1bc
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1ac
        -0x7ce7f3b0 -> :sswitch_1a1
        -0x76567dc0 -> :sswitch_196
        -0x6a615338 -> :sswitch_18b
        -0x672350af -> :sswitch_180
        -0x585f4fce -> :sswitch_175
        -0x585f4fcd -> :sswitch_16a
        -0x51dc40b2 -> :sswitch_15f
        -0x37a9c464 -> :sswitch_151
        -0x2016c535 -> :sswitch_143
        -0x2016c4e5 -> :sswitch_135
        -0x19552dbd -> :sswitch_127
        -0x1538b2ba -> :sswitch_119
        0x3c02325 -> :sswitch_10b
        0x3c02353 -> :sswitch_fd
        0x3c030c5 -> :sswitch_ef
        0x4e81333 -> :sswitch_e1
        0x4e86155 -> :sswitch_d3
        0x4e86156 -> :sswitch_c5
        0x5e8da3e -> :sswitch_b7
        0x1a8350d6 -> :sswitch_a9
        0x2056f406 -> :sswitch_9b
        0x25e26ee2 -> :sswitch_8d
        0x2b45174d -> :sswitch_7f
        0x2b453ce4 -> :sswitch_71
        0x2c0618eb -> :sswitch_63
        0x32fdf009 -> :sswitch_55
        0x54c61e47 -> :sswitch_47
        0x6bd6c624 -> :sswitch_39
        0x7446132a -> :sswitch_2b
        0x7446b0a6 -> :sswitch_1d
        0x744ad97d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
    .end packed-switch
.end method

.method private blacklist maybeSeekForCues(Landroid/media/internal/exo/extractor/PositionHolder;J)Z
    .registers 9

    .line 1778
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 1779
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1780
    iget-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide p2, p1, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    .line 1781
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    return v1

    .line 1786
    :cond_f
    iget-boolean p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz p2, :cond_20

    iget-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_20

    .line 1787
    iput-wide p2, p1, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    .line 1788
    iput-wide v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    return v1

    :cond_20
    return v2
.end method

.method private blacklist readScratch(Landroid/media/internal/exo/extractor/ExtractorInput;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_9

    return-void

    .line 1394
    :cond_9
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_20

    .line 1395
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->ensureCapacity(I)V

    .line 1397
    :cond_20
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1398
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method private blacklist resetWriteSampleData()V
    .registers 2

    const/4 v0, 0x0

    .line 1608
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1609
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1610
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1611
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1612
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1613
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1614
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1615
    iput-byte v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1616
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1617
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method private blacklist scaleTimecodeToUs(J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1795
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v0

    if-eqz p0, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 1799
    invoke-static/range {v0 .. v5}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0

    .line 1796
    :cond_13
    const-string p0, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist setSubtitleEndTime(Ljava/lang/String;J[B)V
    .registers 6

    .line 1652
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 1654
    const-string p0, "%02d:%02d:%02d,%03d"

    const-wide/16 v0, 0x3e8

    .line 1655
    invoke-static {p1, p2, p0, v0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x13

    goto :goto_2e

    .line 1666
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1660
    :cond_24
    const-string p0, "%01d:%02d:%02d:%02d"

    const-wide/16 v0, 0x2710

    .line 1661
    invoke-static {p1, p2, p0, v0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x15

    .line 1668
    :goto_2e
    array-length p2, p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private blacklist writeSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;I)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1412
    iget-object v0, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1413
    sget-object p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;[BI)V

    .line 1414
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p0

    return p0

    .line 1415
    :cond_14
    const-string v0, "S_TEXT/ASS"

    iget-object v1, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1416
    sget-object p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;[BI)V

    .line 1417
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p0

    return p0

    .line 1420
    :cond_28
    iget-object v0, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 1421
    iget-boolean v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1d3

    .line 1422
    iget-boolean v1, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_175

    .line 1425
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1426
    iget-boolean v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v6, 0x80

    if-nez v1, :cond_72

    .line 1427
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1428
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1429
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_6a

    .line 1433
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1434
    iput-boolean v4, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_72

    .line 1430
    :cond_6a
    const-string p0, "Extension bit is set in signal byte"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 1436
    :cond_72
    :goto_72
    iget-byte v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_17f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7d

    move v1, v4

    goto :goto_7e

    :cond_7d
    move v1, v5

    .line 1439
    :goto_7e
    iget v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1440
    iget-boolean v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v7, :cond_c7

    .line 1441
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1442
    iget v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v8

    iput v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1443
    iput-boolean v4, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1445
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v7

    if-eqz v1, :cond_a4

    goto :goto_a5

    :cond_a4
    move v6, v5

    :goto_a5
    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 1446
    aput-byte v6, v7, v5

    .line 1447
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1448
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, v6, v4, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    .line 1449
    iget v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1451
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1452
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, v6, v8, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    .line 1456
    iget v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v8

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_c7
    if-eqz v1, :cond_17f

    .line 1459
    iget-boolean v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v1, :cond_ea

    .line 1460
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1461
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1462
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1463
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1464
    iput-boolean v4, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1466
    :cond_ea
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/2addr v1, v2

    .line 1467
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 1468
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-interface {p1, v6, v5, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1469
    iget v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1470
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 1472
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_112

    .line 1473
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_118

    .line 1474
    :cond_112
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1476
    :cond_118
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1477
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v5

    move v7, v1

    .line 1485
    :goto_124
    iget v8, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v1, v8, :cond_146

    .line 1487
    iget-object v8, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v8}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 1488
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_13b

    .line 1489
    iget-object v9, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_142

    .line 1492
    :cond_13b
    iget-object v9, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_142
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_124

    .line 1495
    :cond_146
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1496
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_154

    .line 1497
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_15f

    .line 1499
    :cond_154
    iget-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1500
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1502
    :goto_15f
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 1503
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, v1, v6, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    .line 1507
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v6

    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_17f

    .line 1510
    :cond_175
    iget-object v1, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v1, :cond_17f

    .line 1512
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 1515
    :cond_17f
    :goto_17f
    iget v1, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez v1, :cond_1d1

    .line 1516
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1517
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 1520
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 1521
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 1522
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 1523
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 1524
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    and-int/lit16 v6, p3, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x3

    aput-byte v6, v1, v7

    .line 1525
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, v1, v2, v3}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;II)V

    .line 1526
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1529
    :cond_1d1
    iput-boolean v4, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1531
    :cond_1d3
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr p3, v1

    .line 1533
    const-string v1, "V_MPEG4/ISO/AVC"

    iget-object v6, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21a

    const-string v1, "V_MPEGH/ISO/HEVC"

    iget-object v6, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    goto :goto_21a

    .line 1568
    :cond_1ef
    iget-object v1, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    if-eqz v1, :cond_205

    .line 1569
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    if-nez v1, :cond_1fc

    goto :goto_1fd

    :cond_1fc
    move v4, v5

    :goto_1fd
    invoke-static {v4}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    .line 1570
    iget-object v1, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;

    invoke-virtual {v1, p1}, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->startSample(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    .line 1572
    :cond_205
    :goto_205
    iget v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v1, p3, :cond_26b

    sub-int v1, p3, v1

    .line 1573
    invoke-direct {p0, p1, v0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->writeToOutput(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/TrackOutput;I)I

    move-result v1

    .line 1574
    iget v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1575
    iget v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_205

    .line 1538
    :cond_21a
    :goto_21a
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 1539
    aput-byte v5, v1, v5

    .line 1540
    aput-byte v5, v1, v4

    .line 1541
    aput-byte v5, v1, v3

    .line 1542
    iget v3, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v4, v3, 0x4

    .line 1547
    :goto_22a
    iget v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, p3, :cond_26b

    .line 1548
    iget v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_257

    .line 1550
    invoke-direct {p0, p1, v1, v4, v3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->writeToTarget(Landroid/media/internal/exo/extractor/ExtractorInput;[BII)V

    .line 1552
    iget v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v3

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1553
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1554
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->nalLength:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1556
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1557
    iget-object v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, v6, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 1558
    iget v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v2

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_22a

    .line 1561
    :cond_257
    invoke-direct {p0, p1, v0, v6}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->writeToOutput(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/TrackOutput;I)I

    move-result v6

    .line 1562
    iget v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v6

    iput v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1563
    iget v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v7, v6

    iput v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1564
    iget v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v7, v6

    iput v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_22a

    .line 1579
    :cond_26b
    const-string p1, "A_VORBIS"

    iget-object p2, p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_284

    .line 1588
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1589
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, p1, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 1590
    iget p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1593
    :cond_284
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p0

    return p0
.end method

.method private blacklist writeSubtitleSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1622
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1623
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_17

    .line 1626
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([B)V

    goto :goto_21

    .line 1628
    :cond_17
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1630
    :goto_21
    iget-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1631
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1632
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method private blacklist writeToOutput(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/TrackOutput;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1712
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_12

    .line 1714
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1715
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {p2, p0, p1}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    return p1

    :cond_12
    const/4 p0, 0x0

    .line 1717
    invoke-interface {p2, p1, p3, p0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/upstream/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method private blacklist writeToTarget(Landroid/media/internal/exo/extractor/ExtractorInput;[BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int/2addr p4, v0

    .line 1699
    invoke-interface {p1, p2, v1, p4}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    if-lez v0, :cond_17

    .line 1701
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0, p2, p3, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    :cond_17
    return-void
.end method


# virtual methods
.method protected blacklist binaryElement(IILandroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v7, p3

    const/16 v3, 0xa1

    const/16 v4, 0xa3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v1, v3, :cond_bf

    if-eq v1, v4, :cond_bf

    const/16 v3, 0xa5

    if-eq v1, v3, :cond_a9

    const/16 v3, 0x41ed

    if-eq v1, v3, :cond_a1

    const/16 v3, 0x4255

    if-eq v1, v3, :cond_94

    const/16 v3, 0x47e2

    if-eq v1, v3, :cond_83

    const/16 v3, 0x53ab

    if-eq v1, v3, :cond_60

    const/16 v3, 0x63a2

    if-eq v1, v3, :cond_53

    const/16 v3, 0x7672

    if-ne v1, v3, :cond_3d

    .line 1115
    invoke-direct/range {p0 .. p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1116
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v2, [B

    iput-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1117
    invoke-interface {v7, v1, v8, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    return-void

    .line 1282
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    .line 1110
    :cond_53
    invoke-direct/range {p0 .. p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1111
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v2, [B

    iput-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1112
    invoke-interface {v7, v1, v8, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    return-void

    .line 1101
    :cond_60
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-static {v1, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 1102
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    rsub-int/lit8 v3, v2, 0x4

    invoke-interface {v7, v1, v3, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1103
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1104
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    return-void

    .line 1126
    :cond_83
    new-array v3, v2, [B

    .line 1127
    invoke-interface {v7, v3, v8, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 1128
    invoke-virtual/range {p0 .. p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v0

    new-instance v1, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    invoke-direct {v1, v9, v3, v8, v8}, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    return-void

    .line 1120
    :cond_94
    invoke-direct/range {p0 .. p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1122
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    new-array v1, v2, [B

    iput-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 1123
    invoke-interface {v7, v1, v8, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    return-void

    .line 1107
    :cond_a1
    invoke-virtual/range {p0 .. p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->handleBlockAddIDExtraData(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;Landroid/media/internal/exo/extractor/ExtractorInput;I)V

    return-void

    .line 1275
    :cond_a9
    iget v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    if-eq v1, v6, :cond_af

    goto/16 :goto_302

    .line 1278
    :cond_af
    iget-object v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1279
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iget v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    .line 1278
    invoke-virtual {v0, v1, v3, v7, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->handleBlockAdditionalData(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;ILandroid/media/internal/exo/extractor/ExtractorInput;I)V

    return-void

    .line 1139
    :cond_bf
    iget v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v10, 0x8

    if-nez v3, :cond_e4

    .line 1140
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->readUnsignedVarint(Landroid/media/internal/exo/extractor/ExtractorInput;ZZI)J

    move-result-wide v11

    long-to-int v3, v11

    iput v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1141
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

    invoke-virtual {v3}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->getLastLength()I

    move-result v3

    iput v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1142
    iput-wide v11, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 1143
    iput v9, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1144
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 1147
    :cond_e4
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v11, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    if-nez v3, :cond_fa

    .line 1151
    iget v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v1, v2, v1

    invoke-interface {v7, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 1152
    iput v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    .line 1156
    :cond_fa
    # invokes: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V
    invoke-static {v3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->access$100(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;)V

    .line 1158
    iget v11, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v11, v9, :cond_2b2

    const/4 v11, 0x3

    .line 1160
    invoke-direct {v0, v7, v11}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->readScratch(Landroid/media/internal/exo/extractor/ExtractorInput;I)V

    .line 1161
    iget-object v12, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v12}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v12

    aget-byte v12, v12, v6

    and-int/lit8 v12, v12, 0x6

    shr-int/2addr v12, v9

    const/16 v13, 0xff

    if-nez v12, :cond_12c

    .line 1163
    iput v9, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 1164
    iget-object v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v5, v9}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v5

    iput-object v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1165
    iget v12, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v12

    sub-int/2addr v2, v11

    aput v2, v5, v8

    :goto_124
    move/from16 v17, v8

    move/from16 v16, v9

    move/from16 v18, v10

    goto/16 :goto_25b

    :cond_12c
    const/4 v14, 0x4

    .line 1168
    invoke-direct {v0, v7, v14}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->readScratch(Landroid/media/internal/exo/extractor/ExtractorInput;I)V

    .line 1169
    iget-object v15, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v15}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v15

    aget-byte v15, v15, v11

    and-int/2addr v15, v13

    add-int/2addr v15, v9

    iput v15, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    move/from16 v16, v14

    .line 1170
    iget-object v14, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v14, v15}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v14

    iput-object v14, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-ne v12, v6, :cond_154

    .line 1172
    iget v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x4

    iget v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    div-int/2addr v2, v5

    .line 1174
    invoke-static {v14, v8, v5, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_124

    :cond_154
    if-ne v12, v9, :cond_18f

    move v5, v8

    move v11, v5

    move/from16 v14, v16

    .line 1178
    :goto_15a
    iget v12, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    add-int/lit8 v15, v12, -0x1

    if-ge v5, v15, :cond_184

    .line 1179
    iget-object v12, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v8, v12, v5

    :goto_164
    add-int/lit8 v12, v14, 0x1

    .line 1182
    invoke-direct {v0, v7, v12}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->readScratch(Landroid/media/internal/exo/extractor/ExtractorInput;I)V

    .line 1183
    iget-object v15, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v15}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v15

    aget-byte v14, v15, v14

    and-int/2addr v14, v13

    .line 1184
    iget-object v15, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v16, v15, v5

    add-int v16, v16, v14

    aput v16, v15, v5

    if-eq v14, v13, :cond_182

    add-int v11, v11, v16

    add-int/lit8 v5, v5, 0x1

    move v14, v12

    goto :goto_15a

    :cond_182
    move v14, v12

    goto :goto_164

    .line 1188
    :cond_184
    iget-object v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    sub-int/2addr v12, v9

    iget v15, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v14

    sub-int/2addr v2, v11

    aput v2, v5, v12

    goto :goto_124

    :cond_18f
    if-ne v12, v11, :cond_29c

    move v11, v8

    move v12, v11

    move/from16 v14, v16

    .line 1193
    :goto_195
    iget v15, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    move/from16 v16, v9

    add-int/lit8 v9, v15, -0x1

    if-ge v11, v9, :cond_24c

    .line 1194
    iget-object v9, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v8, v9, v11

    add-int/lit8 v9, v14, 0x1

    .line 1195
    invoke-direct {v0, v7, v9}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->readScratch(Landroid/media/internal/exo/extractor/ExtractorInput;I)V

    .line 1196
    iget-object v15, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v15}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v15

    aget-byte v15, v15, v14

    if-eqz v15, :cond_245

    move v15, v8

    :goto_1b1
    if-ge v15, v10, :cond_20c

    rsub-int/lit8 v17, v15, 0x7

    move/from16 v18, v10

    shl-int v10, v16, v17

    move/from16 v17, v8

    .line 1203
    iget-object v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v8}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v8

    aget-byte v8, v8, v14

    and-int/2addr v8, v10

    if-eqz v8, :cond_200

    add-int/2addr v9, v15

    .line 1206
    invoke-direct {v0, v7, v9}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->readScratch(Landroid/media/internal/exo/extractor/ExtractorInput;I)V

    .line 1207
    iget-object v8, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v8}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v8

    add-int/lit8 v19, v14, 0x1

    aget-byte v8, v8, v14

    and-int/2addr v8, v13

    not-int v10, v10

    and-int/2addr v8, v10

    int-to-long v6, v8

    :goto_1d8
    move/from16 v8, v19

    if-ge v8, v9, :cond_1f0

    shl-long v6, v6, v18

    .line 1210
    iget-object v14, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v14}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v14

    add-int/lit8 v19, v8, 0x1

    aget-byte v8, v14, v8

    and-int/2addr v8, v13

    move/from16 v20, v11

    int-to-long v10, v8

    or-long/2addr v6, v10

    move/from16 v11, v20

    goto :goto_1d8

    :cond_1f0
    move/from16 v20, v11

    if-lez v20, :cond_1fe

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    const-wide/16 v10, 0x1

    shl-long v14, v10, v15

    sub-long/2addr v14, v10

    sub-long/2addr v6, v14

    :cond_1fe
    :goto_1fe
    move v14, v9

    goto :goto_215

    :cond_200
    move/from16 v20, v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p3

    move/from16 v8, v17

    move/from16 v10, v18

    const/4 v6, 0x2

    goto :goto_1b1

    :cond_20c
    move/from16 v17, v8

    move/from16 v18, v10

    move/from16 v20, v11

    const-wide/16 v6, 0x0

    goto :goto_1fe

    :goto_215
    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_23e

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-gtz v8, :cond_23e

    long-to-int v6, v6

    .line 1224
    iget-object v7, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v20, :cond_229

    goto :goto_22e

    :cond_229
    add-int/lit8 v11, v20, -0x1

    .line 1227
    aget v8, v7, v11

    add-int/2addr v6, v8

    :goto_22e
    aput v6, v7, v20

    add-int/2addr v12, v6

    add-int/lit8 v11, v20, 0x1

    move-object/from16 v7, p3

    move/from16 v9, v16

    move/from16 v8, v17

    move/from16 v10, v18

    const/4 v6, 0x2

    goto/16 :goto_195

    .line 1220
    :cond_23e
    const-string v0, "EBML lacing sample size out of range."

    invoke-static {v0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    .line 1197
    :cond_245
    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    :cond_24c
    move/from16 v17, v8

    move/from16 v18, v10

    .line 1230
    iget-object v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    add-int/lit8 v15, v15, -0x1

    iget v6, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v14

    sub-int/2addr v2, v12

    aput v2, v5, v15

    .line 1239
    :goto_25b
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    aget-byte v2, v2, v17

    shl-int/lit8 v2, v2, 0x8

    iget-object v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v16

    and-int/2addr v5, v13

    or-int/2addr v2, v5

    .line 1240
    iget-wide v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v7, v2

    invoke-direct {v0, v7, v8}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 1241
    iget v2, v3, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v10, 0x2

    if-eq v2, v10, :cond_291

    if-ne v1, v4, :cond_28e

    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 1243
    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    aget-byte v2, v2, v10

    const/16 v5, 0x80

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_28e

    goto :goto_291

    :cond_28e
    move/from16 v2, v17

    goto :goto_293

    :cond_291
    :goto_291
    move/from16 v2, v16

    .line 1244
    :goto_293
    iput v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1245
    iput v10, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    move/from16 v2, v17

    .line 1246
    iput v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_2b4

    .line 1234
    :cond_29c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected lacing value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    :cond_2b2
    move/from16 v16, v9

    :goto_2b4
    if-ne v1, v4, :cond_2e8

    .line 1252
    :goto_2b6
    iget v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v1, v2, :cond_2e4

    .line 1253
    iget-object v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v1, v2, v1

    move-object/from16 v7, p3

    invoke-direct {v0, v7, v3, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;I)I

    move-result v5

    .line 1254
    iget-wide v1, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v6, v3, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v4, v6

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v8, v4

    add-long/2addr v1, v8

    .line 1256
    iget v4, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v6, 0x0

    move-wide/from16 v21, v1

    move-object v1, v3

    move-wide/from16 v2, v21

    invoke-direct/range {v0 .. v6}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 1257
    iget v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    move-object v3, v1

    goto :goto_2b6

    :cond_2e4
    const/4 v2, 0x0

    .line 1259
    iput v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    :cond_2e8
    move-object/from16 v7, p3

    move-object v1, v3

    .line 1266
    :goto_2eb
    iget v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v2, v3, :cond_302

    .line 1267
    iget-object v3, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v4, v3, v2

    .line 1268
    invoke-direct {v0, v7, v1, v4}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;I)I

    move-result v4

    aput v4, v3, v2

    .line 1269
    iget v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_2eb

    :cond_302
    :goto_302
    return-void
.end method

.method protected blacklist endMasterElement(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 687
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInitialized()V

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_fc

    const/16 v0, 0xae

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d2

    const/16 v0, 0x4dbb

    const v2, 0x1c53bb6b

    if-eq p1, v0, :cond_b9

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_74

    const v0, 0x1549a966

    if-eq p1, v0, :cond_57

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_42

    if-eq p1, v2, :cond_29

    goto/16 :goto_101

    .line 708
    :cond_29
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_3d

    .line 709
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroid/media/internal/exo/util/LongArray;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroid/media/internal/exo/util/LongArray;

    invoke-direct {p0, v0, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->buildSeekMap(Landroid/media/internal/exo/util/LongArray;Landroid/media/internal/exo/util/LongArray;)Landroid/media/internal/exo/extractor/SeekMap;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    const/4 p1, 0x1

    .line 710
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    .line 714
    :cond_3d
    iput-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroid/media/internal/exo/util/LongArray;

    .line 715
    iput-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroid/media/internal/exo/util/LongArray;

    return-void

    .line 777
    :cond_42
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_50

    .line 781
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    return-void

    .line 778
    :cond_50
    const-string p0, "No valid tracks were found"

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 690
    :cond_57
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_67

    const-wide/32 v0, 0xf4240

    .line 692
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 694
    :cond_67
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_101

    .line 695
    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationUs:J

    return-void

    .line 757
    :cond_74
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 758
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_101

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez p0, :cond_83

    goto/16 :goto_101

    .line 759
    :cond_83
    const-string p0, "Combining encryption and compression is not supported"

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 744
    :cond_8a
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 745
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_101

    .line 746
    iget-object v0, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    if-eqz v0, :cond_b2

    .line 750
    new-instance v0, Landroid/media/internal/exo/drm/DrmInitData;

    new-instance v1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    sget-object v2, Landroid/media/internal/exo/C;->UUID_NIL:Ljava/util/UUID;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string v3, "video/webm"

    invoke-direct {v1, v2, v3, p0}, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    filled-new-array {v1}, [Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/exo/drm/DrmInitData;-><init>([Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)V

    iput-object v0, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    return-void

    .line 747
    :cond_b2
    const-string p0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 699
    :cond_b9
    iget p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_cb

    iget-wide v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_cb

    if-ne p1, v2, :cond_101

    .line 704
    iput-wide v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    return-void

    .line 700
    :cond_cb
    const-string p0, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 764
    :cond_d2
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {p1}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    .line 765
    iget-object v0, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    if-eqz v0, :cond_f5

    .line 769
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 770
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget v2, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {p1, v0, v2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Landroid/media/internal/exo/extractor/ExtractorOutput;I)V

    .line 771
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v2, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 774
    :cond_f2
    iput-object v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    return-void

    .line 766
    :cond_f5
    const-string p0, "CodecId is missing in TrackEntry element"

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 718
    :cond_fc
    iget p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_102

    :cond_101
    :goto_101
    return-void

    :cond_102
    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 724
    :goto_105
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v2, :cond_111

    .line 725
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_105

    .line 727
    :cond_111
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    .line 728
    # invokes: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V
    invoke-static {v3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->access$100(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;)V

    move v0, p1

    .line 729
    :goto_120
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v2, :cond_146

    .line 730
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v2, v3, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 731
    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockFlags:I

    if-nez v0, :cond_137

    .line 732
    iget-boolean v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    if-nez v6, :cond_137

    or-int/lit8 v2, v2, 0x1

    :cond_137
    move v6, v2

    .line 737
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v7, v2, v0

    sub-int v8, v1, v7

    move-object v2, p0

    .line 739
    invoke-direct/range {v2 .. v8}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;JIII)V

    add-int/lit8 v0, v0, 0x1

    move v1, v8

    goto :goto_120

    :cond_146
    move-object v2, p0

    .line 741
    iput p1, v2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void
.end method

.method protected blacklist floatElement(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_7b

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_77

    packed-switch p1, :pswitch_data_84

    packed-switch p1, :pswitch_data_9c

    return-void

    .line 1056
    :pswitch_f
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    return-void

    .line 1053
    :pswitch_17
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    return-void

    .line 1050
    :pswitch_1f
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    return-void

    .line 1047
    :pswitch_27
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    return-void

    .line 1044
    :pswitch_2f
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    return-void

    .line 1041
    :pswitch_37
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    return-void

    .line 1038
    :pswitch_3f
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    return-void

    .line 1035
    :pswitch_47
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    return-void

    .line 1032
    :pswitch_4f
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    return-void

    .line 1029
    :pswitch_57
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    return-void

    .line 1026
    :pswitch_5f
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    return-void

    .line 1023
    :pswitch_67
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    return-void

    .line 1020
    :pswitch_6f
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-float p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    return-void

    :cond_77
    double-to-long p1, p2

    .line 1014
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    return-void

    .line 1017
    :cond_7b
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    double-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x55d1
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_27
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x7673
        :pswitch_1f
        :pswitch_17
        :pswitch_f
    .end packed-switch
.end method

.method protected blacklist getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1334
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1335
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    return-object p0
.end method

.method protected blacklist getElementType(I)I
    .registers 2

    .line 0
    sparse-switch p1, :sswitch_data_10

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x5

    return p0

    :sswitch_7
    const/4 p0, 0x4

    return p0

    :sswitch_9
    const/4 p0, 0x1

    return p0

    :sswitch_b
    const/4 p0, 0x3

    return p0

    :sswitch_d
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xa5 -> :sswitch_7
        0xa6 -> :sswitch_9
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xee -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x41e4 -> :sswitch_9
        0x41e7 -> :sswitch_d
        0x41ed -> :sswitch_7
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x536e -> :sswitch_b
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x55ee -> :sswitch_d
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x75a1 -> :sswitch_9
        0x7670 -> :sswitch_9
        0x7671 -> :sswitch_d
        0x7672 -> :sswitch_7
        0x7673 -> :sswitch_5
        0x7674 -> :sswitch_5
        0x7675 -> :sswitch_5
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method protected blacklist handleBlockAddIDExtraData(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;Landroid/media/internal/exo/extractor/ExtractorInput;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    # getter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I
    invoke-static {p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->access$200(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;)I

    move-result p0

    const v0, 0x64767643

    if-eq p0, v0, :cond_17

    .line 1290
    # getter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I
    invoke-static {p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->access$200(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;)I

    move-result p0

    const v0, 0x64766343

    if-ne p0, v0, :cond_13

    goto :goto_17

    .line 1295
    :cond_13
    invoke-interface {p2, p3}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return-void

    .line 1291
    :cond_17
    :goto_17
    new-array p0, p3, [B

    iput-object p0, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    const/4 p1, 0x0

    .line 1292
    invoke-interface {p2, p0, p1, p3}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method protected blacklist handleBlockAdditionalData(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;ILandroid/media/internal/exo/extractor/ExtractorInput;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1d

    .line 1302
    const-string p2, "V_VP9"

    iget-object p1, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1303
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1304
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, p4}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 1305
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockAdditionalData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p3, p0, p1, p4}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    return-void

    .line 1308
    :cond_1d
    invoke-interface {p3, p4}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method

.method public final blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 2

    .line 454
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    return-void
.end method

.method protected blacklist integerElement(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/16 v0, 0x5031

    const/4 v1, 0x0

    .line 795
    const-string v2, " not supported"

    if-eq p1, v0, :cond_22a

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_20c

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_24a

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_2c8

    goto/16 :goto_230

    .line 976
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    return-void

    .line 973
    :pswitch_22
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    return-void

    .line 945
    :pswitch_2a
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 946
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v7, p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int p1, p2

    .line 947
    invoke-static {p1}, Landroid/media/internal/exo/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result p1

    if-eq p1, v0, :cond_230

    .line 949
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    return-void

    .line 953
    :pswitch_3d
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    .line 954
    invoke-static {p1}, Landroid/media/internal/exo/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result p1

    if-eq p1, v0, :cond_230

    .line 956
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    return-void

    .line 960
    :pswitch_4c
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_5b

    if-eq p1, v6, :cond_56

    goto/16 :goto_230

    .line 966
    :cond_56
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    return-void

    .line 963
    :cond_5b
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    return-void

    .line 816
    :sswitch_60
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    return-void

    .line 846
    :sswitch_63
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    return-void

    .line 979
    :sswitch_6b
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_88

    if-eq p1, v7, :cond_83

    if-eq p1, v6, :cond_7e

    if-eq p1, v5, :cond_79

    goto/16 :goto_230

    .line 991
    :cond_79
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    .line 988
    :cond_7e
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    .line 985
    :cond_83
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    .line 982
    :cond_88
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    .line 864
    :sswitch_8d
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    return-void

    .line 858
    :sswitch_95
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    return-void

    .line 855
    :sswitch_9c
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    return-void

    .line 849
    :sswitch_a3
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    return-void

    .line 840
    :sswitch_ab
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    cmp-long p1, p2, v3

    if-nez p1, :cond_b4

    move v0, v7

    :cond_b4
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    return-void

    .line 828
    :sswitch_b7
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    return-void

    .line 831
    :sswitch_bf
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    return-void

    .line 825
    :sswitch_c7
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    return-void

    :sswitch_cf
    long-to-int p2, p2

    .line 926
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    if-eqz p2, :cond_ee

    if-eq p2, v7, :cond_e9

    if-eq p2, v5, :cond_e4

    const/16 p1, 0xf

    if-eq p2, p1, :cond_df

    goto/16 :goto_230

    .line 938
    :cond_df
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    .line 935
    :cond_e4
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    .line 932
    :cond_e9
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    .line 929
    :cond_ee
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    .line 813
    :sswitch_f3
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    return-void

    :sswitch_f9
    cmp-long p0, p2, v3

    if-nez p0, :cond_ff

    goto/16 :goto_230

    .line 900
    :cond_ff
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "AESSettingsCipherMode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :sswitch_118
    const-wide/16 p0, 0x5

    cmp-long p0, p2, p0

    if-nez p0, :cond_120

    goto/16 :goto_230

    .line 893
    :cond_120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ContentEncAlgo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :sswitch_139
    cmp-long p0, p2, v3

    if-nez p0, :cond_13f

    goto/16 :goto_230

    .line 799
    :cond_13f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "EBMLReadVersion "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :sswitch_158
    cmp-long p0, p2, v3

    if-ltz p0, :cond_164

    const-wide/16 p0, 0x2

    cmp-long p0, p2, p0

    if-gtz p0, :cond_164

    goto/16 :goto_230

    .line 806
    :cond_164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DocTypeReadVersion "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :sswitch_17d
    const-wide/16 p0, 0x3

    cmp-long p0, p2, p0

    if-nez p0, :cond_185

    goto/16 :goto_230

    .line 886
    :cond_185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ContentCompAlgo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 852
    :sswitch_19e
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    # setter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I
    invoke-static {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->access$202(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;I)I

    return-void

    .line 867
    :sswitch_1a7
    iput-boolean v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    return-void

    .line 909
    :sswitch_1aa
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_230

    .line 910
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 914
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {p1, p2, p3}, Landroid/media/internal/exo/util/LongArray;->add(J)V

    .line 915
    iput-boolean v7, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    return-void

    :sswitch_1b9
    long-to-int p1, p2

    .line 998
    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    return-void

    .line 919
    :sswitch_1bd
    invoke-direct {p0, p2, p3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    return-void

    .line 834
    :sswitch_1c4
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->number:I

    return-void

    .line 822
    :sswitch_1cc
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->height:I

    return-void

    .line 905
    :sswitch_1d4
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 906
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroid/media/internal/exo/util/LongArray;

    invoke-direct {p0, p2, p3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/media/internal/exo/util/LongArray;->add(J)V

    return-void

    .line 819
    :sswitch_1e1
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->width:I

    return-void

    .line 861
    :sswitch_1e9
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    return-void

    .line 922
    :sswitch_1f1
    invoke-direct {p0, p2, p3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    return-void

    .line 837
    :sswitch_1f8
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    cmp-long p1, p2, v3

    if-nez p1, :cond_201

    move v0, v7

    :cond_201
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    return-void

    .line 843
    :sswitch_204
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    long-to-int p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->type:I

    return-void

    :cond_20c
    cmp-long p0, p2, v3

    if-nez p0, :cond_211

    goto :goto_230

    .line 879
    :cond_211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ContentEncodingScope "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :cond_22a
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_231

    :cond_230
    :goto_230
    return-void

    .line 872
    :cond_231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ContentEncodingOrder "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :sswitch_data_24a
    .sparse-switch
        0x83 -> :sswitch_204
        0x88 -> :sswitch_1f8
        0x9b -> :sswitch_1f1
        0x9f -> :sswitch_1e9
        0xb0 -> :sswitch_1e1
        0xb3 -> :sswitch_1d4
        0xba -> :sswitch_1cc
        0xd7 -> :sswitch_1c4
        0xe7 -> :sswitch_1bd
        0xee -> :sswitch_1b9
        0xf1 -> :sswitch_1aa
        0xfb -> :sswitch_1a7
        0x41e7 -> :sswitch_19e
        0x4254 -> :sswitch_17d
        0x4285 -> :sswitch_158
        0x42f7 -> :sswitch_139
        0x47e1 -> :sswitch_118
        0x47e8 -> :sswitch_f9
        0x53ac -> :sswitch_f3
        0x53b8 -> :sswitch_cf
        0x54b0 -> :sswitch_c7
        0x54b2 -> :sswitch_bf
        0x54ba -> :sswitch_b7
        0x55aa -> :sswitch_ab
        0x55ee -> :sswitch_a3
        0x56aa -> :sswitch_9c
        0x56bb -> :sswitch_95
        0x6264 -> :sswitch_8d
        0x7671 -> :sswitch_6b
        0x23e383 -> :sswitch_63
        0x2ad7b1 -> :sswitch_60
    .end sparse-switch

    :pswitch_data_2c8
    .packed-switch 0x55b9
        :pswitch_4c
        :pswitch_3d
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
    .end packed-switch
.end method

.method protected blacklist isLevel1Element(I)Z
    .registers 2

    .line 0
    const p0, 0x1549a966

    if-eq p1, p0, :cond_17

    const p0, 0x1f43b675

    if-eq p1, p0, :cond_17

    const p0, 0x1c53bb6b

    if-eq p1, p0, :cond_17

    const p0, 0x1654ae6b

    if-ne p1, p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public final blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 477
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    const/4 v1, 0x1

    move v2, v1

    :cond_5
    if-eqz v2, :cond_1e

    .line 479
    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    if-nez v3, :cond_1e

    .line 480
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->reader:Landroid/media/internal/exo/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Landroid/media/internal/exo/extractor/mkv/EbmlReader;->read(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 481
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Landroid/media/internal/exo/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_1e
    if-nez v2, :cond_3b

    .line 486
    :goto_20
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_39

    .line 487
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    .line 488
    # invokes: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V
    invoke-static {p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->access$100(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;)V

    .line 489
    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_39
    const/4 p0, -0x1

    return p0

    :cond_3b
    return v0
.end method

.method public blacklist seek(JJ)V
    .registers 5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 460
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 p1, 0x0

    .line 461
    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 462
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->reader:Landroid/media/internal/exo/extractor/mkv/EbmlReader;

    invoke-interface {p2}, Landroid/media/internal/exo/extractor/mkv/EbmlReader;->reset()V

    .line 463
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->reset()V

    .line 464
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    .line 465
    :goto_17
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_2d

    .line 466
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_2d
    return-void
.end method

.method public final blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    new-instance p0, Landroid/media/internal/exo/extractor/mkv/Sniffer;

    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/Sniffer;->sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method

.method protected blacklist startMasterElement(IJJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 624
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->assertInitialized()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_95

    const/16 v0, 0xae

    if-eq p1, v0, :cond_8d

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_84

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7d

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_76

    const v0, 0x18538067

    if-eq p1, v0, :cond_5e

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_4f

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_2f

    goto :goto_4e

    .line 647
    :cond_2f
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_4e

    .line 649
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz p1, :cond_40

    iget-wide p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_40

    .line 651
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    return-void

    .line 655
    :cond_40
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance p2, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    iget-wide p3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {p2, p3, p4}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 656
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    :cond_4e
    :goto_4e
    return-void

    .line 640
    :cond_4f
    new-instance p1, Landroid/media/internal/exo/util/LongArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/LongArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroid/media/internal/exo/util/LongArray;

    .line 641
    new-instance p1, Landroid/media/internal/exo/util/LongArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/LongArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroid/media/internal/exo/util/LongArray;

    return-void

    .line 627
    :cond_5e
    iget-wide v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_71

    cmp-long p1, v3, p2

    if-nez p1, :cond_69

    goto :goto_71

    .line 629
    :cond_69
    const-string p0, "Multiple Segment elements not supported"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 632
    :cond_71
    :goto_71
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 633
    iput-wide p4, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    return-void

    .line 673
    :cond_76
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    return-void

    .line 667
    :cond_7d
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    return-void

    :cond_84
    const/4 p1, -0x1

    .line 636
    iput p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 637
    iput-wide v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    return-void

    .line 644
    :cond_8a
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    return-void

    .line 670
    :cond_8d
    new-instance p1, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->currentTrack:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    return-void

    .line 661
    :cond_95
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    return-void
.end method

.method protected blacklist stringElement(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4f

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_21

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1a

    const v0, 0x22b59c

    if-eq p1, v0, :cond_12

    goto :goto_4e

    .line 1085
    :cond_12
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    # setter for: Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;
    invoke-static {p0, p2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->access$302(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 1079
    :cond_1a
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    return-void

    .line 1073
    :cond_21
    const-string p0, "webm"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    const-string p0, "matroska"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_4e

    .line 1074
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DocType "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :cond_4e
    :goto_4e
    return-void

    .line 1082
    :cond_4f
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p0

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    return-void
.end method
