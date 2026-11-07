.class final Landroid/media/internal/exo/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/mp3/Seeker;


# static fields
.field static final blacklist MIN_TIME_BETWEEN_POINTS_US:J = 0x186a0L


# instance fields
.field private final blacklist dataEndPosition:J

.field private blacklist durationUs:J

.field private final blacklist positions:Landroid/media/internal/exo/util/LongArray;

.field private final blacklist timesUs:Landroid/media/internal/exo/util/LongArray;


# direct methods
.method public constructor blacklist <init>(JJJ)V
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->durationUs:J

    .line 38
    iput-wide p5, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->dataEndPosition:J

    .line 39
    new-instance p1, Landroid/media/internal/exo/util/LongArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/LongArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->timesUs:Landroid/media/internal/exo/util/LongArray;

    .line 40
    new-instance p2, Landroid/media/internal/exo/util/LongArray;

    invoke-direct {p2}, Landroid/media/internal/exo/util/LongArray;-><init>()V

    iput-object p2, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->positions:Landroid/media/internal/exo/util/LongArray;

    const-wide/16 p5, 0x0

    .line 41
    invoke-virtual {p1, p5, p6}, Landroid/media/internal/exo/util/LongArray;->add(J)V

    .line 42
    invoke-virtual {p2, p3, p4}, Landroid/media/internal/exo/util/LongArray;->add(J)V

    return-void
.end method


# virtual methods
.method public blacklist getDataEndPosition()J
    .registers 3

    .line 55
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public blacklist getDurationUs()J
    .registers 3

    .line 65
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->durationUs:J

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 10

    .line 70
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->timesUs:Landroid/media/internal/exo/util/LongArray;

    const/4 v1, 0x1

    .line 71
    invoke-static {v0, p1, p2, v1, v1}, Landroid/media/internal/exo/util/Util;->binarySearchFloor(Landroid/media/internal/exo/util/LongArray;JZZ)I

    move-result v0

    .line 72
    new-instance v2, Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object v3, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->timesUs:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {v3, v0}, Landroid/media/internal/exo/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->positions:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {v5, v0}, Landroid/media/internal/exo/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 73
    iget-wide v3, v2, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v3, p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->timesUs:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/LongArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_28

    goto :goto_40

    .line 76
    :cond_28
    new-instance p1, Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object p2, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->timesUs:Landroid/media/internal/exo/util/LongArray;

    add-int/2addr v0, v1

    .line 77
    invoke-virtual {p2, v0}, Landroid/media/internal/exo/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->positions:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-direct {p1, v3, v4, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 78
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2, p1}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0

    .line 74
    :cond_40
    :goto_40
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0
.end method

.method public blacklist getTimeUs(J)J
    .registers 5

    .line 47
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->positions:Landroid/media/internal/exo/util/LongArray;

    const/4 v1, 0x1

    .line 48
    invoke-static {v0, p1, p2, v1, v1}, Landroid/media/internal/exo/util/Util;->binarySearchFloor(Landroid/media/internal/exo/util/LongArray;JZZ)I

    move-result p1

    .line 50
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->timesUs:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/LongArray;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isTimeUsInIndex(J)Z
    .registers 7

    .line 105
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->timesUs:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/LongArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/LongArray;->get(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x186a0

    cmp-long p0, p1, v2

    if-gez p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist maybeAddSeekPoint(JJ)V
    .registers 6

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 94
    :cond_7
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->timesUs:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {v0, p1, p2}, Landroid/media/internal/exo/util/LongArray;->add(J)V

    .line 95
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->positions:Landroid/media/internal/exo/util/LongArray;

    invoke-virtual {p0, p3, p4}, Landroid/media/internal/exo/util/LongArray;->add(J)V

    return-void
.end method

.method blacklist setDurationUs(J)V
    .registers 3

    .line 110
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/mp3/IndexSeeker;->durationUs:J

    return-void
.end method
