.class public final Landroid/media/internal/exo/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;


# instance fields
.field private blacklist audioReader:Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;

.field private blacklist bytesToNextTagHeader:I

.field private blacklist extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private final blacklist headerBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist mediaTagTimestampOffsetUs:J

.field private final blacklist metadataReader:Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

.field private blacklist outputFirstSample:Z

.field private blacklist outputSeekMap:Z

.field private final blacklist scratch:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist state:I

.field private final blacklist tagData:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist tagDataSize:I

.field private final blacklist tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist tagTimestampUs:J

.field private blacklist tagType:I

.field private blacklist videoReader:Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 92
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->headerBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 93
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 94
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagData:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 95
    new-instance v0, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->metadataReader:Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->state:I

    return-void
.end method

.method private blacklist ensureReadyForMediaOutput()V
    .registers 5

    .line 307
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v0, :cond_16

    .line 308
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance v1, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_16
    return-void
.end method

.method private blacklist getCurrentTimestampUs()J
    .registers 5

    .line 314
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-eqz v0, :cond_a

    .line 315
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v0, v2

    return-wide v0

    .line 316
    :cond_a
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->metadataReader:Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1c
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagTimestampUs:J

    return-wide v0
.end method

.method private blacklist prepareTagData(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/util/ParsableByteArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1f

    .line 296
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    goto :goto_24

    .line 298
    :cond_1f
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 300
    :goto_24
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagData:Landroid/media/internal/exo/util/ParsableByteArray;

    iget v1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 301
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagData:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 302
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagData:Landroid/media/internal/exo/util/ParsableByteArray;

    return-object p0
.end method

.method private blacklist readFlvHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->headerBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    .line 195
    :cond_11
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->headerBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 196
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->headerBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 197
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->headerBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_28

    move v0, v3

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    and-int/2addr p1, v3

    if-eqz p1, :cond_2d

    move v1, v3

    :cond_2d
    if-eqz v0, :cond_42

    .line 200
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->audioReader:Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;

    if-nez p1, :cond_42

    .line 201
    new-instance p1, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/16 v4, 0x8

    .line 202
    invoke-interface {v0, v4, v3}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->audioReader:Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;

    :cond_42
    const/4 p1, 0x2

    if-eqz v1, :cond_56

    .line 204
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->videoReader:Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;

    if-nez v0, :cond_56

    .line 205
    new-instance v0, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    .line 206
    invoke-interface {v1, v2, p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->videoReader:Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;

    .line 208
    :cond_56
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    .line 211
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->headerBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 212
    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->state:I

    return v3
.end method

.method private blacklist readTagData(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->getCurrentTimestampUs()J

    move-result-wide v0

    .line 263
    iget v2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagType:I

    const/16 v3, 0x8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-ne v2, v3, :cond_23

    iget-object v3, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->audioReader:Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;

    if-eqz v3, :cond_23

    .line 264
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 265
    iget-object v2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->audioReader:Landroid/media/internal/exo/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->prepareTagData(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;J)Z

    move-result p1

    :cond_21
    :goto_21
    move v0, v6

    goto :goto_75

    :cond_23
    const/16 v3, 0x9

    if-ne v2, v3, :cond_39

    .line 266
    iget-object v3, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->videoReader:Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;

    if-eqz v3, :cond_39

    .line 267
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 268
    iget-object v2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->videoReader:Landroid/media/internal/exo/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->prepareTagData(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;J)Z

    move-result p1

    goto :goto_21

    :cond_39
    const/16 v3, 0x12

    if-ne v2, v3, :cond_6e

    .line 269
    iget-boolean v2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_6e

    .line 270
    iget-object v2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->metadataReader:Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->prepareTagData(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;J)Z

    move-result p1

    .line 271
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->metadataReader:Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_21

    .line 273
    iget-object v2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance v3, Landroid/media/internal/exo/extractor/IndexSeekMap;

    iget-object v7, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->metadataReader:Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

    .line 275
    invoke-virtual {v7}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTagPositions()[J

    move-result-object v7

    iget-object v8, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->metadataReader:Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

    .line 276
    invoke-virtual {v8}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTimesUs()[J

    move-result-object v8

    invoke-direct {v3, v7, v8, v0, v1}, Landroid/media/internal/exo/extractor/IndexSeekMap;-><init>([J[JJ)V

    .line 273
    invoke-interface {v2, v3}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    .line 278
    iput-boolean v6, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->outputSeekMap:Z

    goto :goto_21

    .line 281
    :cond_6e
    iget v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x0

    move v0, p1

    .line 284
    :goto_75
    iget-boolean v1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-nez v1, :cond_8f

    if-eqz p1, :cond_8f

    .line 285
    iput-boolean v6, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->outputFirstSample:Z

    .line 287
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->metadataReader:Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-nez p1, :cond_8b

    iget-wide v1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v1, v1

    goto :goto_8d

    :cond_8b
    const-wide/16 v1, 0x0

    :goto_8d
    iput-wide v1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    :cond_8f
    const/4 p1, 0x4

    .line 289
    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 p1, 0x2

    .line 290
    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->state:I

    return v0
.end method

.method private blacklist readTagHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    .line 241
    :cond_11
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 242
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagType:I

    .line 243
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 244
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 245
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 246
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    const/4 p1, 0x4

    .line 247
    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->state:I

    return v3
.end method

.method private blacklist skipToTagHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x0

    .line 224
    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 p1, 0x3

    .line 225
    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->state:I

    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 2

    .line 132
    iput-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object p2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->extractorOutput:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {p2}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_5
    :goto_5
    iget p2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->state:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_29

    const/4 v0, 0x3

    if-eq p2, v0, :cond_22

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1c

    .line 170
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->readTagData(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p0, 0x0

    return p0

    .line 176
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 165
    :cond_22
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->readTagHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_5

    return v1

    .line 162
    :cond_29
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->skipToTagHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)V

    goto :goto_5

    .line 157
    :cond_2d
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->readFlvHeader(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_5

    return v1
.end method

.method public blacklist seek(JJ)V
    .registers 5

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_d

    const/4 p1, 0x1

    .line 138
    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->state:I

    .line 139
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->outputFirstSample:Z

    goto :goto_10

    :cond_d
    const/4 p1, 0x3

    .line 141
    iput p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->state:I

    .line 143
    :goto_10
    iput p2, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 103
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 104
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v1, 0x464c56

    if-eq v0, v1, :cond_1c

    return v2

    .line 109
    :cond_1c
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 110
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 111
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_36

    return v2

    .line 116
    :cond_36
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 117
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 118
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 120
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 121
    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 124
    iget-object v0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 125
    iget-object p1, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 127
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flv/FlvExtractor;->scratch:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    if-nez p0, :cond_69

    const/4 p0, 0x1

    return p0

    :cond_69
    return v2
.end method
