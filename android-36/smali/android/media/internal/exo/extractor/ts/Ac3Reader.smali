.class public final Landroid/media/internal/exo/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# instance fields
.field private blacklist bytesRead:I

.field private blacklist format:Landroid/media/internal/exo/Format;

.field private blacklist formatId:Ljava/lang/String;

.field private final blacklist headerScratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

.field private final blacklist headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist language:Ljava/lang/String;

.field private blacklist lastByteWas0B:Z

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist sampleDurationUs:J

.field private blacklist sampleSize:I

.field private blacklist state:I

.field private blacklist timeUs:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    .line 86
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v0, v0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->timeUs:J

    .line 89
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    return-void
.end method

.method private blacklist continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 168
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 170
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist parseHeader()V
    .registers 5

    .line 201
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 202
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBits:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-static {v0}, Landroid/media/internal/exo/audio/Ac3Util;->parseAc3SyncframeInfo(Landroid/media/internal/exo/util/ParsableBitArray;)Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;

    move-result-object v0

    .line 203
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->format:Landroid/media/internal/exo/Format;

    if-eqz v1, :cond_26

    iget v2, v0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->channelCount:I

    iget v3, v1, Landroid/media/internal/exo/Format;->channelCount:I

    if-ne v2, v3, :cond_26

    iget v2, v0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->sampleRate:I

    iget v3, v1, Landroid/media/internal/exo/Format;->sampleRate:I

    if-ne v2, v3, :cond_26

    iget-object v2, v0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    iget-object v1, v1, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    .line 206
    invoke-static {v2, v1}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 207
    :cond_26
    new-instance v1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->formatId:Ljava/lang/String;

    .line 209
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->channelCount:I

    .line 211
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->sampleRate:I

    .line 212
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->format:Landroid/media/internal/exo/Format;

    .line 215
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v2, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 217
    :cond_54
    iget v1, v0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->sampleSize:I

    .line 220
    iget v0, v0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->sampleCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->format:Landroid/media/internal/exo/Format;

    iget v2, v2, Landroid/media/internal/exo/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->sampleDurationUs:J

    return-void
.end method

.method private blacklist skipToNextSync(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 7

    .line 182
    :goto_0
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_29

    .line 183
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_18

    .line 184
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_15

    move v1, v3

    :cond_15
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    .line 187
    :cond_18
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_23

    .line 189
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    return v3

    :cond_23
    if-ne v0, v2, :cond_26

    move v1, v3

    .line 192
    :cond_26
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_29
    return v1
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 12

    .line 116
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_8f

    .line 118
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6f

    if-eq v0, v3, :cond_4f

    if-eq v0, v2, :cond_17

    goto :goto_5

    .line 136
    :cond_17
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->sampleSize:I

    iget v3, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 138
    iget v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    .line 139
    iget v7, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v2, v7, :cond_5

    .line 140
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4c

    .line 141
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 142
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->timeUs:J

    .line 144
    :cond_4c
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->state:I

    goto :goto_5

    .line 128
    :cond_4f
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->parseHeader()V

    .line 130
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 131
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v0, v1, v3}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 132
    iput v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->state:I

    goto :goto_5

    .line 120
    :cond_6f
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->skipToNextSync(Landroid/media/internal/exo/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    iput v3, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->state:I

    .line 122
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 123
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->headerScratchBytes:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 124
    iput v2, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    goto/16 :goto_5

    :cond_8f
    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 102
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 103
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->formatId:Ljava/lang/String;

    .line 104
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

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

    .line 110
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->timeUs:J

    :cond_b
    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->state:I

    .line 95
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->bytesRead:I

    .line 96
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/Ac3Reader;->timeUs:J

    return-void
.end method
