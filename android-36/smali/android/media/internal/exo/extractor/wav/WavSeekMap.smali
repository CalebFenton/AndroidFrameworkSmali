.class final Landroid/media/internal/exo/extractor/wav/WavSeekMap;
.super Ljava/lang/Object;
.source "WavSeekMap.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/SeekMap;


# instance fields
.field private final blacklist blockCount:J

.field private final blacklist durationUs:J

.field private final blacklist firstBlockPosition:J

.field private final blacklist framesPerBlock:I

.field private final blacklist wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/wav/WavFormat;IJJ)V
    .registers 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    .line 34
    iput p2, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->framesPerBlock:I

    .line 35
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->firstBlockPosition:J

    sub-long/2addr p5, p3

    .line 36
    iget p1, p1, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    int-to-long p1, p1

    div-long/2addr p5, p1

    iput-wide p5, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->blockCount:J

    .line 37
    invoke-direct {p0, p5, p6}, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->durationUs:J

    return-void
.end method

.method private blacklist blockIndexToTimeUs(J)J
    .registers 11

    .line 71
    iget v0, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->framesPerBlock:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    iget-object p0, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget p0, p0, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, p0

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 47
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->durationUs:J

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 13

    .line 53
    iget-object v0, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v0, v0, Landroid/media/internal/exo/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iget v2, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->framesPerBlock:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    div-long v4, v0, v2

    .line 54
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->blockCount:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroid/media/internal/exo/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 56
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->firstBlockPosition:J

    iget-object v6, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v6, v6, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    int-to-long v6, v6

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 57
    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide v6

    .line 58
    new-instance v8, Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {v8, v6, v7, v4, v5}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v6, p1

    if-gez p1, :cond_52

    .line 59
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->blockCount:J

    sub-long/2addr p1, v2

    cmp-long p1, v0, p1

    if-nez p1, :cond_39

    goto :goto_52

    :cond_39
    add-long/2addr v0, v2

    .line 63
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->firstBlockPosition:J

    iget-object v2, p0, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->wavFormat:Landroid/media/internal/exo/extractor/wav/WavFormat;

    iget v2, v2, Landroid/media/internal/exo/extractor/wav/WavFormat;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    add-long/2addr p1, v2

    .line 64
    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide v0

    .line 65
    new-instance p0, Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 66
    new-instance p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v8, p0}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p1

    .line 60
    :cond_52
    :goto_52
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v8}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
