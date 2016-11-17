.class final Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractionStateHandler"
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private final mScalingThreshold:F

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 345
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@6
    .line 341
    const/high16 v1, -0x40800000    # -1.0f

    #@8
    iput v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    #@a
    .line 346
    new-instance v0, Landroid/util/TypedValue;

    #@c
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@f
    .line 347
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v1

    #@13
    .line 348
    const v2, 0x1050015

    #@16
    .line 347
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@19
    .line 350
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScalingThreshold:F

    #@1f
    .line 351
    new-instance v1, Landroid/view/ScaleGestureDetector;

    #@21
    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    #@24
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@26
    .line 352
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@28
    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    #@2b
    .line 353
    new-instance v1, Landroid/view/GestureDetector;

    #@2d
    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@30
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    #@32
    .line 345
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 442
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    #@4
    .line 443
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    #@7
    .line 441
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 358
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@3
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@6
    .line 359
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    #@8
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@b
    .line 360
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@d
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x4

    #@12
    if-eq v0, v1, :cond_0

    #@14
    .line 361
    return-void

    #@15
    .line 363
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@18
    move-result v0

    #@19
    const/4 v1, 0x1

    #@1a
    if-ne v0, v1, :cond_1

    #@1c
    .line 364
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    #@1f
    .line 365
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@21
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->persistScale()V

    #@28
    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@2a
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    #@2d
    move-result v0

    #@2e
    if-ne v0, v2, :cond_2

    #@30
    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@32
    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    #@35
    .line 357
    :cond_1
    :goto_0
    return-void

    #@36
    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@38
    const/4 v1, 0x2

    #@39
    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    #@3c
    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 391
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    #@4
    if-nez v0, :cond_2

    #@6
    .line 392
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    #@8
    const/4 v5, 0x0

    #@9
    cmpg-float v0, v0, v5

    #@b
    if-gez v0, :cond_1

    #@d
    .line 393
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    #@13
    .line 401
    :cond_0
    return v4

    #@14
    .line 395
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    #@17
    move-result v0

    #@18
    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    #@1a
    sub-float v6, v0, v5

    #@1c
    .line 396
    .local v6, "deltaScale":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@1f
    move-result v0

    #@20
    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScalingThreshold:F

    #@22
    cmpl-float v0, v0, v5

    #@24
    if-lez v0, :cond_0

    #@26
    .line 397
    iput-boolean v9, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    #@28
    .line 398
    return v9

    #@29
    .line 404
    .end local v6    # "deltaScale":F
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@2b
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    #@32
    move-result v7

    #@33
    .line 405
    .local v7, "initialScale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    #@36
    move-result v0

    #@37
    mul-float v8, v7, v0

    #@39
    .line 410
    .local v8, "targetScale":F
    const/high16 v0, 0x40a00000    # 5.0f

    #@3b
    cmpl-float v0, v8, v0

    #@3d
    if-lez v0, :cond_3

    #@3f
    cmpl-float v0, v8, v7

    #@41
    if-lez v0, :cond_3

    #@43
    .line 412
    const/high16 v1, 0x40a00000    # 5.0f

    #@45
    .line 423
    .local v1, "scale":F
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    #@48
    move-result v2

    #@49
    .line 424
    .local v2, "pivotX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    #@4c
    move-result v3

    #@4d
    .line 425
    .local v3, "pivotY":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@4f
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@52
    move-result-object v0

    #@53
    move v5, v4

    #@54
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScale(FFFZI)Z

    #@57
    .line 427
    return v9

    #@58
    .line 413
    .end local v1    # "scale":F
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    #@5a
    cmpg-float v0, v8, v0

    #@5c
    if-gez v0, :cond_4

    #@5e
    cmpg-float v0, v8, v7

    #@60
    if-gez v0, :cond_4

    #@62
    .line 415
    const/high16 v1, 0x40000000    # 2.0f

    #@64
    .line 413
    .restart local v1    # "scale":F
    goto :goto_0

    #@65
    .line 420
    .end local v1    # "scale":F
    :cond_4
    move v1, v8

    #@66
    .restart local v1    # "scale":F
    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

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
    .line 437
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    #@3
    .line 436
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
    .line 377
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@3
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x4

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 378
    return v2

    #@b
    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    #@d
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    #@10
    move-result-object v0

    #@11
    .line 385
    const/4 v1, 0x0

    #@12
    .line 384
    invoke-virtual {v0, p3, p4, v1}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegionCenter(FFI)V

    #@15
    .line 386
    return v2
.end method
