.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$1;,
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mHadSurface:Z

.field private mLayer:Landroid/view/HardwareLayer;

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mLock:[Ljava/lang/Object;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixChanged:Z

.field private mNativeWindow:J

.field private final mNativeWindowLock:[Ljava/lang/Object;

.field private mOpaque:Z

.field private mSaveCount:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mUpdateLayer:Z

.field private final mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mUpdateSurface:Z


# direct methods
.method static synthetic -wrap0(Landroid/view/TextureView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 136
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@4
    .line 114
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@7
    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@e
    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@12
    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@16
    .line 790
    new-instance v0, Landroid/view/TextureView$1;

    #@18
    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    #@1b
    .line 789
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1d
    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 146
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 114
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@7
    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@e
    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@12
    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@16
    .line 790
    new-instance v0, Landroid/view/TextureView$1;

    #@18
    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    #@1b
    .line 789
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1d
    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 114
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@7
    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@e
    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@12
    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@16
    .line 790
    new-instance v0, Landroid/view/TextureView$1;

    #@18
    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    #@1b
    .line 789
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1d
    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 114
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@7
    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@e
    .line 119
    new-array v0, v1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@12
    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@16
    .line 790
    new-instance v0, Landroid/view/TextureView$1;

    #@18
    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    #@1b
    .line 789
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1d
    .line 175
    return-void
.end method

.method private applyTransformMatrix()V
    .locals 2

    #@0
    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 512
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@a
    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setTransform(Landroid/graphics/Matrix;)V

    #@f
    .line 513
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@12
    .line 510
    :cond_0
    return-void
.end method

.method private applyUpdate()V
    .locals 4

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 447
    return-void

    #@5
    .line 450
    :cond_0
    iget-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 451
    :try_start_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 452
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 458
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@12
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@19
    move-result v2

    #@1a
    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    #@1c
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->prepare(IIZ)Z

    #@1f
    .line 459
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@21
    invoke-virtual {v0}, Landroid/view/HardwareLayer;->updateSurfaceTexture()V

    #@24
    .line 461
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 462
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@2a
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2c
    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    #@2f
    .line 445
    :cond_1
    return-void

    #@30
    :cond_2
    monitor-exit v1

    #@31
    .line 454
    return-void

    #@32
    .line 450
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method private destroyHardwareLayer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 236
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 237
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@7
    invoke-virtual {v0}, Landroid/view/HardwareLayer;->detachSurfaceTexture()V

    #@a
    .line 238
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@c
    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    #@f
    .line 239
    iput-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@11
    .line 240
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@14
    .line 235
    :cond_0
    return-void
.end method

.method private native nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native nDestroyNativeWindow()V
.end method

.method private static native nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private releaseSurfaceTexture()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 245
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@3
    if-eqz v1, :cond_2

    #@5
    .line 246
    const/4 v0, 0x1

    #@6
    .line 248
    .local v0, "shouldRelease":Z
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 249
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@c
    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@e
    invoke-interface {v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    #@11
    move-result v0

    #@12
    .line 252
    .end local v0    # "shouldRelease":Z
    :cond_0
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@14
    monitor-enter v1

    #@15
    .line 253
    :try_start_0
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 256
    if-eqz v0, :cond_1

    #@1b
    .line 257
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@1d
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    #@20
    .line 259
    :cond_1
    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@22
    .line 260
    const/4 v1, 0x1

    #@23
    iput-boolean v1, p0, Landroid/view/TextureView;->mHadSurface:Z

    #@25
    .line 244
    :cond_2
    return-void

    #@26
    .line 252
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v1

    #@28
    throw v2
.end method

.method private updateLayer()V
    .locals 2

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 434
    const/4 v1, 0x1

    #@4
    :try_start_0
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 432
    return-void

    #@8
    .line 433
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private updateLayerAndInvalidate()V
    .locals 2

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 440
    const/4 v1, 0x1

    #@4
    :try_start_0
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 442
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    #@a
    .line 438
    return-void

    #@b
    .line 439
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method


# virtual methods
.method public buildLayer()V
    .locals 0

    #@0
    .prologue
    .line 302
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 0

    #@0
    .prologue
    .line 231
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    #@3
    .line 232
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    #@6
    .line 230
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 330
    iget v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    #@2
    const v3, -0x600001

    #@5
    and-int/2addr v2, v3

    #@6
    or-int/lit8 v2, v2, 0x20

    #@8
    iput v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    #@a
    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    move-object v0, p1

    #@11
    .line 337
    check-cast v0, Landroid/view/DisplayListCanvas;

    #@13
    .line 339
    .local v0, "displayListCanvas":Landroid/view/DisplayListCanvas;
    invoke-virtual {p0}, Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;

    #@16
    move-result-object v1

    #@17
    .line 340
    .local v1, "layer":Landroid/view/HardwareLayer;
    if-eqz v1, :cond_0

    #@19
    .line 341
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    #@1c
    .line 342
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    #@1f
    .line 344
    iget-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@21
    iget-object v3, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    #@23
    invoke-virtual {v2, v3}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    #@26
    .line 345
    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;)V

    #@29
    .line 328
    .end local v0    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .end local v1    # "layer":Landroid/view/HardwareLayer;
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    #@0
    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    if-lez p1, :cond_0

    #@8
    if-lez p2, :cond_0

    #@a
    .line 566
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11
    move-result-object v0

    #@12
    .line 567
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@14
    .line 566
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 569
    :cond_0
    const/4 v0, 0x0

    #@1e
    return-object v0
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 596
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 597
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    #@b
    .line 598
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    #@e
    .line 604
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@10
    if-nez v0, :cond_0

    #@12
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 605
    invoke-virtual {p0}, Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;

    #@19
    .line 608
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 609
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@1f
    invoke-virtual {v0, p1}, Landroid/view/HardwareLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    #@22
    .line 612
    :cond_1
    return-object p1
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 7

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 373
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@5
    if-nez v3, :cond_4

    #@7
    .line 374
    iget-object v3, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9
    if-eqz v3, :cond_0

    #@b
    iget-object v3, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d
    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@f
    if-nez v3, :cond_1

    #@11
    .line 375
    :cond_0
    return-object v4

    #@12
    .line 378
    :cond_1
    iget-object v3, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@14
    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/ThreadedRenderer;

    #@16
    invoke-virtual {v3}, Landroid/view/ThreadedRenderer;->createTextureLayer()Landroid/view/HardwareLayer;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@1c
    .line 379
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@1e
    if-nez v3, :cond_6

    #@20
    move v0, v1

    #@21
    .line 380
    .local v0, "createNewSurface":Z
    :goto_0
    if-eqz v0, :cond_2

    #@23
    .line 382
    new-instance v3, Landroid/graphics/SurfaceTexture;

    #@25
    invoke-direct {v3, v2}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    #@28
    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2a
    .line 383
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2c
    invoke-direct {p0, v3}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    #@2f
    .line 385
    :cond_2
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@31
    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@33
    invoke-virtual {v3, v4}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    #@36
    .line 386
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@38
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@3b
    move-result v4

    #@3c
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@3f
    move-result v5

    #@40
    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    #@43
    .line 387
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@45
    iget-object v4, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@47
    iget-object v5, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@49
    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@4b
    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    #@4e
    .line 389
    iget-object v3, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@50
    if-eqz v3, :cond_3

    #@52
    if-eqz v0, :cond_3

    #@54
    .line 390
    iget-object v3, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@56
    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@58
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@5b
    move-result v5

    #@5c
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@5f
    move-result v6

    #@60
    invoke-interface {v3, v4, v5, v6}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    #@63
    .line 392
    :cond_3
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@65
    iget-object v4, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    #@67
    invoke-virtual {v3, v4}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    #@6a
    .line 395
    .end local v0    # "createNewSurface":Z
    :cond_4
    iget-boolean v3, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@6c
    if-eqz v3, :cond_5

    #@6e
    .line 399
    iput-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@70
    .line 403
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    #@73
    .line 404
    iput-boolean v1, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@75
    .line 406
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@77
    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@79
    invoke-virtual {v1, v2}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    #@7c
    .line 407
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@7e
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@81
    move-result v2

    #@82
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@85
    move-result v3

    #@86
    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    #@89
    .line 410
    :cond_5
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@8b
    return-object v1

    #@8c
    :cond_6
    move v0, v2

    #@8d
    .line 379
    goto :goto_0
.end method

.method public getLayerType()I
    .locals 1

    #@0
    .prologue
    .line 295
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    #@0
    .prologue
    .line 717
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2
    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@2
    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 501
    if-nez p1, :cond_0

    #@2
    .line 502
    new-instance p1, Landroid/graphics/Matrix;

    #@4
    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    #@7
    .line 505
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@9
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@c
    .line 507
    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    #@0
    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@2
    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    #@0
    .prologue
    .line 648
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 5
    .param p1, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 671
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    return-object v4

    #@8
    .line 673
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 674
    new-instance v0, Landroid/graphics/Canvas;

    #@e
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@13
    .line 677
    :cond_1
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@15
    monitor-enter v1

    #@16
    .line 678
    :try_start_0
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    #@18
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@1a
    invoke-static {v2, v3, v0, p1}, Landroid/view/TextureView;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    monitor-exit v1

    #@21
    .line 679
    return-object v4

    #@22
    :cond_2
    monitor-exit v1

    #@23
    .line 682
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@25
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    #@2b
    .line 684
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@2d
    return-object v0

    #@2e
    .line 677
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    #@0
    .prologue
    .line 205
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 207
    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 208
    const-string/jumbo v0, "TextureView"

    #@c
    const-string/jumbo v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 212
    :cond_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 213
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    #@1a
    .line 214
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    #@1d
    .line 204
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 0

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    #@3
    .line 222
    invoke-direct {p0}, Landroid/view/TextureView;->releaseSurfaceTexture()V

    #@6
    .line 223
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    #@9
    .line 220
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 357
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    #@3
    .line 363
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 364
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@9
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@10
    move-result v2

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    #@14
    .line 365
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    #@17
    .line 366
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 367
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@1d
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@1f
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@22
    move-result v2

    #@23
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@26
    move-result v3

    #@27
    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    #@2a
    .line 361
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 415
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    #@4
    .line 417
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 421
    if-nez p2, :cond_2

    #@a
    .line 422
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 423
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@10
    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@12
    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@14
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    #@19
    .line 425
    :cond_0
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    #@1c
    .line 414
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 427
    :cond_2
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@22
    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 315
    if-eqz p1, :cond_0

    #@2
    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 314
    :cond_0
    return-void

    #@7
    .line 316
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    .line 317
    const-string/jumbo v1, "TextureView doesn\'t support displaying a background drawable"

    #@c
    .line 316
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "foreground"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 307
    if-eqz p1, :cond_0

    #@2
    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 306
    :cond_0
    return-void

    #@7
    .line 308
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    .line 309
    const-string/jumbo v1, "TextureView doesn\'t support displaying a foreground drawable"

    #@c
    .line 308
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 285
    iput-object p1, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    #@6
    .line 286
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    #@9
    .line 283
    :cond_0
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 279
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setLayerPaint(Landroid/graphics/Paint;)V

    #@3
    .line 278
    return-void
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "opaque"    # Z

    #@0
    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 196
    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    #@6
    .line 197
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 198
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    #@d
    .line 194
    :cond_0
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 736
    if-nez p1, :cond_0

    #@2
    .line 737
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "surfaceTexture must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 739
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@d
    if-ne p1, v0, :cond_1

    #@f
    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Trying to setSurfaceTexture to the same SurfaceTexture that\'s already set."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 743
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v1, "Cannot setSurfaceTexture to a released SurfaceTexture"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 747
    :cond_2
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 748
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    #@2e
    .line 749
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@30
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    #@33
    .line 751
    :cond_3
    iput-object p1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@35
    .line 752
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@37
    invoke-direct {p0, v0}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    #@3a
    .line 760
    iget v0, p0, Landroid/view/TextureView;->mViewFlags:I

    #@3c
    and-int/lit8 v0, v0, 0xc

    #@3e
    if-nez v0, :cond_4

    #@40
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@42
    if-eqz v0, :cond_4

    #@44
    .line 761
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@46
    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@48
    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4a
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@4c
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    #@4f
    .line 763
    :cond_4
    const/4 v0, 0x1

    #@50
    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@52
    .line 764
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    #@55
    .line 735
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    #@0
    .prologue
    .line 786
    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@2
    .line 785
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@5
    .line 485
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@8
    .line 486
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    #@b
    .line 483
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@6
    if-ne p1, v0, :cond_0

    #@8
    .line 700
    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    #@a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@d
    .line 701
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    #@10
    .line 703
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@12
    monitor-enter v1

    #@13
    .line 704
    :try_start_0
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    #@15
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@17
    invoke-static {v2, v3, v0}, Landroid/view/TextureView;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 698
    :cond_0
    return-void

    #@1c
    .line 703
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method
