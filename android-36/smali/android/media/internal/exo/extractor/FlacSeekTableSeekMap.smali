.class public final Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;
.super Ljava/lang/Object;
.source "FlacSeekTableSeekMap.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/SeekMap;


# instance fields
.field private final blacklist firstFrameOffset:J

.field private final blacklist flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/FlacStreamMetadata;J)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    .line 39
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    return-void
.end method

.method private blacklist getSeekPoint(JJ)Landroid/media/internal/exo/extractor/SeekPoint;
    .registers 7

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 79
    iget-object v0, p0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget v0, v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    .line 80
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    add-long/2addr v0, p3

    .line 81
    new-instance p0, Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 49
    iget-object p0, p0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 12

    .line 54
    iget-object v0, p0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget-object v0, v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    iget-object v1, v0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->seekTable:Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    iget-object v2, v1, Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    .line 56
    iget-object v1, v1, Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;->pointOffsets:[J

    .line 58
    invoke-virtual {v0, p1, p2}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide v3

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 60
    invoke-static {v2, v3, v4, v5, v0}, Landroid/media/internal/exo/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_20

    move-wide v7, v3

    goto :goto_22

    .line 66
    :cond_20
    aget-wide v7, v2, v0

    :goto_22
    if-ne v0, v6, :cond_25

    goto :goto_27

    .line 67
    :cond_25
    aget-wide v3, v1, v0

    .line 68
    :goto_27
    invoke-direct {p0, v7, v8, v3, v4}, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Landroid/media/internal/exo/extractor/SeekPoint;

    move-result-object v3

    .line 69
    iget-wide v6, v3, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_45

    array-length p1, v2

    sub-int/2addr p1, v5

    if-ne v0, p1, :cond_36

    goto :goto_45

    :cond_36
    add-int/2addr v0, v5

    .line 72
    aget-wide p1, v2, v0

    aget-wide v0, v1, v0

    .line 73
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/media/internal/exo/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Landroid/media/internal/exo/extractor/SeekPoint;

    move-result-object p0

    .line 74
    new-instance p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v3, p0}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p1

    .line 70
    :cond_45
    :goto_45
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v3}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
