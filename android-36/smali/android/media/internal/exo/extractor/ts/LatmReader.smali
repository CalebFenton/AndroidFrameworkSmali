.class public final Landroid/media/internal/exo/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# instance fields
.field private blacklist audioMuxVersionA:I

.field private blacklist bytesRead:I

.field private blacklist channelCount:I

.field private blacklist codecs:Ljava/lang/String;

.field private blacklist format:Landroid/media/internal/exo/Format;

.field private blacklist formatId:Ljava/lang/String;

.field private blacklist frameLengthType:I

.field private final blacklist language:Ljava/lang/String;

.field private blacklist numSubframes:I

.field private blacklist otherDataLenBits:J

.field private blacklist otherDataPresent:Z

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private final blacklist sampleBitArray:Landroid/media/internal/exo/util/ParsableBitArray;

.field private final blacklist sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist sampleDurationUs:J

.field private blacklist sampleRateHz:I

.field private blacklist sampleSize:I

.field private blacklist secondHeaderByte:I

.field private blacklist state:I

.field private blacklist streamMuxRead:Z

.field private blacklist timeUs:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 79
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 80
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleBitArray:Landroid/media/internal/exo/util/ParsableBitArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method private static blacklist latmGetValue(Landroid/media/internal/exo/util/ParsableBitArray;)J
    .registers 3

    const/4 v0, 0x2

    .line 325
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 326
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist parseAudioMuxElement(Landroid/media/internal/exo/util/ParsableBitArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 164
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/LatmReader;->parseStreamMuxConfig(Landroid/media/internal/exo/util/ParsableBitArray;)V

    goto :goto_12

    .line 165
    :cond_d
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v0, :cond_12

    goto :goto_2c

    .line 169
    :cond_12
    :goto_12
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->audioMuxVersionA:I

    const/4 v1, 0x0

    if-nez v0, :cond_32

    .line 170
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->numSubframes:I

    if-nez v0, :cond_2d

    .line 173
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/LatmReader;->parsePayloadLengthInfo(Landroid/media/internal/exo/util/ParsableBitArray;)I

    move-result v0

    .line 174
    invoke-direct {p0, p1, v0}, Landroid/media/internal/exo/extractor/ts/LatmReader;->parsePayloadMux(Landroid/media/internal/exo/util/ParsableBitArray;I)V

    .line 175
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v0, :cond_2c

    .line 176
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_2c
    :goto_2c
    return-void

    .line 171
    :cond_2d
    invoke-static {v1, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 180
    :cond_32
    invoke-static {v1, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist parseAudioSpecificConfig(Landroid/media/internal/exo/util/ParsableBitArray;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/4 v1, 0x1

    .line 277
    invoke-static {p1, v1}, Landroid/media/internal/exo/audio/AacUtil;->parseAudioSpecificConfig(Landroid/media/internal/exo/util/ParsableBitArray;Z)Landroid/media/internal/exo/audio/AacUtil$Config;

    move-result-object v1

    .line 278
    iget-object v2, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 279
    iget v2, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->sampleRateHz:I

    iput v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleRateHz:I

    .line 280
    iget v1, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->channelCount:I

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->channelCount:I

    .line 281
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->bitsLeft()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private blacklist parseFrameLength(Landroid/media/internal/exo/util/ParsableBitArray;)V
    .registers 5

    const/4 v0, 0x3

    .line 253
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->frameLengthType:I

    if-eqz v1, :cond_2f

    const/4 p0, 0x1

    if-eq v1, p0, :cond_29

    const/4 v2, 0x6

    if-eq v1, v0, :cond_25

    const/4 v0, 0x4

    if-eq v1, v0, :cond_25

    const/4 v0, 0x5

    if-eq v1, v0, :cond_25

    if-eq v1, v2, :cond_21

    const/4 v0, 0x7

    if-ne v1, v0, :cond_1b

    goto :goto_21

    .line 271
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 268
    :cond_21
    :goto_21
    invoke-virtual {p1, p0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 264
    :cond_25
    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_29
    const/16 p0, 0x9

    .line 259
    invoke-virtual {p1, p0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_2f
    const/16 p0, 0x8

    .line 256
    invoke-virtual {p1, p0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    return-void
.end method

.method private blacklist parsePayloadLengthInfo(Landroid/media/internal/exo/util/ParsableBitArray;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 287
    iget p0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->frameLengthType:I

    if-nez p0, :cond_11

    const/4 p0, 0x0

    :cond_5
    const/16 v0, 0x8

    .line 290
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/2addr p0, v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_5

    return p0

    :cond_11
    const/4 p0, 0x0

    .line 295
    invoke-static {p0, p0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist parsePayloadMux(Landroid/media/internal/exo/util/ParsableBitArray;I)V
    .registers 11

    .line 302
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->getPosition()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_10

    .line 305
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    goto :goto_21

    .line 309
    :cond_10
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits([BII)V

    .line 310
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 312
    :goto_21
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {p1, v0, p2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 313
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->timeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v0

    if-eqz p1, :cond_43

    .line 314
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move v5, p2

    invoke-interface/range {v1 .. v7}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 315
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->timeUs:J

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->timeUs:J

    :cond_43
    return-void
.end method

.method private blacklist parseStreamMuxConfig(Landroid/media/internal/exo/util/ParsableBitArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    .line 188
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    iput v3, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->audioMuxVersionA:I

    const/4 v4, 0x0

    if-nez v3, :cond_e2

    if-ne v1, v0, :cond_18

    .line 191
    invoke-static {p1}, Landroid/media/internal/exo/extractor/ts/LatmReader;->latmGetValue(Landroid/media/internal/exo/util/ParsableBitArray;)J

    .line 193
    :cond_18
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_dd

    const/4 v3, 0x6

    .line 196
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iput v3, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->numSubframes:I

    const/4 v3, 0x4

    .line 197
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v5, 0x3

    .line 198
    invoke-virtual {p1, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-nez v3, :cond_d8

    if-nez v5, :cond_d8

    const/16 v3, 0x8

    if-nez v1, :cond_98

    .line 203
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->getPosition()I

    move-result v4

    .line 204
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/LatmReader;->parseAudioSpecificConfig(Landroid/media/internal/exo/util/ParsableBitArray;)I

    move-result v5

    .line 205
    invoke-virtual {p1, v4}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    add-int/lit8 v4, v5, 0x7

    .line 206
    div-int/2addr v4, v3

    new-array v4, v4, [B

    .line 207
    invoke-virtual {p1, v4, v2, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits([BII)V

    .line 208
    new-instance v2, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v2}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 210
    invoke-virtual {v2, v5}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    const-string v5, "audio/mp4a-latm"

    .line 211
    invoke-virtual {v2, v5}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v5}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    iget v5, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->channelCount:I

    .line 213
    invoke-virtual {v2, v5}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    iget v5, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleRateHz:I

    .line 214
    invoke-virtual {v2, v5}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    .line 215
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 216
    invoke-virtual {v2, v4}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v2

    .line 218
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->format:Landroid/media/internal/exo/Format;

    invoke-virtual {v2, v4}, Landroid/media/internal/exo/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 219
    iput-object v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->format:Landroid/media/internal/exo/Format;

    .line 220
    iget v4, v2, Landroid/media/internal/exo/Format;->sampleRate:I

    int-to-long v4, v4

    const-wide/32 v6, 0x3d090000

    div-long/2addr v6, v4

    iput-wide v6, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 221
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v4, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    goto :goto_a5

    .line 224
    :cond_98
    invoke-static {p1}, Landroid/media/internal/exo/extractor/ts/LatmReader;->latmGetValue(Landroid/media/internal/exo/util/ParsableBitArray;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 225
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/LatmReader;->parseAudioSpecificConfig(Landroid/media/internal/exo/util/ParsableBitArray;)I

    move-result v4

    sub-int/2addr v2, v4

    .line 226
    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 228
    :cond_a5
    :goto_a5
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/LatmReader;->parseFrameLength(Landroid/media/internal/exo/util/ParsableBitArray;)V

    .line 229
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->otherDataPresent:Z

    const-wide/16 v4, 0x0

    .line 230
    iput-wide v4, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->otherDataLenBits:J

    if-eqz v2, :cond_ce

    if-ne v1, v0, :cond_bd

    .line 233
    invoke-static {p1}, Landroid/media/internal/exo/extractor/ts/LatmReader;->latmGetValue(Landroid/media/internal/exo/util/ParsableBitArray;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_ce

    .line 237
    :cond_bd
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 238
    iget-wide v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->otherDataLenBits:J

    shl-long/2addr v1, v3

    invoke-virtual {p1, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->otherDataLenBits:J

    if-nez v0, :cond_bd

    .line 242
    :cond_ce
    :goto_ce
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result p0

    if-eqz p0, :cond_d7

    .line 244
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_d7
    return-void

    .line 200
    :cond_d8
    invoke-static {v4, v4}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 194
    :cond_dd
    invoke-static {v4, v4}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 248
    :cond_e2
    invoke-static {v4, v4}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist resetBufferForSize(I)V
    .registers 3

    .line 320
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 321
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleBitArray:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/internal/exo/util/ParsableBitArray;->reset([B)V

    return-void
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_8b

    .line 110
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->state:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_81

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_6d

    const/4 v1, 0x3

    if-eq v0, v3, :cond_4d

    if-ne v0, v1, :cond_47

    .line 134
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleSize:I

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleBitArray:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object v1, v1, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 136
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->bytesRead:I

    .line 137
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleSize:I

    if-ne v1, v0, :cond_5

    .line 138
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleBitArray:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 139
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleBitArray:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/LatmReader;->parseAudioMuxElement(Landroid/media/internal/exo/util/ParsableBitArray;)V

    .line 140
    iput v4, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 144
    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 126
    :cond_4d
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleSize:I

    .line 127
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleDataBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    array-length v2, v2

    if-le v0, v2, :cond_68

    .line 128
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->sampleSize:I

    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/LatmReader;->resetBufferForSize(I)V

    .line 130
    :cond_68
    iput v4, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->bytesRead:I

    .line 131
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 117
    :cond_6d
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_7c

    .line 119
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 120
    iput v3, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->state:I

    goto :goto_5

    :cond_7c
    if-eq v0, v1, :cond_5

    .line 122
    iput v4, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 112
    :cond_81
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 113
    iput v2, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->state:I

    goto/16 :goto_5

    :cond_8b
    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 93
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 94
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 95
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

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

    .line 101
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->timeUs:J

    :cond_b
    return-void
.end method

.method public blacklist seek()V
    .registers 4

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->state:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 87
    iput-wide v1, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->timeUs:J

    .line 88
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/LatmReader;->streamMuxRead:Z

    return-void
.end method
