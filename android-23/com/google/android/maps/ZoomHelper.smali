.class Lcom/google/android/maps/ZoomHelper;
.super Ljava/lang/Object;
.source "ZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/ZoomHelper$Snapshot;
    }
.end annotation


# instance fields
.field private final mAnimations:Landroid/view/animation/AnimationSet;

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mCommitTime:J

.field private final mController:Lcom/google/android/maps/MapController;

.field private mFading:Z

.field private final mLastDrawnScale:Landroid/view/animation/Transformation;

.field private mManualZoomActive:Z

.field private final mMapView:Lcom/google/android/maps/MapView;

.field private mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

.field private mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

.field private mSnapshotOffsetX:F

.field private mSnapshotOffsetY:F

.field private mSnapshotScale:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field protected final mTempPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;Lcom/google/android/maps/MapController;)V
    .locals 2
    .param p1, "mapView"    # Lcom/google/android/maps/MapView;
    .param p2, "controller"    # Lcom/google/android/maps/MapController;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    new-instance v0, Landroid/view/animation/Transformation;

    #@6
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@b
    .line 63
    new-instance v0, Landroid/view/animation/AnimationSet;

    #@d
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@10
    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    #@12
    .line 66
    new-instance v0, Landroid/graphics/Paint;

    #@14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@17
    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    #@19
    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    #@1b
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mTempMatrix:Landroid/graphics/Matrix;

    #@20
    .line 74
    const/4 v0, 0x0

    #@21
    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@23
    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    #@25
    iput v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotScale:F

    #@27
    .line 86
    iput-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    #@29
    .line 90
    const-wide v0, 0x7fffffffffffffffL

    #@2e
    iput-wide v0, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    #@30
    .line 93
    new-instance v0, Landroid/graphics/Point;

    #@32
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@35
    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mTempPoint:Landroid/graphics/Point;

    #@37
    .line 103
    iput-object p1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@39
    .line 104
    iput-object p2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    #@3b
    .line 107
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    #@3d
    const/4 v1, 0x1

    #@3e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@41
    .line 110
    new-instance v1, Lcom/google/android/maps/PixelConverter;

    #@43
    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Lcom/google/android/maps/PixelConverter;

    #@49
    invoke-direct {v1, v0}, Lcom/google/android/maps/PixelConverter;-><init>(Lcom/google/android/maps/PixelConverter;)V

    #@4c
    iput-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    #@4e
    .line 102
    return-void
.end method

.method private addFade()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 442
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@3
    const/high16 v1, 0x3f800000    # 1.0f

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@9
    .line 443
    .local v0, "fade":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    #@d
    .line 444
    const-wide/16 v2, 0x96

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@12
    .line 445
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    #@15
    .line 446
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    #@18
    .line 447
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    #@1a
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@1d
    .line 441
    return-void
.end method

.method private addScale(J)V
    .locals 9
    .param p1, "time"    # J

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 417
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@4
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@7
    move-result-object v3

    #@8
    const/high16 v4, 0x3f800000    # 1.0f

    #@a
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    #@d
    move-result v1

    #@e
    .line 421
    .local v1, "fromFactor":F
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@10
    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid/com/google/map/Zoom;

    #@12
    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@14
    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getZoom()Landroid/com/google/map/Zoom;

    #@17
    move-result-object v4

    #@18
    invoke-direct {p0, v3, v4}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid/com/google/map/Zoom;Landroid/com/google/map/Zoom;)F

    #@1b
    move-result v2

    #@1c
    .line 423
    .local v2, "toFactor":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #@1e
    .line 425
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@20
    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    #@22
    aget v5, v3, v7

    #@24
    .line 426
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@26
    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    #@28
    aget v6, v3, v8

    #@2a
    move v3, v1

    #@2b
    move v4, v2

    #@2c
    .line 423
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #@2f
    .line 427
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v8}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    #@32
    .line 428
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    #@35
    .line 429
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    #@38
    .line 430
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->startNow()V

    #@3b
    .line 431
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    #@3d
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@40
    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@43
    .line 433
    iput-boolean v7, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    #@45
    .line 434
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    #@47
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@4e
    .line 435
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    #@50
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@53
    .line 414
    return-void
.end method

.method private static calculateRoundedZoom(FI)I
    .locals 8
    .param p0, "scale"    # F
    .param p1, "startingZoomLevel"    # I

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 327
    cmpg-float v3, p0, v4

    #@4
    if-gez v3, :cond_1

    #@6
    const/4 v2, 0x1

    #@7
    .line 328
    .local v2, "zoomOut":Z
    :goto_0
    if-eqz v2, :cond_0

    #@9
    div-float p0, v4, p0

    #@b
    .line 329
    :cond_0
    float-to-int v1, p0

    #@c
    .line 330
    .local v1, "intZoom":I
    const/4 v0, 0x0

    #@d
    .line 331
    .local v0, "i":I
    :goto_1
    const/4 v3, 0x1

    #@e
    if-le v1, v3, :cond_2

    #@10
    .line 332
    shr-int/lit8 v1, v1, 0x1

    #@12
    .line 333
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_1

    #@15
    .line 327
    .end local v0    # "i":I
    .end local v1    # "intZoom":I
    .end local v2    # "zoomOut":Z
    :cond_1
    const/4 v2, 0x0

    #@16
    .restart local v2    # "zoomOut":Z
    goto :goto_0

    #@17
    .line 339
    .restart local v0    # "i":I
    .restart local v1    # "intZoom":I
    :cond_2
    float-to-double v4, p0

    #@18
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@1a
    sub-double v4, v6, v4

    #@1c
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    #@1f
    move-result-wide v4

    #@20
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    #@22
    cmpl-double v3, v4, v6

    #@24
    if-lez v3, :cond_3

    #@26
    .line 340
    add-int/lit8 v0, v0, 0x1

    #@28
    .line 342
    :cond_3
    if-eqz v2, :cond_4

    #@2a
    neg-int v0, v0

    #@2b
    .end local v0    # "i":I
    :cond_4
    add-int v3, p1, v0

    #@2d
    return v3
.end method

.method private createSnapshot()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 464
    new-instance v1, Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v1, v2}, Lcom/google/android/maps/ZoomHelper$Snapshot;-><init>(Lcom/google/android/maps/ZoomHelper$Snapshot;)V

    #@7
    .line 465
    .local v1, "snapshot":Lcom/google/android/maps/ZoomHelper$Snapshot;
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@9
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getWidth()I

    #@c
    move-result v2

    #@d
    .line 466
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@f
    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getHeight()I

    #@12
    move-result v3

    #@13
    .line 467
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@15
    .line 465
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@18
    move-result-object v2

    #@19
    iput-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    #@1b
    .line 468
    new-instance v0, Landroid/graphics/Canvas;

    #@1d
    iget-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    #@1f
    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@22
    .line 469
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    #@25
    .line 470
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@27
    invoke-virtual {v2, v0, v5}, Lcom/google/android/maps/MapView;->drawMap(Landroid/graphics/Canvas;Z)Z

    #@2a
    .line 471
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@2c
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid/com/google/map/Zoom;

    #@2f
    move-result-object v2

    #@30
    iput-object v2, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid/com/google/map/Zoom;

    #@32
    .line 472
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@34
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    #@37
    .line 473
    iput-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@39
    .line 463
    return-void
.end method

.method private getScale(Landroid/com/google/map/Zoom;Landroid/com/google/map/Zoom;)F
    .locals 2
    .param p1, "numerator"    # Landroid/com/google/map/Zoom;
    .param p2, "denominator"    # Landroid/com/google/map/Zoom;

    #@0
    .prologue
    .line 405
    invoke-virtual {p2, p1}, Landroid/com/google/map/Zoom;->isMoreZoomedIn(Landroid/com/google/map/Zoom;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 406
    invoke-virtual {p1, p2}, Landroid/com/google/map/Zoom;->getZoomRatio(Landroid/com/google/map/Zoom;)I

    #@9
    move-result v0

    #@a
    int-to-float v0, v0

    #@b
    .line 405
    :goto_0
    return v0

    #@c
    .line 407
    :cond_0
    invoke-virtual {p2, p1}, Landroid/com/google/map/Zoom;->getZoomRatio(Landroid/com/google/map/Zoom;)I

    #@f
    move-result v0

    #@10
    int-to-float v0, v0

    #@11
    const/high16 v1, 0x3f800000    # 1.0f

    #@13
    div-float v0, v1, v0

    #@15
    goto :goto_0
.end method

.method private stepAnimation(JLcom/google/android/maps/PixelConverter;)V
    .locals 7
    .param p1, "when"    # J
    .param p3, "converter"    # Lcom/google/android/maps/PixelConverter;

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    #@2
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@4
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@7
    .line 483
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@9
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@c
    move-result-object v1

    #@d
    .line 484
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@f
    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoom()Landroid/com/google/map/Zoom;

    #@12
    move-result-object v0

    #@13
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@15
    iget-object v2, v2, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid/com/google/map/Zoom;

    #@17
    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid/com/google/map/Zoom;Landroid/com/google/map/Zoom;)F

    #@1a
    move-result v2

    #@1b
    .line 485
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@1d
    iget-object v3, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    #@1f
    .line 486
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@21
    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    #@23
    const/4 v4, 0x0

    #@24
    aget v4, v0, v4

    #@26
    .line 487
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@28
    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    #@2a
    const/4 v5, 0x1

    #@2b
    aget v5, v0, v5

    #@2d
    move-object v0, p3

    #@2e
    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/PixelConverter;->setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V

    #@31
    .line 480
    return-void
.end method

.method private updateSnapshotFixedPoint(FF)V
    .locals 5
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F

    #@0
    .prologue
    .line 285
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@2
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/google/android/maps/PixelConverter;

    #@8
    .line 287
    .local v1, "pc":Lcom/google/android/maps/PixelConverter;
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mTempMatrix:Landroid/graphics/Matrix;

    #@a
    .line 288
    .local v0, "inverse":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@c
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_0

    #@16
    .line 289
    const-string/jumbo v2, "ZoomHelper"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Singular matrix "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@27
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 292
    :cond_0
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V

    #@39
    .line 284
    return-void
.end method

.method private updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V
    .locals 5
    .param p1, "pc"    # Lcom/google/android/maps/PixelConverter;
    .param p2, "inverse"    # Landroid/graphics/Matrix;
    .param p3, "xOffset"    # F
    .param p4, "yOffset"    # F

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 302
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@4
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    #@7
    move-result v1

    #@8
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    #@b
    move-result v2

    #@c
    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/PixelConverter;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    #@f
    move-result-object v1

    #@10
    iput-object v1, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    #@12
    .line 308
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@14
    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    #@16
    aput p3, v0, v3

    #@18
    .line 309
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@1a
    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    #@1c
    aput p4, v0, v4

    #@1e
    .line 310
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@20
    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    #@22
    aput p3, v0, v3

    #@24
    .line 311
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@26
    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    #@28
    aput p4, v0, v4

    #@2a
    .line 312
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@2c
    iget-object v0, v0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    #@2e
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@31
    .line 296
    return-void
.end method


# virtual methods
.method beginZoom(FF)V
    .locals 3
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 199
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    #@4
    .line 200
    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->createSnapshot()V

    #@7
    .line 201
    iput v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotOffsetX:F

    #@9
    .line 202
    iput v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotOffsetY:F

    #@b
    .line 203
    const/high16 v1, 0x3f800000    # 1.0f

    #@d
    iput v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotScale:F

    #@f
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(FF)V

    #@12
    .line 206
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@14
    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/google/android/maps/PixelConverter;

    #@1a
    .line 207
    .local v0, "pc":Lcom/google/android/maps/PixelConverter;
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    #@1c
    invoke-virtual {v1, v0}, Lcom/google/android/maps/PixelConverter;->setMatricesFrom(Lcom/google/android/maps/PixelConverter;)V

    #@1f
    .line 198
    return-void
.end method

.method doZoom(Landroid/com/google/map/Zoom;ZII)Z
    .locals 6
    .param p1, "newZoom"    # Landroid/com/google/map/Zoom;
    .param p2, "delay"    # Z
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 156
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 157
    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->createSnapshot()V

    #@8
    .line 160
    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@a
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/maps/PixelConverter;

    #@10
    .line 162
    .local v0, "pc":Lcom/google/android/maps/PixelConverter;
    int-to-float v2, p3

    #@11
    int-to-float v3, p4

    #@12
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(FF)V

    #@15
    .line 166
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    #@17
    invoke-virtual {v2, p1}, Lcom/google/android/maps/MapController;->zoomTo(Landroid/com/google/map/Zoom;)V

    #@1a
    .line 169
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@1c
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getWidth()I

    #@1f
    move-result v2

    #@20
    div-int/lit8 v2, v2, 0x2

    #@22
    if-ne p3, v2, :cond_1

    #@24
    .line 170
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@26
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getHeight()I

    #@29
    move-result v2

    #@2a
    div-int/lit8 v2, v2, 0x2

    #@2c
    if-eq p4, v2, :cond_2

    #@2e
    .line 171
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@30
    iget-object v2, v2, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    #@32
    const/4 v3, 0x0

    #@33
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    #@36
    move-result-object v1

    #@37
    .line 172
    .local v1, "realLocationOfFixedPoint":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    #@39
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@3b
    sub-int/2addr v3, p3

    #@3c
    .line 173
    iget v4, v1, Landroid/graphics/Point;->y:I

    #@3e
    sub-int/2addr v4, p4

    #@3f
    .line 172
    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    #@42
    .line 176
    .end local v1    # "realLocationOfFixedPoint":Landroid/graphics/Point;
    :cond_2
    const-wide/16 v2, 0x12c

    #@44
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->addScale(J)V

    #@47
    .line 181
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@4a
    move-result-wide v2

    #@4b
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    #@4e
    .line 184
    if-eqz p2, :cond_3

    #@50
    .line 185
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@53
    move-result-wide v2

    #@54
    const-wide/16 v4, 0x258

    #@56
    add-long/2addr v2, v4

    #@57
    iput-wide v2, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    #@59
    .line 190
    :goto_0
    const/4 v2, 0x1

    #@5a
    return v2

    #@5b
    .line 187
    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@5d
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->preLoad()V

    #@60
    goto :goto_0
.end method

.method doZoom(ZZII)Z
    .locals 4
    .param p1, "zoomIn"    # Z
    .param p2, "delay"    # Z
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I

    #@0
    .prologue
    .line 136
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@2
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid/com/google/map/Zoom;

    #@5
    move-result-object v0

    #@6
    .line 137
    .local v0, "currentZoom":Landroid/com/google/map/Zoom;
    if-eqz p1, :cond_1

    #@8
    .line 138
    invoke-virtual {v0}, Landroid/com/google/map/Zoom;->getNextHigherZoom()Landroid/com/google/map/Zoom;

    #@b
    move-result-object v1

    #@c
    .line 141
    .local v1, "newZoom":Landroid/com/google/map/Zoom;
    :goto_0
    if-eqz v1, :cond_0

    #@e
    invoke-virtual {v1}, Landroid/com/google/map/Zoom;->getZoomLevel()I

    #@11
    move-result v2

    #@12
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@14
    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    #@17
    move-result v3

    #@18
    if-le v2, v3, :cond_2

    #@1a
    .line 143
    :cond_0
    const/4 v2, 0x0

    #@1b
    return v2

    #@1c
    .line 139
    .end local v1    # "newZoom":Landroid/com/google/map/Zoom;
    :cond_1
    invoke-virtual {v0}, Landroid/com/google/map/Zoom;->getNextLowerZoom()Landroid/com/google/map/Zoom;

    #@1f
    move-result-object v1

    #@20
    .restart local v1    # "newZoom":Landroid/com/google/map/Zoom;
    goto :goto_0

    #@21
    .line 146
    :cond_2
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/android/maps/ZoomHelper;->doZoom(Landroid/com/google/map/Zoom;ZII)Z

    #@24
    move-result v2

    #@25
    return v2
.end method

.method endZoom()V
    .locals 15

    #@0
    .prologue
    .line 241
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@2
    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@5
    move-result-object v7

    #@6
    check-cast v7, Lcom/google/android/maps/PixelConverter;

    #@8
    .line 245
    .local v7, "pc":Lcom/google/android/maps/PixelConverter;
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@a
    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@d
    move-result-object v12

    #@e
    const/high16 v13, 0x3f800000    # 1.0f

    #@10
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapRadius(F)F

    #@13
    move-result v9

    #@14
    .line 246
    .local v9, "scaleFactorBegin":F
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@16
    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getZoom()Landroid/com/google/map/Zoom;

    #@19
    move-result-object v6

    #@1a
    .line 247
    .local v6, "oldZoom":Landroid/com/google/map/Zoom;
    invoke-virtual {v6}, Landroid/com/google/map/Zoom;->getZoomLevel()I

    #@1d
    move-result v12

    #@1e
    invoke-static {v9, v12}, Lcom/google/android/maps/ZoomHelper;->calculateRoundedZoom(FI)I

    #@21
    move-result v4

    #@22
    .line 248
    .local v4, "newLevel":I
    invoke-static {v4}, Landroid/com/google/map/Zoom;->getZoom(I)Landroid/com/google/map/Zoom;

    #@25
    move-result-object v5

    #@26
    .line 250
    .local v5, "newZoom":Landroid/com/google/map/Zoom;
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    #@28
    invoke-virtual {v12, v5}, Lcom/google/android/maps/MapController;->zoomTo(Landroid/com/google/map/Zoom;)V

    #@2b
    .line 253
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@2d
    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    #@2f
    const/4 v13, 0x0

    #@30
    aget v2, v12, v13

    #@32
    .line 254
    .local v2, "focusX":F
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@34
    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    #@36
    const/4 v13, 0x1

    #@37
    aget v3, v12, v13

    #@39
    .line 255
    .local v3, "focusY":F
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@3b
    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getWidth()I

    #@3e
    move-result v12

    #@3f
    div-int/lit8 v12, v12, 0x2

    #@41
    int-to-float v0, v12

    #@42
    .line 256
    .local v0, "centerX":F
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@44
    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->getHeight()I

    #@47
    move-result v12

    #@48
    div-int/lit8 v12, v12, 0x2

    #@4a
    int-to-float v1, v12

    #@4b
    .line 257
    .local v1, "centerY":F
    float-to-int v10, v2

    #@4c
    .line 258
    .local v10, "xOffset":I
    float-to-int v11, v3

    #@4d
    .line 259
    .local v11, "yOffset":I
    int-to-float v12, v10

    #@4e
    cmpl-float v12, v12, v0

    #@50
    if-nez v12, :cond_0

    #@52
    int-to-float v12, v11

    #@53
    cmpl-float v12, v12, v1

    #@55
    if-eqz v12, :cond_1

    #@57
    .line 260
    :cond_0
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@59
    iget-object v12, v12, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    #@5b
    const/4 v13, 0x0

    #@5c
    const/4 v14, 0x0

    #@5d
    invoke-virtual {v7, v12, v13, v14}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    #@60
    move-result-object v8

    #@61
    .line 261
    .local v8, "realLocationOfFixedPoint":Landroid/graphics/Point;
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mController:Lcom/google/android/maps/MapController;

    #@63
    iget v13, v8, Landroid/graphics/Point;->x:I

    #@65
    sub-int/2addr v13, v10

    #@66
    .line 262
    iget v14, v8, Landroid/graphics/Point;->y:I

    #@68
    sub-int/2addr v14, v11

    #@69
    .line 261
    invoke-virtual {v12, v13, v14}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    #@6c
    .line 266
    .end local v8    # "realLocationOfFixedPoint":Landroid/graphics/Point;
    :cond_1
    const-wide/16 v12, 0xc8

    #@6e
    invoke-direct {p0, v12, v13}, Lcom/google/android/maps/ZoomHelper;->addScale(J)V

    #@71
    .line 271
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@74
    move-result-wide v12

    #@75
    invoke-direct {p0, v12, v13, v7}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    #@78
    .line 274
    iget-object v12, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@7a
    invoke-virtual {v12}, Lcom/google/android/maps/MapView;->preLoad()V

    #@7d
    .line 276
    const/4 v12, 0x0

    #@7e
    iput-boolean v12, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    #@80
    .line 277
    const/high16 v12, 0x3f800000    # 1.0f

    #@82
    iput v12, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotScale:F

    #@84
    .line 240
    return-void
.end method

.method getCurrentScale()F
    .locals 1

    #@0
    .prologue
    .line 281
    iget v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotScale:F

    #@2
    return v0
.end method

.method onDraw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "when"    # J

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    const/16 v2, 0xff

    #@5
    const/4 v4, 0x0

    #@6
    .line 351
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@8
    if-nez v1, :cond_0

    #@a
    return v4

    #@b
    .line 352
    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@d
    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/maps/PixelConverter;

    #@13
    .line 353
    .local v0, "converter":Lcom/google/android/maps/PixelConverter;
    invoke-virtual {p0, p3, p4}, Lcom/google/android/maps/ZoomHelper;->shouldDrawMap(J)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 354
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    #@1c
    .line 357
    :cond_1
    iget-wide v2, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    #@1e
    cmp-long v1, p3, v2

    #@20
    if-lez v1, :cond_2

    #@22
    .line 358
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@24
    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->preLoad()V

    #@27
    .line 359
    const-wide v2, 0x7fffffffffffffffL

    #@2c
    iput-wide v2, p0, Lcom/google/android/maps/ZoomHelper;->mCommitTime:J

    #@2e
    .line 362
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    #@30
    if-nez v1, :cond_3

    #@32
    .line 364
    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/maps/ZoomHelper;->stepAnimation(JLcom/google/android/maps/PixelConverter;)V

    #@35
    .line 368
    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    #@37
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@39
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    #@3c
    move-result v2

    #@3d
    const/high16 v3, 0x437f0000    # 255.0f

    #@3f
    mul-float/2addr v2, v3

    #@40
    float-to-int v2, v2

    #@41
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    #@44
    .line 370
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@47
    .line 371
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@49
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@50
    .line 372
    iget v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotOffsetX:F

    #@52
    iget v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotOffsetY:F

    #@54
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@57
    .line 373
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@59
    iget-object v1, v1, Lcom/google/android/maps/ZoomHelper$Snapshot;->bitmap:Landroid/graphics/Bitmap;

    #@5b
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mBitmapPaint:Landroid/graphics/Paint;

    #@5d
    invoke-virtual {p1, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@60
    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@63
    .line 376
    iget-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    #@65
    if-nez v1, :cond_6

    #@67
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    #@69
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_6

    #@6f
    .line 377
    iget-boolean v1, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    #@71
    if-eqz v1, :cond_4

    #@73
    .line 380
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    #@75
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@78
    move-result-object v1

    #@79
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@7c
    .line 381
    iput-object v7, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@7e
    .line 382
    iput-boolean v4, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    #@80
    .line 383
    invoke-virtual {v0}, Lcom/google/android/maps/PixelConverter;->resetMatrix()V

    #@83
    .line 384
    return v4

    #@84
    .line 385
    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@86
    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->canCoverCenter()Z

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_5

    #@8c
    .line 388
    iput-boolean v5, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    #@8e
    .line 389
    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper;->addFade()V

    #@91
    .line 390
    return v5

    #@92
    .line 395
    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@94
    iget-object v1, v1, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    #@96
    invoke-virtual {v1}, Lcom/google/android/maps/MapView$Repainter;->repaint()V

    #@99
    .line 396
    return v4

    #@9a
    .line 398
    :cond_6
    return v5
.end method

.method scrollBy(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotOffsetX:F

    #@2
    int-to-float v1, p1

    #@3
    iget v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotScale:F

    #@5
    div-float/2addr v1, v2

    #@6
    sub-float/2addr v0, v1

    #@7
    iput v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotOffsetX:F

    #@9
    .line 233
    iget v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotOffsetY:F

    #@b
    int-to-float v1, p2

    #@c
    iget v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotScale:F

    #@e
    div-float/2addr v1, v2

    #@f
    sub-float/2addr v0, v1

    #@10
    iput v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotOffsetY:F

    #@12
    .line 231
    return-void
.end method

.method shouldDrawMap(J)Z
    .locals 1
    .param p1, "when"    # J

    #@0
    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/google/android/maps/ZoomHelper;->mManualZoomActive:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 457
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Lcom/google/android/maps/ZoomHelper;->mFading:Z

    #@a
    if-nez v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/google/android/maps/ZoomHelper;->mAnimations:Landroid/view/animation/AnimationSet;

    #@e
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    #@11
    move-result v0

    #@12
    .line 456
    :goto_0
    return v0

    #@13
    .line 457
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 456
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method updateZoom(FFF)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    #@0
    .prologue
    .line 217
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    #@2
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mPCAtBeginningOfManualZoom:Lcom/google/android/maps/PixelConverter;

    #@4
    invoke-virtual {v3}, Lcom/google/android/maps/PixelConverter;->getInverseMatrix()Landroid/graphics/Matrix;

    #@7
    move-result-object v3

    #@8
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/google/android/maps/ZoomHelper;->updateSnapshotFixedPoint(Lcom/google/android/maps/PixelConverter;Landroid/graphics/Matrix;FF)V

    #@b
    .line 219
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mLastDrawnScale:Landroid/view/animation/Transformation;

    #@d
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@10
    move-result-object v1

    #@11
    .line 221
    .local v1, "m":Landroid/graphics/Matrix;
    neg-float v2, p2

    #@12
    neg-float v3, p3

    #@13
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@16
    .line 222
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@19
    .line 223
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@1c
    .line 224
    iget v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotScale:F

    #@1e
    mul-float/2addr v2, p1

    #@1f
    iput v2, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshotScale:F

    #@21
    .line 226
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@23
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/google/android/maps/PixelConverter;

    #@29
    .line 227
    .local v0, "pc":Lcom/google/android/maps/PixelConverter;
    iget-object v2, p0, Lcom/google/android/maps/ZoomHelper;->mMapView:Lcom/google/android/maps/MapView;

    #@2b
    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoom()Landroid/com/google/map/Zoom;

    #@2e
    move-result-object v2

    #@2f
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@31
    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->zoom:Landroid/com/google/map/Zoom;

    #@33
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/ZoomHelper;->getScale(Landroid/com/google/map/Zoom;Landroid/com/google/map/Zoom;)F

    #@36
    move-result v2

    #@37
    iget-object v3, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@39
    iget-object v3, v3, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPoint:Lcom/google/android/maps/GeoPoint;

    #@3b
    .line 228
    iget-object v4, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@3d
    iget-object v4, v4, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    #@3f
    const/4 v5, 0x0

    #@40
    aget v4, v4, v5

    #@42
    iget-object v5, p0, Lcom/google/android/maps/ZoomHelper;->mSnapshot:Lcom/google/android/maps/ZoomHelper$Snapshot;

    #@44
    iget-object v5, v5, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    #@46
    const/4 v6, 0x1

    #@47
    aget v5, v5, v6

    #@49
    .line 227
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/PixelConverter;->setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V

    #@4c
    .line 216
    return-void
.end method
