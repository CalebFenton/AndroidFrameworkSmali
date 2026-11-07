.class public Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;
.super Ljava/lang/Object;
.source "ConstantBitrateSeekMap.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/SeekMap;


# instance fields
.field private final blacklist allowSeeksIfLengthUnknown:Z

.field private final blacklist bitrate:I

.field private final blacklist dataSize:J

.field private final blacklist durationUs:J

.field private final blacklist firstFrameBytePosition:J

.field private final blacklist frameSize:I

.field private final blacklist inputLength:J


# direct methods
.method public constructor blacklist <init>(JJIIZ)V
    .registers 9

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->inputLength:J

    .line 75
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_b

    const/4 p6, 0x1

    .line 76
    :cond_b
    iput p6, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->frameSize:I

    .line 77
    iput p5, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->bitrate:I

    .line 78
    iput-boolean p7, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    const-wide/16 p6, -0x1

    cmp-long v0, p1, p6

    if-nez v0, :cond_21

    .line 81
    iput-wide p6, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 82
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-void

    :cond_21
    sub-long p6, p1, p3

    .line 84
    iput-wide p6, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->dataSize:J

    .line 85
    invoke-static {p1, p2, p3, p4, p5}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-void
.end method

.method private blacklist getFramePositionForTimeUs(J)J
    .registers 8

    .line 150
    iget v0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->bitrate:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0x7a1200

    div-long/2addr p1, v0

    .line 152
    iget v0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v1, v0

    div-long/2addr p1, v1

    int-to-long v1, v0

    mul-long/2addr p1, v1

    .line 153
    iget-wide v1, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1c

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 154
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1c
    const-wide/16 v0, 0x0

    .line 156
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 157
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private static blacklist getTimeUsAtPosition(JJI)J
    .registers 7

    const-wide/16 v0, 0x0

    sub-long/2addr p0, p2

    .line 143
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/32 p2, 0x7a1200

    mul-long/2addr p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 119
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 12

    .line 96
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-nez v0, :cond_1b

    .line 97
    new-instance p1, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    new-instance p2, Landroid/media/internal/exo/extractor/SeekPoint;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p1

    .line 99
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->getFramePositionForTimeUs(J)J

    move-result-wide v0

    .line 100
    invoke-virtual {p0, v0, v1}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide v4

    .line 101
    new-instance v6, Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {v6, v4, v5, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 105
    iget-wide v7, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->dataSize:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_4e

    cmp-long p1, v4, p1

    if-gez p1, :cond_4e

    iget p1, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v2, p1

    add-long/2addr v2, v0

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->inputLength:J

    cmp-long p2, v2, v4

    if-ltz p2, :cond_3d

    goto :goto_4e

    :cond_3d
    int-to-long p1, p1

    add-long/2addr v0, p1

    .line 111
    invoke-virtual {p0, v0, v1}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide p0

    .line 112
    new-instance p2, Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {p2, p0, p1, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 113
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v6, p2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0

    .line 108
    :cond_4e
    :goto_4e
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v6}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0
.end method

.method public blacklist getTimeUsAtPosition(J)J
    .registers 5

    .line 129
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    iget p0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->bitrate:I

    invoke-static {p1, p2, v0, v1, p0}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist isSeekable()Z
    .registers 5

    .line 91
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method
