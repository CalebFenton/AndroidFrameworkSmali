.class public final Landroid/media/MediaTimestamp;
.super Ljava/lang/Object;
.source "MediaTimestamp.java"


# instance fields
.field public final clockRate:F

.field public final mediaTimeUs:J

.field public final nanoTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 81
    iput-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    #@7
    .line 82
    iput-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    #@9
    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    iput v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    #@d
    .line 80
    return-void
.end method

.method constructor <init>(JJF)V
    .locals 1
    .param p1, "mediaUs"    # J
    .param p3, "systemNs"    # J
    .param p5, "rate"    # F

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-wide p1, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    #@5
    .line 75
    iput-wide p3, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    #@7
    .line 76
    iput p5, p0, Landroid/media/MediaTimestamp;->clockRate:F

    #@9
    .line 73
    return-void
.end method


# virtual methods
.method public getAnchorMediaTimeUs()J
    .locals 2

    #@0
    .prologue
    .line 43
    iget-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    #@2
    return-wide v0
.end method

.method public getAnchorSytemNanoTime()J
    .locals 2

    #@0
    .prologue
    .line 51
    iget-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    #@2
    return-wide v0
.end method

.method public getMediaClockRate()F
    .locals 1

    #@0
    .prologue
    .line 62
    iget v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    #@2
    return v0
.end method
