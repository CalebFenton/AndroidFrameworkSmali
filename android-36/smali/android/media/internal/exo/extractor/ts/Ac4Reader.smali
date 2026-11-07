.class public final Landroid/media/internal/exo/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# instance fields
.field private blacklist bytesRead:I

.field private blacklist format:Landroid/media/internal/exo/Format;

.field private blacklist formatId:Ljava/lang/String;

.field private blacklist hasCRC:Z

.field private final blacklist headerScratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

.field private final blacklist headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist language:Ljava/lang/String;

.field private blacklist lastByteWasAC:Z

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist sampleDurationUs:J

.field private blacklist sampleSize:I

.field private blacklist state:I

.field private blacklist timeUs:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    .line 85
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v0, v0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->state:I

    .line 87
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    .line 88
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 89
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->timeUs:J

    .line 91
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    return-void
.end method

.method private blacklist continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 171
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 172
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 173
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist parseHeader()V
    .registers 6

    .line 203
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 204
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-static {v0}, Landroid/media/internal/exo/audio/Ac4Util;->parseAc4SyncframeInfo(Landroid/media/internal/exo/util/ParsableBitArray;)Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 205
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->format:Landroid/media/internal/exo/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_26

    iget v3, v0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    iget v4, v1, Landroid/media/internal/exo/Format;->channelCount:I

    if-ne v3, v4, :cond_26

    iget v3, v0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget v4, v1, Landroid/media/internal/exo/Format;->sampleRate:I

    if-ne v3, v4, :cond_26

    iget-object v1, v1, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 209
    :cond_26
    new-instance v1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 211
    invoke-virtual {v1, v3}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 213
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 214
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 215
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->format:Landroid/media/internal/exo/Format;

    .line 217
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v2, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 219
    :cond_52
    iget v1, v0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->sampleSize:I

    .line 222
    iget v0, v0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->format:Landroid/media/internal/exo/Format;

    iget v2, v2, Landroid/media/internal/exo/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->sampleDurationUs:J

    return-void
.end method

.method private blacklist skipToNextSync(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 7

    .line 185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_31

    .line 186
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_18

    .line 187
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_15

    move v1, v3

    :cond_15
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    goto :goto_0

    .line 190
    :cond_18
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v1

    .line 191
    :goto_21
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_2b

    if-ne v0, v4, :cond_0

    :cond_2b
    if-ne v0, v4, :cond_2e

    move v1, v3

    .line 193
    :cond_2e
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->hasCRC:Z

    return v3

    :cond_31
    return v1
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 12

    .line 119
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_97

    .line 121
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6f

    if-eq v0, v3, :cond_4f

    if-eq v0, v2, :cond_17

    goto :goto_5

    .line 139
    :cond_17
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->sampleSize:I

    iget v3, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 140
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 141
    iget v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    .line 142
    iget v7, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v2, v7, :cond_5

    .line 143
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4c

    .line 144
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 145
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->timeUs:J

    .line 147
    :cond_4c
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->state:I

    goto :goto_5

    .line 131
    :cond_4f
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->parseHeader()V

    .line 133
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 134
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, v1, v3}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 135
    iput v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->state:I

    goto :goto_5

    .line 123
    :cond_6f
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->skipToNextSync(Landroid/media/internal/exo/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    iput v3, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->state:I

    .line 125
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v4, -0x54

    aput-byte v4, v0, v1

    .line 126
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v1, :cond_8e

    const/16 v1, 0x41

    goto :goto_90

    :cond_8e
    const/16 v1, 0x40

    :goto_90
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 127
    iput v2, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_5

    :cond_97
    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 105
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 106
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

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

    .line 113
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->timeUs:J

    :cond_b
    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->state:I

    .line 97
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->bytesRead:I

    .line 98
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 99
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 100
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method
