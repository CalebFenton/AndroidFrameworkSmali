.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractonStateHandler"
.end annotation


# static fields
.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 1.3f


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private final mScalingThreshold:F

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 494
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@6
    .line 491
    const/high16 v1, -0x40800000    # -1.0f

    #@8
    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    #@a
    .line 495
    new-instance v0, Landroid/util/TypedValue;

    #@c
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@f
    .line 496
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v1

    #@13
    .line 497
    const v2, 0x1050015

    #@16
    .line 496
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@19
    .line 499
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScalingThreshold:F

    #@1f
    .line 500
    new-instance v1, Landroid/view/ScaleGestureDetector;

    #@21
    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    #@24
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@26
    .line 501
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@28
    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    #@2b
    .line 502
    new-instance v1, Landroid/view/GestureDetector;

    #@2d
    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@30
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    #@32
    .line 494
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    .line 576
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    #@4
    .line 577
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    #@7
    .line 575
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 506
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@3
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@6
    .line 507
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    #@8
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@b
    .line 508
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@d
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get2(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x4

    #@12
    if-eq v1, v2, :cond_0

    #@14
    .line 509
    return-void

    #@15
    .line 511
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x1

    #@1a
    if-ne v1, v2, :cond_2

    #@1c
    .line 512
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    #@1f
    .line 513
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@21
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    #@28
    move-result v1

    #@29
    .line 514
    const v2, 0x3fa66666    # 1.3f

    #@2c
    .line 513
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    #@2f
    move-result v1

    #@30
    .line 514
    const/high16 v2, 0x40a00000    # 5.0f

    #@32
    .line 513
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    #@35
    move-result v0

    #@36
    .line 515
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@38
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap3(Lcom/android/server/accessibility/ScreenMagnifier;)F

    #@3b
    move-result v1

    #@3c
    cmpl-float v1, v0, v1

    #@3e
    if-eqz v1, :cond_1

    #@40
    .line 516
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@42
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap8(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    #@45
    .line 518
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@47
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->-get7(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@4a
    move-result v1

    #@4b
    if-ne v1, v3, :cond_3

    #@4d
    .line 519
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@4f
    invoke-static {v1, v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@52
    .line 505
    .end local v0    # "scale":F
    :cond_2
    :goto_0
    return-void

    #@53
    .line 521
    .restart local v0    # "scale":F
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@55
    const/4 v2, 0x2

    #@56
    invoke-static {v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap9(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    #@59
    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 542
    iget-boolean v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    #@4
    if-nez v3, :cond_2

    #@6
    .line 543
    iget v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    #@8
    const/4 v4, 0x0

    #@9
    cmpg-float v3, v3, v4

    #@b
    if-gez v3, :cond_1

    #@d
    .line 544
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    #@10
    move-result v3

    #@11
    iput v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    #@13
    .line 552
    :cond_0
    return v7

    #@14
    .line 546
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    #@17
    move-result v3

    #@18
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    #@1a
    sub-float v0, v3, v4

    #@1c
    .line 547
    .local v0, "deltaScale":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@1f
    move-result v3

    #@20
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScalingThreshold:F

    #@22
    cmpl-float v3, v3, v4

    #@24
    if-lez v3, :cond_0

    #@26
    .line 548
    iput-boolean v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    #@28
    .line 549
    return v6

    #@29
    .line 554
    .end local v0    # "deltaScale":F
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2b
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    #@32
    move-result v3

    #@33
    .line 555
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    #@36
    move-result v4

    #@37
    .line 554
    mul-float v1, v3, v4

    #@39
    .line 556
    .local v1, "newScale":F
    const v3, 0x3fa66666    # 1.3f

    #@3c
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    #@3f
    move-result v3

    #@40
    const/high16 v4, 0x40a00000    # 5.0f

    #@42
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    #@45
    move-result v2

    #@46
    .line 560
    .local v2, "normalizedNewScale":F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@48
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    #@4f
    move-result v4

    #@50
    .line 561
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    #@53
    move-result v5

    #@54
    .line 560
    invoke-virtual {v3, v2, v4, v5, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScale(FFFZ)V

    #@57
    .line 562
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get2(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x4

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    .line 572
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    #@3
    .line 571
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 529
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@3
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get2(Lcom/android/server/accessibility/ScreenMagnifier;)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x4

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 530
    return v2

    #@b
    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@d
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-get3(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p3, p4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->offsetMagnifiedRegionCenter(FF)V

    #@14
    .line 537
    return v2
.end method
