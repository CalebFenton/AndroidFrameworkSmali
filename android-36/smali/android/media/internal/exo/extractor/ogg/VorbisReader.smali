.class final Landroid/media/internal/exo/extractor/ogg/VorbisReader;
.super Landroid/media/internal/exo/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field private blacklist commentHeader:Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

.field private blacklist previousPacketBlockSize:I

.field private blacklist seenFirstAudioPacket:Z

.field private blacklist vorbisIdHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

.field private blacklist vorbisSetup:Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static blacklist appendNumberOfSamples(Landroid/media/internal/exo/util/ParsableByteArray;J)V
    .registers 9

    .line 171
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1e

    .line 172
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([B)V

    goto :goto_27

    .line 174
    :cond_1e
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 178
    :goto_27
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 180
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 181
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 182
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method private static blacklist decodeBlockSize(BLandroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;)I
    .registers 4

    .line 187
    iget v0, p1, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->readBits(BII)I

    move-result p0

    .line 189
    iget-object v0, p1, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/VorbisUtil$Mode;->blockFlag:Z

    if-nez p0, :cond_14

    .line 190
    iget-object p0, p1, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    return p0

    .line 192
    :cond_14
    iget-object p0, p1, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    return p0
.end method

.method static blacklist readBits(BII)I
    .registers 3

    .line 0
    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static blacklist verifyBitstreamType(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .registers 2

    const/4 v0, 0x1

    .line 46
    :try_start_1
    invoke-static {v0, p0, v0}, Landroid/media/internal/exo/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroid/media/internal/exo/util/ParsableByteArray;Z)Z

    move-result p0
    :try_end_5
    .catch Landroid/media/internal/exo/ParserException; {:try_start_1 .. :try_end_5} :catch_6

    return p0

    :catch_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected blacklist onSeekEnd(J)V
    .registers 5

    .line 66
    invoke-super {p0, p1, p2}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->onSeekEnd(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    move p1, p2

    .line 67
    :goto_d
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 68
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    if-eqz p1, :cond_15

    iget p2, p1, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_15
    iput p2, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-void
.end method

.method protected blacklist preparePayload(Landroid/media/internal/exo/util/ParsableByteArray;)J
    .registers 7

    .line 74
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    const-wide/16 p0, -0x1

    return-wide p0

    .line 79
    :cond_e
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->vorbisSetup:Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v3}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v0, v3}, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->decodeBlockSize(BLandroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v0

    .line 83
    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v3, :cond_29

    iget v1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_29
    int-to-long v3, v1

    .line 85
    invoke-static {p1, v3, v4}, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->appendNumberOfSamples(Landroid/media/internal/exo/util/ParsableByteArray;J)V

    .line 88
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 89
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-wide v3
.end method

.method protected blacklist readHeaders(Landroid/media/internal/exo/util/ParsableByteArray;JLandroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->vorbisSetup:Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz p2, :cond_b

    .line 98
    iget-object p0, p4, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->format:Landroid/media/internal/exo/Format;

    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0

    .line 102
    :cond_b
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->readSetupHeaders(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->vorbisSetup:Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 p0, 0x1

    if-nez p1, :cond_15

    return p0

    .line 108
    :cond_15
    iget-object p2, p1, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    .line 110
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v0, p2, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p1, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance p1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v0, "audio/vorbis"

    .line 116
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget v0, p2, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 117
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/Format$Builder;->setAverageBitrate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget v0, p2, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    .line 118
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/Format$Builder;->setPeakBitrate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget v0, p2, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    .line 119
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    iget p2, p2, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    .line 120
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p3}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p1

    iput-object p1, p4, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->format:Landroid/media/internal/exo/Format;

    return p0
.end method

.method blacklist readSetupHeaders(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    const/4 v0, 0x0

    if-nez v1, :cond_c

    .line 131
    invoke-static {p1}, Landroid/media/internal/exo/extractor/VorbisUtil;->readVorbisIdentificationHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    return-object v0

    .line 135
    :cond_c
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->commentHeader:Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

    if-nez v2, :cond_17

    .line 136
    invoke-static {p1}, Landroid/media/internal/exo/extractor/VorbisUtil;->readVorbisCommentHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->commentHeader:Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

    return-object v0

    .line 143
    :cond_17
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p0

    new-array v3, p0, [B

    .line 145
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget p0, v1, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p1, p0}, Landroid/media/internal/exo/extractor/VorbisUtil;->readVorbisModes(Landroid/media/internal/exo/util/ParsableByteArray;I)[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;

    move-result-object v4

    .line 149
    array-length p0, v4

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Landroid/media/internal/exo/extractor/VorbisUtil;->iLog(I)I

    move-result v5

    .line 151
    new-instance v0, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;[B[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;I)V

    return-object v0
.end method

.method protected blacklist reset(Z)V
    .registers 2

    .line 54
    invoke-super {p0, p1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->vorbisSetup:Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;

    .line 57
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    .line 58
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->commentHeader:Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

    :cond_c
    const/4 p1, 0x0

    .line 60
    iput p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 61
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    return-void
.end method
