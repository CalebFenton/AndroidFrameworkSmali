.class Lcom/android/server/AnyMotionDetector$RunningSignalStats;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunningSignalStats"
.end annotation


# instance fields
.field currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field energy:F

.field previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

.field sampleCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 375
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    #@6
    .line 374
    return-void
.end method


# virtual methods
.method public accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V
    .locals 5
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 390
    if-nez p1, :cond_0

    #@2
    .line 392
    return-void

    #@3
    .line 394
    :cond_0
    iget v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    #@5
    add-int/lit8 v2, v2, 0x1

    #@7
    iput v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    #@9
    .line 395
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    #@b
    invoke-virtual {v2, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    #@11
    .line 396
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@13
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@15
    .line 397
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@17
    .line 398
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 399
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@1d
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@1f
    invoke-virtual {v2, v3}, Lcom/android/server/AnyMotionDetector$Vector3;->minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    #@22
    move-result-object v0

    #@23
    .line 400
    .local v0, "dv":Lcom/android/server/AnyMotionDetector$Vector3;
    iget v2, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@25
    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@27
    mul-float/2addr v2, v3

    #@28
    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@2a
    iget v4, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@2c
    mul-float/2addr v3, v4

    #@2d
    add-float/2addr v2, v3

    #@2e
    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@30
    iget v4, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@32
    mul-float/2addr v3, v4

    #@33
    add-float v1, v2, v3

    #@35
    .line 401
    .local v1, "incrementalEnergy":F
    iget v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    #@37
    add-float/2addr v2, v1

    #@38
    iput v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    #@3a
    .line 389
    .end local v0    # "dv":Lcom/android/server/AnyMotionDetector$Vector3;
    .end local v1    # "incrementalEnergy":F
    :cond_1
    return-void
.end method

.method public getEnergy()F
    .locals 1

    #@0
    .prologue
    .line 417
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    #@2
    return v0
.end method

.method public getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 3

    #@0
    .prologue
    .line 410
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 411
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    #@6
    iget v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    #@8
    int-to-float v1, v1

    #@9
    const/high16 v2, 0x3f800000    # 1.0f

    #@b
    div-float v1, v2, v1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/AnyMotionDetector$Vector3;->times(F)Lcom/android/server/AnyMotionDetector$Vector3;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 413
    :cond_0
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method public getSampleCount()I
    .locals 1

    #@0
    .prologue
    .line 421
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    #@2
    return v0
.end method

.method public reset()V
    .locals 7

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 379
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@4
    .line 380
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@6
    .line 381
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    #@8
    const-wide/16 v2, 0x0

    #@a
    move v5, v4

    #@b
    move v6, v4

    #@c
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    #@f
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    #@11
    .line 382
    iput v4, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    #@13
    .line 383
    const/4 v0, 0x0

    #@14
    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    #@16
    .line 378
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 426
    const-string/jumbo v1, ""

    #@3
    .line 427
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 428
    const-string/jumbo v0, "null"

    #@a
    .line 429
    .local v0, "currentVectorString":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@c
    if-nez v3, :cond_1

    #@e
    .line 430
    const-string/jumbo v2, "null"

    #@11
    .line 431
    .local v2, "previousVectorString":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, "previousVector = "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, ", currentVector = "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    const-string/jumbo v4, ", sampleCount = "

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    iget v4, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    const-string/jumbo v4, ", energy = "

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    iget v4, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    .line 435
    return-object v1

    #@76
    .line 428
    .end local v0    # "currentVectorString":Ljava/lang/String;
    .end local v2    # "previousVectorString":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@78
    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    #@7b
    move-result-object v0

    #@7c
    .restart local v0    # "currentVectorString":Ljava/lang/String;
    goto :goto_0

    #@7d
    .line 430
    :cond_1
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    #@7f
    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .restart local v2    # "previousVectorString":Ljava/lang/String;
    goto :goto_1
.end method
