.class public final Landroid/media/internal/exo/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# instance fields
.field private blacklist bytesRead:I

.field private blacklist format:Landroid/media/internal/exo/Format;

.field private blacklist formatId:Ljava/lang/String;

.field private final blacklist headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist language:Ljava/lang/String;

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist sampleDurationUs:J

.field private blacklist sampleSize:I

.field private blacklist state:I

.field private blacklist syncBytes:I

.field private blacklist timeUs:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->timeUs:J

    .line 70
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->language:Ljava/lang/String;

    return-void
.end method

.method private blacklist continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 146
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 148
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist parseHeader()V
    .registers 5

    .line 180
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 181
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->format:Landroid/media/internal/exo/Format;

    if-nez v1, :cond_1a

    .line 182
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->language:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/internal/exo/audio/DtsUtil;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format;

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->format:Landroid/media/internal/exo/Format;

    .line 183
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v2, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 185
    :cond_1a
    invoke-static {v0}, Landroid/media/internal/exo/audio/DtsUtil;->getDtsFrameSize([B)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->sampleSize:I

    .line 190
    invoke-static {v0}, Landroid/media/internal/exo/audio/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->format:Landroid/media/internal/exo/Format;

    iget v2, v2, Landroid/media/internal/exo/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->sampleDurationUs:J

    return-void
.end method

.method private blacklist skipToNextSync(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 7

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_45

    .line 161
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->syncBytes:I

    .line 162
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->syncBytes:I

    .line 163
    invoke-static {v0}, Landroid/media/internal/exo/audio/DtsUtil;->isSyncWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p1

    .line 165
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    .line 166
    aput-byte v2, p1, v3

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    .line 167
    aput-byte v2, p1, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x3

    .line 168
    aput-byte v0, p1, v2

    const/4 p1, 0x4

    .line 169
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    .line 170
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->syncBytes:I

    return v3

    :cond_45
    return v1
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 12

    .line 97
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_7d

    .line 99
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_74

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_54

    if-ne v0, v3, :cond_4e

    .line 114
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->sampleSize:I

    iget v3, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 116
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    .line 117
    iget v7, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->sampleSize:I

    if-ne v1, v7, :cond_5

    .line 118
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->timeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4b

    .line 119
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 120
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->timeUs:J

    iget-wide v3, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->timeUs:J

    .line 122
    :cond_4b
    iput v2, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->state:I

    goto :goto_5

    .line 126
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 106
    :cond_54
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/DtsReader;->continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/DtsReader;->parseHeader()V

    .line 108
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 109
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, v2, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 110
    iput v3, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->state:I

    goto :goto_5

    .line 101
    :cond_74
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/DtsReader;->skipToNextSync(Landroid/media/internal/exo/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->state:I

    goto :goto_5

    :cond_7d
    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 83
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 84
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    return-void
.end method

.method public blacklist packetFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist packetStarted(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    .line 91
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->timeUs:J

    :cond_b
    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->state:I

    .line 76
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->bytesRead:I

    .line 77
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->syncBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method
