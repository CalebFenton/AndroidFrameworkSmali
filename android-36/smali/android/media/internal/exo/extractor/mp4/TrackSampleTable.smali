.class final Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# instance fields
.field public final blacklist durationUs:J

.field public final blacklist flags:[I

.field public final blacklist maximumSize:I

.field public final blacklist offsets:[J

.field public final blacklist sampleCount:I

.field public final blacklist sizes:[I

.field public final blacklist timestampsUs:[J

.field public final blacklist track:Landroid/media/internal/exo/extractor/mp4/Track;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/mp4/Track;[J[II[J[IJ)V
    .registers 13

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    move v0, v3

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 51
    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 52
    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_1e

    move v2, v3

    :cond_1e
    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 54
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->track:Landroid/media/internal/exo/extractor/mp4/Track;

    .line 55
    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->offsets:[J

    .line 56
    iput-object p3, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->sizes:[I

    .line 57
    iput p4, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->maximumSize:I

    .line 58
    iput-object p5, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    .line 59
    iput-object p6, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->flags:[I

    .line 60
    iput-wide p7, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 61
    array-length p1, p2

    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->sampleCount:I

    .line 62
    array-length p0, p6

    if-lez p0, :cond_3e

    .line 63
    array-length p0, p6

    sub-int/2addr p0, v3

    aget p1, p6, p0

    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    aput p1, p6, p0

    :cond_3e
    return-void
.end method


# virtual methods
.method public blacklist getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .registers 6

    .line 77
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Landroid/media/internal/exo/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    :goto_8
    if-ltz p1, :cond_15

    .line 79
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->flags:[I

    aget p2, p2, p1

    and-int/2addr p2, v2

    if-eqz p2, :cond_12

    return p1

    :cond_12
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getIndexOfLaterOrEqualSynchronizationSample(J)I
    .registers 6

    .line 94
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Landroid/media/internal/exo/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    .line 95
    :goto_8
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    array-length p2, p2

    if-ge p1, p2, :cond_18

    .line 96
    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;->flags:[I

    aget p2, p2, p1

    and-int/2addr p2, v2

    if-eqz p2, :cond_15

    return p1

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_18
    const/4 p0, -0x1

    return p0
.end method
