.class final Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker;
.super Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;IJJ)V
    .registers 23

    move-object/from16 v0, p1

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;-><init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;)V

    new-instance v2, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Landroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;ILandroid/media/internal/exo/extractor/flac/FlacBinarySearchSeeker$1;)V

    .line 53
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    iget-wide v7, v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->totalSamples:J

    .line 58
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getApproxBytesPerFrame()J

    move-result-wide v13

    const/4 v5, 0x6

    iget v0, v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 59
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 50
    invoke-direct/range {v0 .. v15}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;-><init>(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method
