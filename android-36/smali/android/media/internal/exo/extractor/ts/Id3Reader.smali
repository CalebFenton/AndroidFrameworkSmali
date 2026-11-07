.class public final Landroid/media/internal/exo/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# instance fields
.field private final blacklist id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist sampleBytesRead:I

.field private blacklist sampleSize:I

.field private blacklist sampleTimeUs:J

.field private blacklist writingSample:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 9

    .line 87
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_a

    return-void

    .line 91
    :cond_a
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 92
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_71

    rsub-int/lit8 v1, v1, 0xa

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 96
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 97
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 98
    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget v6, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 95
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v3, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_71

    .line 103
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 104
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x49

    if-ne v4, v1, :cond_67

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 105
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x44

    if-ne v4, v1, :cond_67

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 106
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x33

    if-eq v4, v1, :cond_57

    goto :goto_67

    .line 111
    :cond_57
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 112
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->id3Header:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_71

    .line 107
    :cond_67
    :goto_67
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->writingSample:Z

    return-void

    .line 116
    :cond_71
    :goto_71
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 117
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 118
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleBytesRead:I

    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 63
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 64
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 65
    new-instance p0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 67
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    const-string p2, "application/id3"

    .line 68
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    .line 65
    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    return-void
.end method

.method public blacklist packetFinished()V
    .registers 9

    .line 123
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_28

    iget v5, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v5, :cond_28

    iget v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-eq v0, v5, :cond_12

    goto :goto_28

    .line 127
    :cond_12
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleTimeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_25

    .line 128
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    :cond_25
    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->writingSample:Z

    :cond_28
    :goto_28
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
    iput-boolean p3, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_13

    .line 79
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleTimeUs:J

    :cond_13
    const/4 p1, 0x0

    .line 81
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleSize:I

    .line 82
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleBytesRead:I

    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method
