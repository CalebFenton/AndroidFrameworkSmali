.class final Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;
.super Ljava/lang/Object;
.source "ScrollCaptureViewSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/ScrollCaptureViewSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewRenderer"
.end annotation


# static fields
.field private static final blacklist AMBIENT_SHADOW_ALPHA:F = 0.039f

.field private static final blacklist LIGHT_RADIUS_DP:F = 800.0f

.field private static final blacklist LIGHT_Z_DP:F = 400.0f

.field private static final blacklist SPOT_SHADOW_ALPHA:F = 0.039f

.field private static final blacklist TAG:Ljava/lang/String; = "ViewRenderer"


# instance fields
.field private final blacklist mCaptureRenderNode:Landroid/graphics/RenderNode;

.field private blacklist mLastRenderedSourceDrawingId:J

.field private final blacklist mRenderer:Landroid/graphics/HardwareRenderer;

.field private blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mTempLocation:[I

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    .line 329
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    .line 330
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    .line 334
    new-instance v0, Landroid/graphics/HardwareRenderer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 335
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    const-string v1, "ScrollCapture"

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setName(Ljava/lang/String;)V

    .line 336
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "ScrollCaptureRoot"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    .line 337
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setOpaque(Z)V

    .line 341
    return-void
.end method

.method private blacklist setupLighting(Landroid/view/View;)V
    .registers 10
    .param p1, "mSource"    # Landroid/view/View;

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 368
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 369
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 370
    .local v1, "lightX":F
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 371
    .local v2, "lightY":F
    const/high16 v3, 0x43c80000    # 400.0f

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 372
    .local v3, "lightZ":I
    const/high16 v4, 0x44480000    # 800.0f

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 375
    .local v4, "lightRadius":I
    iget-object v5, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/HardwareRenderer;->setLightSourceGeometry(FFFF)V

    .line 376
    iget-object v5, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    const v6, 0x3d1fbe77    # 0.039f

    invoke-virtual {v5, v6, v6}, Landroid/graphics/HardwareRenderer;->setLightSourceAlpha(FF)V

    .line 377
    return-void
.end method

.method private blacklist transformToRoot(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "local"    # Landroid/view/View;
    .param p2, "localRect"    # Landroid/graphics/Rect;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 417
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 418
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 420
    return-void
.end method

.method private blacklist updateForView(Landroid/view/View;)Z
    .registers 6
    .param p1, "source"    # Landroid/view/View;

    .line 355
    iget-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 356
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist updateRootNode(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "source"    # Landroid/view/View;
    .param p2, "localSourceRect"    # Landroid/graphics/Rect;

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->transformToRoot(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 383
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 384
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    .line 385
    .local v1, "canvas":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 386
    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v2

    .line 389
    .local v2, "rootViewRenderNode":Landroid/graphics/RenderNode;
    invoke-virtual {v2}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 390
    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 392
    :cond_40
    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 393
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 2

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mSurface:Landroid/view/Surface;

    .line 413
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 414
    return-void
.end method

.method public blacklist renderView(Landroid/view/View;Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceRect"    # Landroid/graphics/Rect;

    .line 397
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    .line 398
    .local v0, "request":Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    .line 399
    invoke-direct {p0, p1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->updateForView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 400
    invoke-direct {p0, p1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->setupLighting(Landroid/view/View;)V

    .line 402
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->updateRootNode(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 404
    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    move-result v1

    return v1
.end method

.method public blacklist setColorMode(I)V
    .registers 3
    .param p1, "colorMode"    # I

    .line 423
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/graphics/HardwareRenderer;->setColorMode(I)F

    .line 424
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 344
    iput-object p1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mSurface:Landroid/view/Surface;

    .line 345
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 346
    return-void
.end method

.method public blacklist trimMemory()V
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->clearContent()V

    .line 409
    return-void
.end method
