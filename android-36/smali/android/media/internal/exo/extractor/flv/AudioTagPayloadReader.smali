.class final Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;
.super Landroid/media/internal/exo/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final blacklist AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private blacklist audioFormat:I

.field private blacklist hasOutputFormat:Z

.field private blacklist hasParsedAudioDataHeader:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    const/16 v0, 0x5622

    const v1, 0xac44

    const/16 v2, 0x1588

    const/16 v3, 0x2b11

    .line 38
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/TrackOutput;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;)V

    return-void
.end method


# virtual methods
.method protected blacklist parseHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v1, 0x1

    if-nez v0, :cond_86

    .line 57
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 58
    iput v0, p0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_38

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    .line 61
    sget-object v0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget p1, v0, p1

    .line 62
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v2, "audio/mpeg"

    .line 64
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    .line 68
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v0, p1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 69
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_83

    :cond_38
    const/4 p1, 0x7

    if-eq v0, p1, :cond_5e

    const/16 v2, 0x8

    if-ne v0, v2, :cond_40

    goto :goto_5e

    :cond_40
    const/16 p1, 0xa

    if-ne v0, p1, :cond_45

    goto :goto_83

    .line 82
    :cond_45
    new-instance p1, Landroid/media/internal/exo/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio format not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    :goto_5e
    if-ne v0, p1, :cond_63

    .line 72
    const-string p1, "audio/g711-alaw"

    goto :goto_65

    :cond_63
    const-string p1, "audio/g711-mlaw"

    .line 73
    :goto_65
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 75
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v1}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    const/16 v0, 0x1f40

    .line 77
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    .line 79
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v0, p1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 80
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 84
    :goto_83
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    goto :goto_89

    .line 87
    :cond_86
    invoke-virtual {p1, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    :goto_89
    return v1
.end method

.method protected blacklist parsePayload(Landroid/media/internal/exo/util/ParsableByteArray;J)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 94
    iget v2, v0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1e

    .line 95
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    .line 96
    iget-object v2, v0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v2, v1, v9}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 97
    iget-object v5, v0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    move-wide/from16 v6, p2

    invoke-interface/range {v5 .. v11}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    return v4

    .line 100
    :cond_1e
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_67

    .line 101
    iget-boolean v5, v0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v5, :cond_67

    .line 103
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v5, v2, [B

    .line 104
    invoke-virtual {v1, v5, v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 105
    invoke-static {v5}, Landroid/media/internal/exo/audio/AacUtil;->parseAudioSpecificConfig([B)Landroid/media/internal/exo/audio/AacUtil$Config;

    move-result-object v1

    .line 106
    new-instance v2, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v2}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v6, "audio/mp4a-latm"

    .line 108
    invoke-virtual {v2, v6}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    iget-object v6, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v6}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    iget v6, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->channelCount:I

    .line 110
    invoke-virtual {v2, v6}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v2

    iget v1, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->sampleRateHz:I

    .line 111
    invoke-virtual {v2, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 112
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v1

    .line 114
    iget-object v2, v0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v2, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 115
    iput-boolean v4, v0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    return v3

    .line 117
    :cond_67
    iget v5, v0, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_71

    if-ne v2, v4, :cond_70

    goto :goto_71

    :cond_70
    return v3

    .line 118
    :cond_71
    :goto_71
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 119
    iget-object v3, v0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v3, v1, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 120
    iget-object v12, v0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x1

    move-wide/from16 v13, p2

    move/from16 v16, v2

    invoke-interface/range {v12 .. v18}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    return v4
.end method
