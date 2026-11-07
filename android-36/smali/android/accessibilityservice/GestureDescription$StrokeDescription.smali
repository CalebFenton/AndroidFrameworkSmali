.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# static fields
.field private static final greylist-max-o INVALID_STROKE_ID:I = -0x1

.field static greylist-max-o sIdCounter:I


# instance fields
.field greylist-max-o mContinued:Z

.field greylist-max-o mContinuedStrokeId:I

.field greylist-max-o mEndTime:J

.field greylist-max-o mId:I

.field greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mPathMeasure:Landroid/graphics/PathMeasure;

.field greylist-max-o mStartTime:J

.field greylist-max-o mTapLocation:[F

.field private greylist-max-o mTimeToLengthConversion:F


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Path;JJ)V
    .registers 13
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startTime"    # J
    .param p4, "duration"    # J

    .line 264
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "path":Landroid/graphics/Path;
    .end local p2    # "startTime":J
    .end local p4    # "duration":J
    .local v1, "path":Landroid/graphics/Path;
    .local v2, "startTime":J
    .local v4, "duration":J
    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    .line 265
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;JJZ)V
    .registers 14
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startTime"    # J
    .param p4, "duration"    # J
    .param p6, "willContinue"    # Z

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 283
    iput-boolean p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    .line 284
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_12

    move v2, v3

    goto :goto_13

    :cond_12
    move v2, v4

    :goto_13
    const-string v5, "Duration must be positive"

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 285
    cmp-long v0, p2, v0

    if-ltz v0, :cond_1e

    move v0, v3

    goto :goto_1f

    :cond_1e
    move v0, v4

    :goto_1f
    const-string v1, "Start time must not be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v1, "Path is empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 287
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 288
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 289
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_50

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_50

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_50

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_50

    goto :goto_51

    :cond_50
    move v3, v4

    :goto_51
    const-string v1, "Path bounds must not be negative"

    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 292
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    .line 293
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1, p1, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 294
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_88

    .line 296
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 297
    .local v1, "tempPath":Landroid/graphics/Path;
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    .line 299
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 300
    .local v3, "pathMeasure":Landroid/graphics/PathMeasure;
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 302
    .end local v1    # "tempPath":Landroid/graphics/Path;
    .end local v3    # "pathMeasure":Landroid/graphics/PathMeasure;
    :cond_88
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v1

    if-nez v1, :cond_ae

    .line 309
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 310
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 311
    add-long v1, p2, p4

    iput-wide v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 312
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result v1

    long-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    .line 313
    sget v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    .line 314
    return-void

    .line 303
    :cond_ae
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path has more than one contour"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist continueStroke(Landroid/graphics/Path;JJZ)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .registers 15
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startTime"    # J
    .param p4, "duration"    # J
    .param p6, "willContinue"    # Z

    .line 370
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    if-eqz v0, :cond_12

    .line 374
    new-instance v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    .end local p1    # "path":Landroid/graphics/Path;
    .end local p2    # "startTime":J
    .end local p4    # "duration":J
    .end local p6    # "willContinue":Z
    .local v2, "path":Landroid/graphics/Path;
    .local v3, "startTime":J
    .local v5, "duration":J
    .local v7, "willContinue":Z
    invoke-direct/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    .line 376
    .local v1, "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    iget p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    iput p1, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 377
    return-object v1

    .line 371
    .end local v1    # "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v3    # "startTime":J
    .end local v5    # "duration":J
    .end local v7    # "willContinue":Z
    .restart local p1    # "path":Landroid/graphics/Path;
    .restart local p2    # "startTime":J
    .restart local p4    # "duration":J
    .restart local p6    # "willContinue":Z
    :cond_12
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "path":Landroid/graphics/Path;
    .end local p2    # "startTime":J
    .restart local v2    # "path":Landroid/graphics/Path;
    .restart local v3    # "startTime":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only strokes marked willContinue can be continued"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getContinuedStrokeId()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return v0
.end method

.method public whitelist getDuration()J
    .registers 5

    .line 340
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 351
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return v0
.end method

.method greylist-max-o getLength()F
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    return v0
.end method

.method public whitelist getPath()Landroid/graphics/Path;
    .registers 3

    .line 322
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method greylist-max-o getPosForTime(J[F)Z
    .registers 8
    .param p1, "time"    # J
    .param p3, "pos"    # [F

    .line 405
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    if-eqz v0, :cond_13

    .line 406
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p3, v1

    .line 407
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p3, v1

    .line 408
    return v1

    .line 410
    :cond_13
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 412
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result v2

    invoke-virtual {v0, v2, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v0

    return v0

    .line 414
    :cond_25
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    mul-float/2addr v0, v2

    .line 415
    .local v0, "length":F
    iget-object v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2, v0, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v1

    return v1
.end method

.method public whitelist getStartTime()J
    .registers 3

    .line 331
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    return-wide v0
.end method

.method greylist-max-o hasPointForTime(J)Z
    .registers 5
    .param p1, "time"    # J

    .line 419
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_e

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist willContinue()Z
    .registers 2

    .line 386
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    return v0
.end method
