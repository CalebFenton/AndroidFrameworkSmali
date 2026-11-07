.class public final Landroid/media/MediaTimestamp;
.super Ljava/lang/Object;
.source "MediaTimestamp.java"


# static fields
.field public static final whitelist TIMESTAMP_UNKNOWN:Landroid/media/MediaTimestamp;


# instance fields
.field public final greylist-max-o clockRate:F

.field public final greylist-max-o mediaTimeUs:J

.field public final greylist-max-o nanoTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 44
    new-instance v0, Landroid/media/MediaTimestamp;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaTimestamp;-><init>(JJF)V

    sput-object v0, Landroid/media/MediaTimestamp;->TIMESTAMP_UNKNOWN:Landroid/media/MediaTimestamp;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    .line 108
    iput-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    .line 110
    return-void
.end method

.method public constructor whitelist <init>(JJF)V
    .registers 6
    .param p1, "mediaTimeUs"    # J
    .param p3, "nanoTimeNs"    # J
    .param p5, "clockRate"    # F

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide p1, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    .line 101
    iput-wide p3, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    .line 102
    iput p5, p0, Landroid/media/MediaTimestamp;->clockRate:F

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 115
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 117
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/MediaTimestamp;

    .line 118
    .local v2, "that":Landroid/media/MediaTimestamp;
    iget-wide v3, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    iget-wide v5, v2, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    iget-wide v3, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    iget-wide v5, v2, Landroid/media/MediaTimestamp;->nanoTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    iget v3, p0, Landroid/media/MediaTimestamp;->clockRate:F

    iget v4, v2, Landroid/media/MediaTimestamp;->clockRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 115
    .end local v2    # "that":Landroid/media/MediaTimestamp;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist getAnchorMediaTimeUs()J
    .registers 3

    .line 50
    iget-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    return-wide v0
.end method

.method public whitelist getAnchorSystemNanoTime()J
    .registers 3

    .line 68
    iget-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public whitelist getAnchorSytemNanoTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroid/media/MediaTimestamp;->getAnchorSystemNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getMediaClockRate()F
    .registers 2

    .line 80
    iget v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{AnchorMediaTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AnchorSystemNanoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clockRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaTimestamp;->clockRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
