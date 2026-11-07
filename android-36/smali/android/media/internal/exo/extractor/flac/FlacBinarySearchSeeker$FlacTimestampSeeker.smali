.class final Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
.super Ljava/lang/Object;
.source "FlacBinarySearchSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacTimestampSeeker"
.end annotation


# instance fields
.field private final blacklist flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

.field private final blacklist frameStartMarker:I

.field private final blacklist sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;


# direct methods
.method private constructor blacklist <init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;I)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    .line 71
    iput p2, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->frameStartMarker:I

    .line 72
    new-instance p1, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;ILandroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$1;)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;I)V

    return-void
.end method

.method private blacklist findNextFrame(Landroid/media/internal/exo/extractor/ExtractorInput;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    :goto_0
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    iget-object v0, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v1, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->frameStartMarker:I

    iget-object v2, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    .line 117
    invoke-static {p1, v0, v1, v2}, Landroid/media/internal/exo/extractor/FlacFrameReader;->checkFrameHeaderFromPeek(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/FlacStreamMetadata;ILandroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 119
    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    .line 122
    :cond_20
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3f

    .line 123
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 124
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget-wide p0, p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    return-wide p0

    .line 127
    :cond_3f
    iget-object p0, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->sampleNumberHolder:Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide p0, p0, Landroid/media/internal/exo/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0
.end method


# virtual methods
.method public blacklist searchForTimestamp(Landroid/media/internal/exo/extractor/ExtractorInput;J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 81
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->findNextFrame(Landroid/media/internal/exo/extractor/ExtractorInput;)J

    move-result-wide v2

    .line 82
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    .line 84
    iget-object v6, p0, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v6, v6, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v7, 0x6

    .line 85
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 84
    invoke-interface {p1, v6}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 88
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->findNextFrame(Landroid/media/internal/exo/extractor/ExtractorInput;)J

    move-result-wide v6

    .line 89
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide p0

    cmp-long v8, v2, p2

    if-gtz v8, :cond_2d

    cmp-long v8, v6, p2

    if-lez v8, :cond_2d

    .line 93
    invoke-static {v4, v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p0

    return-object p0

    :cond_2d
    cmp-long p2, v6, p2

    if-gtz p2, :cond_36

    .line 95
    invoke-static {v6, v7, p0, p1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p0

    return-object p0

    .line 98
    :cond_36
    invoke-static {v2, v3, v0, v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p0

    return-object p0
.end method
