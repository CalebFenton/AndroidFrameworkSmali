.class public final Landroid/media/internal/exo/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# instance fields
.field private blacklist formatId:Ljava/lang/String;

.field private blacklist frameBytesRead:I

.field private blacklist frameDurationUs:J

.field private blacklist frameSize:I

.field private blacklist hasOutputFormat:Z

.field private final blacklist header:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

.field private final blacklist headerScratch:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist language:Ljava/lang/String;

.field private blacklist lastByteWasFF:Z

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist state:I

.field private blacklist timeUs:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->state:I

    .line 69
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->headerScratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 70
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 71
    new-instance v0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    invoke-direct {v0}, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->header:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->timeUs:J

    .line 73
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    return-void
.end method

.method private blacklist findHeader(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 10

    .line 136
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 138
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_46

    .line 140
    aget-byte v3, v0, v1

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1a

    move v4, v7

    goto :goto_1b

    :cond_1a
    move v4, v6

    .line 141
    :goto_1b
    iget-boolean v5, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v5, :cond_27

    and-int/lit16 v3, v3, 0xe0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_27

    move v3, v7

    goto :goto_28

    :cond_27
    move v3, v6

    .line 142
    :goto_28
    iput-boolean v4, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v3, :cond_43

    add-int/lit8 v2, v1, 0x1

    .line 144
    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 146
    iput-boolean v6, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 147
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->headerScratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v7

    const/4 p1, 0x2

    .line 148
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 149
    iput v7, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->state:I

    return-void

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 153
    :cond_46
    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private blacklist readFrameRemainder(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 9

    .line 226
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 227
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 228
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 229
    iget v4, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge p1, v4, :cond_1c

    return-void

    .line 234
    :cond_1c
    iget-wide v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->timeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v5

    if-eqz p1, :cond_36

    .line 235
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 236
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_36
    const/4 p1, 0x0

    .line 238
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 239
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method

.method private blacklist readHeaderRemainder(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 9

    .line 174
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v2, 0x4

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 175
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->headerScratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v1, v3, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 176
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge p1, v2, :cond_20

    return-void

    .line 182
    :cond_20
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->headerScratch:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 183
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->header:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->headerScratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3a

    .line 186
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 187
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->state:I

    return-void

    .line 191
    :cond_3a
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->header:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v3, p1, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    iput v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameSize:I

    .line 192
    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v3, :cond_8b

    .line 193
    iget v3, p1, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    iget p1, p1, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v5, p1

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 194
    new-instance p1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->header:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget-object v3, v3, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 197
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    const/16 v3, 0x1000

    .line 198
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/Format$Builder;->setMaxInputSize(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->header:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v3, v3, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->channels:I

    .line 199
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->header:Landroid/media/internal/exo/audio/MpegAudioUtil$Header;

    iget v3, v3, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 200
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 201
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    .line 203
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v3, p1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 204
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 207
    :cond_8b
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->headerScratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 208
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->headerScratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {p1, v0, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    const/4 p1, 0x2

    .line 209
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 4

    .line 100
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :goto_5
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_27

    .line 102
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->state:I

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 110
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->readFrameRemainder(Landroid/media/internal/exo/util/ParsableByteArray;)V

    goto :goto_5

    .line 113
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 107
    :cond_1f
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->readHeaderRemainder(Landroid/media/internal/exo/util/ParsableByteArray;)V

    goto :goto_5

    .line 104
    :cond_23
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->findHeader(Landroid/media/internal/exo/util/ParsableByteArray;)V

    goto :goto_5

    :cond_27
    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 86
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 87
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

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

    .line 94
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_b
    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->state:I

    .line 79
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 80
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method
