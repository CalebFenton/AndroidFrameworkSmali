.class public Landroid/filterpacks/performance/Throughput;
.super Ljava/lang/Object;
.source "Throughput.java"


# instance fields
.field private final mPeriodFrames:I

.field private final mPeriodTime:I

.field private final mPixels:I

.field private final mTotalFrames:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "totalFrames"    # I
    .param p2, "periodFrames"    # I
    .param p3, "periodTime"    # I
    .param p4, "pixels"    # I

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput p1, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    #@5
    .line 32
    iput p2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    #@7
    .line 33
    iput p3, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    #@9
    .line 34
    iput p4, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    #@b
    .line 30
    return-void
.end method


# virtual methods
.method public getFramesPerSecond()F
    .locals 2

    #@0
    .prologue
    .line 50
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    #@2
    int-to-float v0, v0

    #@3
    iget v1, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    #@5
    int-to-float v1, v1

    #@6
    div-float/2addr v0, v1

    #@7
    return v0
.end method

.method public getNanosPerPixel()F
    .locals 6

    #@0
    .prologue
    .line 54
    iget v2, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    #@2
    int-to-double v2, v2

    #@3
    iget v4, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    #@5
    int-to-double v4, v4

    #@6
    div-double/2addr v2, v4

    #@7
    const-wide v4, 0x412e848000000000L    # 1000000.0

    #@c
    mul-double v0, v2, v4

    #@e
    .line 55
    .local v0, "frameTimeInNanos":D
    iget v2, p0, Landroid/filterpacks/performance/Throughput;->mPixels:I

    #@10
    int-to-double v2, v2

    #@11
    div-double v2, v0, v2

    #@13
    double-to-float v2, v2

    #@14
    return v2
.end method

.method public getPeriodFrameCount()I
    .locals 1

    #@0
    .prologue
    .line 42
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodFrames:I

    #@2
    return v0
.end method

.method public getPeriodTime()I
    .locals 1

    #@0
    .prologue
    .line 46
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mPeriodTime:I

    #@2
    return v0
.end method

.method public getTotalFrameCount()I
    .locals 1

    #@0
    .prologue
    .line 38
    iget v0, p0, Landroid/filterpacks/performance/Throughput;->mTotalFrames:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/filterpacks/performance/Throughput;->getFramesPerSecond()F

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " FPS"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method
