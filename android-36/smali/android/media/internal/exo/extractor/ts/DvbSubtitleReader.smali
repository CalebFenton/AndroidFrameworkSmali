.class public final Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# instance fields
.field private blacklist bytesToCheck:I

.field private final blacklist outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist sampleBytesWritten:I

.field private blacklist sampleTimeUs:J

.field private final blacklist subtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist writingSample:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    return-void
.end method

.method private blacklist checkNextByte(Landroid/media/internal/exo/util/ParsableByteArray;I)Z
    .registers 5

    .line 119
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 122
    :cond_8
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, p2, :cond_10

    .line 123
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 125
    :cond_10
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 126
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return p0
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 8

    .line 99
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_3c

    .line 100
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroid/media/internal/exo/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3c

    .line 104
    :cond_12
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    invoke-direct {p0, p1, v1}, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroid/media/internal/exo/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_3c

    .line 108
    :cond_1f
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 109
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 110
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v4, v3

    :goto_2a
    if-ge v1, v4, :cond_37

    aget-object v5, v3, v1

    .line 111
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 112
    invoke-interface {v5, p1, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 114
    :cond_37
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    :cond_3c
    :goto_3c
    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 8

    const/4 v0, 0x0

    .line 57
    :goto_1
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    .line 58
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 59
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 60
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v2

    .line 61
    new-instance v3, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v3}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 63
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    const-string v4, "application/dvbsubs"

    .line 64
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 65
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget-object v1, v1, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, v1}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v1

    .line 61
    invoke-interface {v2, v1}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 68
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4b
    return-void
.end method

.method public blacklist packetFinished()V
    .registers 12

    .line 87
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_27

    .line 88
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 89
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v2, v0

    move v3, v1

    :goto_14
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 90
    iget-wide v5, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    iget v8, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 93
    :cond_25
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->writingSample:Z

    :cond_27
    return-void
.end method

.method public blacklist packetStarted(JI)V
    .registers 6

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    .line 77
    iput-boolean p3, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_13

    .line 79
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    :cond_13
    const/4 p1, 0x0

    .line 81
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 p1, 0x2

    .line 82
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    return-void
.end method
