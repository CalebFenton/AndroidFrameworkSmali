.class public final Landroid/media/internal/exo/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;,
        Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;
    }
.end annotation


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;


# instance fields
.field private blacklist dataEndPosition:J

.field private blacklist dataStartPosition:I

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist outputWriter:Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

.field private blacklist rf64SampleDataSize:J

.field private blacklist state:I

.field private blacklist trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->state:I

    const-wide/16 v0, -0x1

    .line 92
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 v2, -0x1

    .line 93
    iput v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 94
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataEndPosition:J

    return-void
.end method

.method private blacklist assertInitialized()V
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object p0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist readFileType(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    .line 154
    iget v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataStartPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1d

    .line 155
    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x4

    .line 156
    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->state:I

    return-void

    .line 159
    :cond_1d
    invoke-static {p1}, Landroid/media/internal/exo/extractor/wav/WavHeaderReader;->checkFileType(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 164
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 165
    iput v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->state:I

    return-void

    .line 161
    :cond_33
    const-string p0, "Unsupported or unrecognized wav file type."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readFormat(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {p1}, Landroid/media/internal/exo/extractor/wav/WavHeaderReader;->readFormat(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/extractor/wav/WavFormat;

    move-result-object v3

    .line 176
    iget p1, v3, Landroid/media/internal/exo/extractor/wav/WavFormat;->formatType:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_16

    .line 177
    new-instance p1, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-direct {p1, v0, v1, v3}, Landroid/media/internal/exo/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/wav/WavFormat;)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->outputWriter:Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_4f

    :cond_16
    const/4 v0, 0x6

    if-ne p1, v0, :cond_28

    .line 179
    new-instance v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    const-string v4, "audio/g711-alaw"

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->outputWriter:Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_4f

    :cond_28
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3a

    .line 187
    new-instance v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    const-string v4, "audio/g711-mlaw"

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->outputWriter:Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_4f

    .line 196
    :cond_3a
    iget v0, v3, Landroid/media/internal/exo/extractor/wav/WavFormat;->bitsPerSample:I

    .line 197
    invoke-static {p1, v0}, Landroid/media/internal/exo/audio/WavUtil;->getPcmEncodingForType(II)I

    move-result v5

    if-eqz v5, :cond_53

    .line 202
    new-instance v0, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iget-object v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    const-string v4, "audio/raw"

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->outputWriter:Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    :goto_4f
    const/4 p1, 0x3

    .line 206
    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->state:I

    return-void

    .line 199
    :cond_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported WAV format type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Landroid/media/internal/exo/extractor/wav/WavFormat;->formatType:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readRf64SampleDataSize(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p1}, Landroid/media/internal/exo/extractor/wav/WavHeaderReader;->readRf64SampleDataSize(Landroid/media/internal/exo/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 p1, 0x2

    .line 170
    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->state:I

    return-void
.end method

.method private blacklist readSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataEndPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    .line 231
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 232
    iget-object p0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->outputWriter:Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {p0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    invoke-interface {p0, p1, v2, v3}, Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;->sampleData(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, -0x1

    return p0

    :cond_26
    return v1
.end method

.method private blacklist skipToSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {p1}, Landroid/media/internal/exo/extractor/wav/WavHeaderReader;->skipToSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/util/Pair;

    move-result-object v0

    .line 211
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 212
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 213
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_28

    const-wide v6, 0xffffffffL

    cmp-long v6, v0, v6

    if-nez v6, :cond_28

    move-wide v0, v2

    .line 218
    :cond_28
    iget v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataStartPosition:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 219
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5e

    .line 220
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_5e

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data exceeds input length: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WavExtractor"

    invoke-static {v2, p1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 224
    :cond_5e
    iget-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->outputWriter:Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {p1}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    iget v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1, v0, v1, v2}, Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    const/4 p1, 0x4

    .line 225
    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->state:I

    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 4

    .line 104
    iput-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->trackOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 106
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/wav/WavExtractor;->assertInitialized()V

    .line 126
    iget p2, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->state:I

    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    const/4 v1, 0x1

    if-eq p2, v1, :cond_27

    const/4 v1, 0x2

    if-eq p2, v1, :cond_23

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1f

    const/4 v0, 0x4

    if-ne p2, v0, :cond_19

    .line 140
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor;->readSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;)I

    move-result p0

    return p0

    .line 142
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 137
    :cond_1f
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor;->skipToSampleData(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v0

    .line 134
    :cond_23
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor;->readFormat(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v0

    .line 131
    :cond_27
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor;->readRf64SampleDataSize(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v0

    .line 128
    :cond_2b
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/wav/WavExtractor;->readFileType(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    return v0
.end method

.method public blacklist seek(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    .line 111
    :goto_9
    iput p1, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->state:I

    .line 112
    iget-object p0, p0, Landroid/media/internal/exo/extractor/wav/WavExtractor;->outputWriter:Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;

    if-eqz p0, :cond_12

    .line 113
    invoke-interface {p0, p3, p4}, Landroid/media/internal/exo/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    :cond_12
    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-static {p1}, Landroid/media/internal/exo/extractor/wav/WavHeaderReader;->checkFileType(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
