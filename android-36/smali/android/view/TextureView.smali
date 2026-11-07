.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mHadSurface:Z

.field private blacklist mLastFrameTimeMillis:J

.field private greylist mLayer:Landroid/graphics/TextureLayer;

.field private greylist-max-o mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final greylist-max-o mLock:[Ljava/lang/Object;

.field private final greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mMatrixChanged:Z

.field private blacklist mMinusTwoFrameIntervalMillis:J

.field private greylist-max-r mNativeWindow:J

.field private final greylist-max-o mNativeWindowLock:[Ljava/lang/Object;

.field private greylist-max-r mOpaque:Z

.field private greylist-max-o mSaveCount:I

.field private greylist mSurface:Landroid/graphics/SurfaceTexture;

.field private greylist-max-o mUpdateLayer:Z

.field private final greylist mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private greylist-max-r mUpdateSurface:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$d3tcMwV0AnKXZcuYOVpi0DBIGRs(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;FII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->lambda$getTextureLayer$0(Landroid/graphics/SurfaceTexture;FII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rqETzuh7NzS710vFWbC-EACdxQ8(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/TextureView;->lambda$new$1(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 220
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 190
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 193
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 201
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/TextureView;->mMinusTwoFrameIntervalMillis:J

    .line 212
    iput-wide v0, p0, Landroid/view/TextureView;->mLastFrameTimeMillis:J

    .line 926
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 221
    iget-object v0, p0, Landroid/view/TextureView;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->setIsTextureView()V

    .line 222
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 231
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 190
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 193
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 201
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/TextureView;->mMinusTwoFrameIntervalMillis:J

    .line 212
    iput-wide v0, p0, Landroid/view/TextureView;->mLastFrameTimeMillis:J

    .line 926
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 232
    iget-object v0, p0, Landroid/view/TextureView;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->setIsTextureView()V

    .line 233
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 190
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 193
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 201
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/TextureView;->mMinusTwoFrameIntervalMillis:J

    .line 212
    iput-wide v0, p0, Landroid/view/TextureView;->mLastFrameTimeMillis:J

    .line 926
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 246
    iget-object v0, p0, Landroid/view/TextureView;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->setIsTextureView()V

    .line 247
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 264
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 190
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 193
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 201
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/TextureView;->mMinusTwoFrameIntervalMillis:J

    .line 212
    iput-wide v0, p0, Landroid/view/TextureView;->mLastFrameTimeMillis:J

    .line 926
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 265
    iget-object v0, p0, Landroid/view/TextureView;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->setIsTextureView()V

    .line 266
    return-void
.end method

.method private greylist-max-o applyTransformMatrix()V
    .registers 3

    .line 615
    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_12

    .line 616
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/TextureLayer;->setTransform(Landroid/graphics/Matrix;)V

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 619
    :cond_12
    return-void
.end method

.method private greylist-max-o applyUpdate()V
    .registers 5

    .line 550
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-nez v0, :cond_5

    .line 551
    return-void

    .line 554
    :cond_5
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_8
    iget-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    if-eqz v1, :cond_30

    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 560
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_32

    .line 562
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/TextureLayer;->prepare(IIZ)Z

    .line 563
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->updateSurfaceTexture()V

    .line 565
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_2f

    .line 566
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 568
    :cond_2f
    return-void

    .line 558
    :cond_30
    :try_start_30
    monitor-exit v0

    return-void

    .line 560
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private greylist-max-r destroyHardwareLayer()V
    .registers 2

    .line 328
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_14

    .line 329
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->detachSurfaceTexture()V

    .line 330
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->close()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 334
    :cond_14
    return-void
.end method

.method private synthetic blacklist lambda$getTextureLayer$0(Landroid/graphics/SurfaceTexture;FII)V
    .registers 9
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "frameRate"    # F
    .param p3, "compatibility"    # I
    .param p4, "strategy"    # I

    .line 485
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFrameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 488
    :cond_1f
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setRequestedFrameRate(F)V

    .line 489
    iput p3, p0, Landroid/view/TextureView;->mFrameRateCompatibility:I

    .line 490
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 929
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 930
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 931
    return-void
.end method

.method private native greylist-max-r nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native greylist-max-r nDestroyNativeWindow()V
.end method

.method private static native greylist-max-o nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private greylist-max-o releaseSurfaceTexture()V
    .registers 4

    .line 337
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_29

    .line 338
    const/4 v0, 0x1

    .line 340
    .local v0, "shouldRelease":Z
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v1, :cond_11

    .line 341
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    .line 344
    :cond_11
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_14
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 346
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_26

    .line 348
    if-eqz v0, :cond_1f

    .line 349
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 351
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/TextureView;->mHadSurface:Z

    goto :goto_29

    .line 346
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2

    .line 354
    .end local v0    # "shouldRelease":Z
    :cond_29
    :goto_29
    return-void
.end method

.method private greylist-max-o updateLayer()V
    .registers 3

    .line 537
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 538
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 539
    monitor-exit v0

    .line 540
    return-void

    .line 539
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private greylist-max-o updateLayerAndInvalidate()V
    .registers 3

    .line 543
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 544
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 545
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 546
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 547
    return-void

    .line 545
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method


# virtual methods
.method public whitelist buildLayer()V
    .registers 1

    .line 395
    return-void
.end method

.method protected blacklist calculateFrameRateCategory()I
    .registers 7

    .line 901
    invoke-virtual {p0}, Landroid/view/TextureView;->getDrawingTime()J

    move-result-wide v0

    .line 903
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/TextureView;->mMinusTwoFrameIntervalMillis:J

    const-wide/16 v4, 0xf

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    iget-wide v2, p0, Landroid/view/TextureView;->mLastFrameTimeMillis:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    .line 904
    const/4 v2, 0x3

    return v2

    .line 906
    :cond_16
    invoke-super {p0}, Landroid/view/View;->calculateFrameRateCategory()I

    move-result v2

    return v2
.end method

.method protected greylist destroyHardwareResources()V
    .registers 1

    .line 322
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 323
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    .line 324
    return-void
.end method

.method public final whitelist draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 422
    iget v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 429
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 431
    .local v0, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    invoke-virtual {p0}, Landroid/view/TextureView;->getTextureLayer()Landroid/graphics/TextureLayer;

    move-result-object v1

    .line 432
    .local v1, "layer":Landroid/graphics/TextureLayer;
    if-eqz v1, :cond_33

    .line 433
    const-string v2, "TextureView#draw()"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 434
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 435
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 437
    iget-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v5, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/TextureLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/graphics/RecordingCanvas;->drawTextureLayer(Landroid/graphics/TextureLayer;)V

    .line 439
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 442
    .end local v0    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    .end local v1    # "layer":Landroid/graphics/TextureLayer;
    :cond_33
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 923
    const-class v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 642
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 669
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p1, :cond_1d

    if-lez p2, :cond_1d

    .line 670
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 673
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 700
    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 701
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 702
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 708
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v0, :cond_19

    .line 709
    invoke-virtual {p0}, Landroid/view/TextureView;->getTextureLayer()Landroid/graphics/TextureLayer;

    .line 712
    :cond_19
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_22

    .line 713
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {v0, p1}, Landroid/graphics/TextureLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    .line 716
    :cond_22
    return-object p1
.end method

.method public whitelist getLayerType()I
    .registers 2

    .line 387
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 824
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public whitelist getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .registers 2

    .line 882
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method blacklist getTextureLayer()Landroid/graphics/TextureLayer;
    .registers 8

    .line 467
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_82

    .line 468
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_80

    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_11

    goto :goto_80

    .line 472
    :cond_11
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->createTextureLayer()Landroid/graphics/TextureLayer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    .line 473
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    .line 474
    .local v0, "createNewSurface":Z
    :goto_22
    if-eqz v0, :cond_30

    .line 476
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v2}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 477
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v3}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 479
    :cond_30
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/graphics/TextureLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 480
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 481
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v5, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 482
    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 483
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    new-instance v4, Landroid/view/TextureView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda1;-><init>(Landroid/view/TextureView;)V

    iget-object v5, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setOnSetFrameRateListener(Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;Landroid/os/Handler;)V

    .line 493
    :cond_63
    iget-object v3, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v3, :cond_78

    if-eqz v0, :cond_78

    .line 494
    iget-object v3, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 496
    :cond_78
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/TextureLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    goto :goto_82

    .line 469
    .end local v0    # "createNewSurface":Z
    :cond_80
    :goto_80
    const/4 v0, 0x0

    return-object v0

    .line 499
    :cond_82
    :goto_82
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v0, :cond_a1

    .line 503
    iput-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 507
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 508
    iput-boolean v1, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 510
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/TextureLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 511
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 514
    :cond_a1
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    return-object v0
.end method

.method public whitelist getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 605
    if-nez p1, :cond_8

    .line 606
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object p1, v0

    .line 609
    :cond_8
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 611
    return-object p1
.end method

.method public whitelist isAvailable()Z
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    return v0
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 7
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 778
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 780
    :cond_8
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_13

    .line 781
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    .line 784
    :cond_13
    iget-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_16
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v4, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v4, p1}, Landroid/view/TextureView;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 786
    monitor-exit v0

    return-object v1

    .line 788
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_2e

    .line 789
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 791
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    .line 788
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 294
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 296
    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_10

    .line 297
    const-string v0, "TextureView"

    const-string v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_10
    iget-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    if-eqz v0, :cond_1b

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    .line 305
    :cond_1b
    return-void
.end method

.method protected greylist-max-r onDetachedFromWindowInternal()V
    .registers 1

    .line 311
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    .line 312
    invoke-direct {p0}, Landroid/view/TextureView;->releaseSurfaceTexture()V

    .line 313
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 314
    return-void
.end method

.method protected final whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 452
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 456
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 457
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2a

    .line 458
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 459
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 460
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_2a

    .line 461
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 464
    :cond_2a
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 519
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 521
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_22

    .line 525
    if-nez p2, :cond_1c

    .line 526
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_18

    .line 527
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 529
    :cond_18
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    goto :goto_22

    .line 531
    :cond_1c
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 534
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 407
    if-eqz p1, :cond_f

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    if-eqz v0, :cond_7

    goto :goto_f

    .line 408
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TextureView doesn\'t support displaying a background drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_f
    :goto_f
    return-void
.end method

.method public whitelist setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "foreground"    # Landroid/graphics/drawable/Drawable;

    .line 399
    if-eqz p1, :cond_f

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    if-eqz v0, :cond_7

    goto :goto_f

    .line 400
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TextureView doesn\'t support displaying a foreground drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_f
    :goto_f
    return-void
.end method

.method public whitelist setLayerPaint(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 376
    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p1, v0, :cond_9

    .line 377
    iput-object p1, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    .line 378
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 380
    :cond_9
    return-void
.end method

.method public whitelist setLayerType(ILandroid/graphics/Paint;)V
    .registers 3
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 371
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 372
    return-void
.end method

.method public whitelist setOpaque(Z)V
    .registers 3
    .param p1, "opaque"    # Z

    .line 284
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    if-eq p1, v0, :cond_d

    .line 285
    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 286
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_d

    .line 287
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    .line 290
    :cond_d
    return-void
.end method

.method public whitelist setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 843
    if-eqz p1, :cond_4b

    .line 846
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_43

    .line 850
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 854
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_18

    .line 855
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 856
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 858
    :cond_18
    iput-object p1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 859
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 867
    iget v0, p0, Landroid/view/TextureView;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_34

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_34

    .line 868
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 870
    :cond_34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 871
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 872
    return-void

    .line 851
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot setSurfaceTexture to a released SurfaceTexture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to setSurfaceTexture to the same SurfaceTexture that\'s already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_4b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .line 893
    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 894
    return-void
.end method

.method public whitelist setTransform(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 588
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 590
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 591
    return-void
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 806
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_1f

    .line 807
    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 808
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 810
    iget-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_13
    iget-wide v1, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v3, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v1, v2, v3}, Landroid/view/TextureView;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V

    .line 812
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v1

    .line 814
    :cond_1f
    :goto_1f
    return-void
.end method

.method protected blacklist votePreferredFrameRate()V
    .registers 5

    .line 914
    invoke-super {p0}, Landroid/view/View;->votePreferredFrameRate()V

    .line 916
    invoke-virtual {p0}, Landroid/view/TextureView;->getDrawingTime()J

    move-result-wide v0

    .line 917
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/TextureView;->mLastFrameTimeMillis:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Landroid/view/TextureView;->mMinusTwoFrameIntervalMillis:J

    .line 918
    iput-wide v0, p0, Landroid/view/TextureView;->mLastFrameTimeMillis:J

    .line 919
    return-void
.end method
