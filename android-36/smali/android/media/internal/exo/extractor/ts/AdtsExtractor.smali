.class public final Landroid/media/internal/exo/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;


# instance fields
.field private blacklist averageFrameSize:I

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist firstFramePosition:J

.field private blacklist firstSampleTimestampUs:J

.field private final blacklist flags:I

.field private blacklist hasCalculatedAverageFrameSize:Z

.field private blacklist hasOutputSeekMap:Z

.field private final blacklist packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

.field private final blacklist scratch:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist scratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

.field private blacklist startedPacket:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x1

    .line 126
    :cond_9
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->flags:I

    .line 127
    new-instance p1, Landroid/media/internal/exo/extractor/ts/AdtsReader;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;-><init>(Z)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

    .line 128
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 129
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->averageFrameSize:I

    const-wide/16 v0, -0x1

    .line 130
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->firstFramePosition:J

    .line 132
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 133
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    return-void
.end method

.method private blacklist calculateAverageFrameSize(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    .line 292
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 293
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 294
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    .line 296
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->peekId3Header(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    :cond_18
    const/4 v1, 0x0

    move v2, v1

    :cond_1a
    const/4 v5, 0x1

    .line 302
    :try_start_1b
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 303
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x2

    .line 302
    invoke-interface {p1, v6, v1, v7, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 304
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 305
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 306
    invoke-static {v6}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v6

    if-nez v6, :cond_3a

    goto :goto_77

    .line 313
    :cond_3a
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 314
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x4

    .line 313
    invoke-interface {p1, v6, v1, v7, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v6

    if-nez v6, :cond_48

    goto :goto_76

    .line 317
    :cond_48
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 318
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_6c

    int-to-long v7, v6

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_63

    goto :goto_6b

    :cond_63
    add-int/lit8 v6, v6, -0x6

    .line 329
    invoke-interface {p1, v6, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result v6

    if-nez v6, :cond_1a

    :goto_6b
    goto :goto_76

    .line 321
    :cond_6c
    iput-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    .line 322
    const-string v1, "Malformed ADTS stream"

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v1

    throw v1
    :try_end_76
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_76} :catch_76

    :catch_76
    :cond_76
    :goto_76
    move v1, v2

    .line 340
    :goto_77
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    if-lez v1, :cond_82

    int-to-long v0, v1

    .line 342
    div-long/2addr v3, v0

    long-to-int p1, v3

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->averageFrameSize:I

    goto :goto_84

    .line 344
    :cond_82
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 346
    :goto_84
    iput-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    return-void
.end method

.method private static blacklist getBitrateFromFrameSize(IJ)I
    .registers 7

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 363
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private blacklist getConstantBitrateSeekMap(JZ)Landroid/media/internal/exo/extractor/SeekMap;
    .registers 15

    .line 350
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->averageFrameSize:I

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

    invoke-virtual {v1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v8

    .line 351
    new-instance v3, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->firstFramePosition:J

    iget v9, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->averageFrameSize:I

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-object v3
.end method

.method private blacklist maybeOutputSeekMap(JZ)V
    .registers 11

    .line 264
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_5

    goto :goto_26

    .line 268
    :cond_5
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->averageFrameSize:I

    if-lez v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_27

    .line 270
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

    .line 271
    invoke-virtual {v5}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_27

    if-nez p3, :cond_27

    :goto_26
    return-void

    :cond_27
    if-eqz v0, :cond_44

    .line 278
    iget-object p3, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

    invoke-virtual {p3}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v5

    cmp-long p3, v5, v3

    if-eqz p3, :cond_44

    .line 279
    iget-object p3, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3c

    move v2, v1

    .line 280
    :cond_3c
    invoke-direct {p0, p1, p2, v2}, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->getConstantBitrateSeekMap(JZ)Landroid/media/internal/exo/extractor/SeekMap;

    move-result-object p1

    .line 279
    invoke-interface {p3, p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    goto :goto_4e

    .line 283
    :cond_44
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance p2, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    invoke-direct {p2, v3, v4}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 285
    :goto_4e
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    return-void
.end method

.method private blacklist peekId3Header(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 244
    :goto_2
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 245
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 246
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_2f

    .line 254
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 255
    invoke-interface {p1, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 256
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->firstFramePosition:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_2e

    int-to-long v2, v1

    .line 257
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->firstFramePosition:J

    :cond_2e
    return v1

    .line 249
    :cond_2f
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 250
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 252
    invoke-interface {p1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_2
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 5

    .line 189
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    .line 190
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

    new-instance v0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 191
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {p2}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 211
    iget p2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->flags:I

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    if-nez v2, :cond_19

    and-int/2addr p2, v3

    if-eqz p2, :cond_1c

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-eqz p2, :cond_1c

    .line 216
    :cond_19
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->calculateAverageFrameSize(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    .line 219
    :cond_1c
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v2, 0x800

    const/4 v4, 0x0

    invoke-interface {p1, p2, v4, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2e

    move v2, v3

    goto :goto_2f

    :cond_2e
    move v2, v4

    .line 221
    :goto_2f
    invoke-direct {p0, v0, v1, v2}, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->maybeOutputSeekMap(JZ)V

    if-eqz v2, :cond_35

    return p2

    .line 227
    :cond_35
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 228
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 230
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez p1, :cond_4d

    .line 232
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    const/4 p2, 0x4

    invoke-virtual {p1, v0, v1, p2}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->packetStarted(JI)V

    .line 233
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 237
    :cond_4d
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;)V

    return v4
.end method

.method public blacklist seek(JJ)V
    .registers 5

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 197
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->reader:Landroid/media/internal/exo/extractor/ts/AdtsReader;

    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->seek()V

    .line 198
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->peekId3Header(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 148
    :cond_8
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 149
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 150
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 151
    invoke-static {v5}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v5

    if-nez v5, :cond_2e

    add-int/lit8 v3, v3, 0x1

    .line 157
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 158
    invoke-interface {p1, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    :goto_2b
    move v2, v1

    move v4, v2

    goto :goto_62

    :cond_2e
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_38

    const/16 v7, 0xbc

    if-le v4, v7, :cond_38

    return v5

    .line 165
    :cond_38
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {p1, v5, v1, v6}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 166
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 167
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsExtractor;->scratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_5c

    add-int/lit8 v3, v3, 0x1

    .line 174
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 175
    invoke-interface {p1, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_2b

    :cond_5c
    add-int/lit8 v6, v5, -0x6

    .line 177
    invoke-interface {p1, v6}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    add-int/2addr v4, v5

    :goto_62
    sub-int v5, v3, v0

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_8

    return v1
.end method
