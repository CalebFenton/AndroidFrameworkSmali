.class abstract Landroid/media/internal/exo/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;,
        Landroid/media/internal/exo/extractor/ogg/StreamReader$UnseekableOggSeeker;
    }
.end annotation


# instance fields
.field private blacklist currentGranule:J

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist formatSet:Z

.field private blacklist lengthOfReadPacket:J

.field private final blacklist oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

.field private blacklist oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

.field private blacklist payloadStartPosition:J

.field private blacklist sampleRate:I

.field private blacklist seekMapSet:Z

.field private blacklist setupData:Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;

.field private blacklist state:I

.field private blacklist targetGranule:J

.field private blacklist trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/media/internal/exo/extractor/ogg/OggPacket;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

    .line 67
    new-instance v0, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->setupData:Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;

    return-void
.end method

.method private blacklist assertInitialized()V
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist readHeaders(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    :goto_0
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

    invoke-virtual {v0, p1}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->populate(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p1, 0x3

    .line 146
    iput p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_d
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 151
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->getPayload()Landroid/media/internal/exo/util/ParsableByteArray;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v3, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->setupData:Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->readHeaders(Landroid/media/internal/exo/util/ParsableByteArray;JLandroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 152
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_0

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist readHeadersAndUpdateState(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct/range {p0 .. p1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->readHeaders(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 165
    :cond_8
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->setupData:Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->format:Landroid/media/internal/exo/Format;

    iget v2, v0, Landroid/media/internal/exo/Format;->sampleRate:I

    iput v2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->sampleRate:I

    .line 166
    iget-boolean v2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->formatSet:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1c

    .line 167
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v2, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 168
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->formatSet:Z

    .line 171
    :cond_1c
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->setupData:Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    const/4 v11, 0x0

    if-eqz v0, :cond_26

    .line 172
    iput-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    goto :goto_63

    .line 173
    :cond_26
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_39

    .line 174
    new-instance v0, Landroid/media/internal/exo/extractor/ogg/StreamReader$UnseekableOggSeeker;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/media/internal/exo/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Landroid/media/internal/exo/extractor/ogg/StreamReader$1;)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    goto :goto_63

    .line 176
    :cond_39
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->getPageHeader()Landroid/media/internal/exo/extractor/ogg/OggPageHeader;

    move-result-object v0

    .line 177
    iget v2, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_47

    move v10, v3

    goto :goto_48

    :cond_47
    move v10, v11

    .line 178
    :goto_48
    new-instance v2, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;

    move-object v4, v2

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 182
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    iget v7, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->headerSize:I

    iget v8, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v7, v8

    int-to-long v7, v7

    iget-wide v12, v0, Landroid/media/internal/exo/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v1, p0

    move-object v0, v4

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v12

    invoke-direct/range {v0 .. v10}, Landroid/media/internal/exo/extractor/ogg/DefaultOggSeeker;-><init>(Landroid/media/internal/exo/extractor/ogg/StreamReader;JJJJZ)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    :goto_63
    const/4 v0, 0x2

    .line 188
    iput v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    .line 190
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->trimPayload()V

    return v11
.end method

.method private blacklist readPayload(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 196
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Landroid/media/internal/exo/extractor/ogg/OggSeeker;->read(Landroid/media/internal/exo/extractor/ExtractorInput;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-ltz v6, :cond_16

    move-object/from16 v6, p2

    .line 198
    iput-wide v2, v6, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    return v7

    :cond_16
    const-wide/16 v8, -0x1

    cmp-long v6, v2, v8

    if-gez v6, :cond_23

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    neg-long v2, v2

    .line 201
    invoke-virtual {v0, v2, v3}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 204
    :cond_23
    iget-boolean v2, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v2, :cond_3a

    .line 205
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    invoke-interface {v2}, Landroid/media/internal/exo/extractor/ogg/OggSeeker;->createSeekMap()Landroid/media/internal/exo/extractor/SeekMap;

    move-result-object v2

    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/SeekMap;

    .line 206
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {v3, v2}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 207
    iput-boolean v7, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->seekMapSet:Z

    .line 210
    :cond_3a
    iget-wide v2, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4e

    iget-object v2, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

    invoke-virtual {v2, v1}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->populate(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_4e

    :cond_49
    const/4 v1, 0x3

    .line 223
    iput v1, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    const/4 v0, -0x1

    return v0

    .line 211
    :cond_4e
    :goto_4e
    iput-wide v4, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 212
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->getPayload()Landroid/media/internal/exo/util/ParsableByteArray;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->preparePayload(Landroid/media/internal/exo/util/ParsableByteArray;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_84

    .line 214
    iget-wide v4, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->currentGranule:J

    add-long v6, v4, v2

    iget-wide v10, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_84

    .line 216
    invoke-virtual {v0, v4, v5}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v11

    .line 217
    iget-object v4, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {v4, v1, v5}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 218
    iget-object v10, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x1

    invoke-interface/range {v10 .. v16}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 219
    iput-wide v8, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->targetGranule:J

    .line 221
    :cond_84
    iget-wide v4, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->currentGranule:J

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected blacklist convertGranuleToTime(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 236
    iget p0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected blacklist convertTimeToGranule(J)J
    .registers 5

    .line 246
    iget p0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, p0

    mul-long/2addr v0, p1

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    return-wide v0
.end method

.method blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/TrackOutput;)V
    .registers 3

    .line 71
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    .line 72
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->reset(Z)V

    return-void
.end method

.method protected blacklist onSeekEnd(J)V
    .registers 3

    .line 276
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method protected abstract blacklist preparePayload(Landroid/media/internal/exo/util/ParsableByteArray;)J
.end method

.method final blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->assertInitialized()V

    .line 110
    iget v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_18

    const/4 p0, 0x3

    if-ne v0, p0, :cond_12

    const/4 p0, -0x1

    return p0

    .line 124
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 118
    :cond_18
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->readPayload(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 114
    :cond_22
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 115
    iput v2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_2c
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->readHeadersAndUpdateState(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p0

    return p0
.end method

.method protected abstract blacklist readHeaders(Landroid/media/internal/exo/util/ParsableByteArray;JLandroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected blacklist reset(Z)V
    .registers 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_11

    .line 83
    new-instance p1, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->setupData:Landroid/media/internal/exo/extractor/ogg/StreamReader$SetupData;

    .line 84
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->payloadStartPosition:J

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    goto :goto_14

    :cond_11
    const/4 p1, 0x1

    .line 87
    iput p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    :goto_14
    const-wide/16 v2, -0x1

    .line 89
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->targetGranule:J

    .line 90
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method final blacklist seek(JJ)V
    .registers 7

    .line 95
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggPacket:Landroid/media/internal/exo/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ogg/OggPacket;->reset()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_13

    .line 97
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->seekMapSet:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->reset(Z)V

    return-void

    .line 99
    :cond_13
    iget p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    if-eqz p1, :cond_2d

    .line 100
    invoke-virtual {p0, p3, p4}, Landroid/media/internal/exo/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->targetGranule:J

    .line 101
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->oggSeeker:Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/ogg/OggSeeker;

    iget-wide p2, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->targetGranule:J

    invoke-interface {p1, p2, p3}, Landroid/media/internal/exo/extractor/ogg/OggSeeker;->startSeek(J)V

    const/4 p1, 0x2

    .line 102
    iput p1, p0, Landroid/media/internal/exo/extractor/ogg/StreamReader;->state:I

    :cond_2d
    return-void
.end method
