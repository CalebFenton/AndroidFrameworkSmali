.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$SurfaceTextureListener;,
        Landroid/view/TextureView$1;
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
    .line 134
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@4
    .line 112
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@7
    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@e
    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@12
    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@16
    .line 769
    new-instance v0, Landroid/view/TextureView$1;

    #@18
    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    #@1b
    .line 768
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1d
    .line 135
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    #@20
    .line 133
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
    .line 145
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 112
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@7
    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@e
    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@12
    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@16
    .line 769
    new-instance v0, Landroid/view/TextureView$1;

    #@18
    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    #@1b
    .line 768
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1d
    .line 146
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    #@20
    .line 144
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
    .line 112
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@7
    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@e
    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@12
    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@16
    .line 769
    new-instance v0, Landroid/view/TextureView$1;

    #@18
    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    #@1b
    .line 768
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1d
    .line 160
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    #@20
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
    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 112
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@7
    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@e
    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@12
    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@16
    .line 769
    new-instance v0, Landroid/view/TextureView$1;

    #@18
    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    #@1b
    .line 768
    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@1d
    .line 178
    invoke-direct {p0}, Landroid/view/TextureView;->init()V

    #@20
    .line 176
    return-void
.end method

.method private applyTransformMatrix()V
    .locals 2

    #@0
    .prologue
    .line 492
    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 493
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@a
    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setTransform(Landroid/graphics/Matrix;)V

    #@f
    .line 494
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@12
    .line 491
    :cond_0
    return-void
.end method

.method private applyUpdate()V
    .locals 4

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 428
    return-void

    #@5
    .line 431
    :cond_0
    iget-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 432
    :try_start_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 433
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 439
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
    .line 440
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@21
    invoke-virtual {v0}, Landroid/view/HardwareLayer;->updateSurfaceTexture()V

    #@24
    .line 442
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 443
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@2a
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2c
    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    #@2f
    .line 426
    :cond_1
    return-void

    #@30
    :cond_2
    monitor-exit v1

    #@31
    .line 435
    return-void

    #@32
    .line 431
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method private destroySurface()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 232
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 233
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@8
    invoke-virtual {v1}, Landroid/view/HardwareLayer;->detachSurfaceTexture()V

    #@b
    .line 235
    const/4 v0, 0x1

    #@c
    .line 236
    .local v0, "shouldRelease":Z
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 237
    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@12
    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@14
    invoke-interface {v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    #@17
    move-result v0

    #@18
    .line 240
    .end local v0    # "shouldRelease":Z
    :cond_0
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@1a
    monitor-enter v1

    #@1b
    .line 241
    :try_start_0
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v1

    #@1f
    .line 244
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@21
    invoke-virtual {v1}, Landroid/view/HardwareLayer;->destroy()V

    #@24
    .line 245
    if-eqz v0, :cond_1

    #@26
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@28
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    #@2b
    .line 246
    :cond_1
    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2d
    .line 247
    iput-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@2f
    .line 251
    iput-boolean v4, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@31
    .line 252
    iput-boolean v4, p0, Landroid/view/TextureView;->mHadSurface:Z

    #@33
    .line 231
    :cond_2
    return-void

    #@34
    .line 240
    :catchall_0
    move-exception v2

    #@35
    monitor-exit v1

    #@36
    throw v2
.end method

.method private init()V
    .locals 1

    #@0
    .prologue
    .line 182
    new-instance v0, Landroid/graphics/Paint;

    #@2
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@5
    iput-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    #@7
    .line 181
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

.method private updateLayer()V
    .locals 2

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 415
    const/4 v1, 0x1

    #@4
    :try_start_0
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 413
    return-void

    #@8
    .line 414
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
    .line 420
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 421
    const/4 v1, 0x1

    #@4
    :try_start_0
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 423
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    #@a
    .line 419
    return-void

    #@b
    .line 420
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
    .line 294
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 1

    #@0
    .prologue
    .line 339
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    #@3
    .line 340
    invoke-direct {p0}, Landroid/view/TextureView;->destroySurface()V

    #@6
    .line 341
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentCaches()V

    #@9
    .line 342
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    #@d
    .line 338
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 306
    iget v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    #@2
    const v1, -0x600001

    #@5
    and-int/2addr v0, v1

    #@6
    or-int/lit8 v0, v0, 0x20

    #@8
    iput v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    #@a
    .line 308
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    #@d
    .line 309
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    #@10
    .line 304
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    #@0
    .prologue
    .line 519
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
    .line 546
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
    .line 547
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11
    move-result-object v0

    #@12
    .line 548
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@14
    .line 547
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
    .line 550
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
    .line 577
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 578
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    #@b
    .line 579
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    #@e
    .line 585
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@10
    if-nez v0, :cond_0

    #@12
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 586
    invoke-virtual {p0}, Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;

    #@19
    .line 589
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 590
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@1f
    invoke-virtual {v0, p1}, Landroid/view/HardwareLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    #@22
    .line 593
    :cond_1
    return-object p1
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 348
    iget v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    #@4
    const v1, 0x8020

    #@7
    or-int/2addr v0, v1

    #@8
    iput v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    #@a
    .line 349
    iget v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    #@c
    const v1, -0x600001

    #@f
    and-int/2addr v0, v1

    #@10
    iput v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    #@12
    .line 351
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@14
    if-nez v0, :cond_4

    #@16
    .line 352
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@18
    if-eqz v0, :cond_0

    #@1a
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 353
    :cond_0
    return-object v2

    #@21
    .line 356
    :cond_1
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@23
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@25
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->createTextureLayer()Landroid/view/HardwareLayer;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@2b
    .line 357
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 359
    new-instance v0, Landroid/graphics/SurfaceTexture;

    #@31
    invoke-direct {v0, v4}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    #@34
    iput-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@36
    .line 360
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@38
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@3a
    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    #@3d
    .line 362
    :cond_2
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@3f
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@42
    move-result v1

    #@43
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@46
    move-result v2

    #@47
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    #@4a
    .line 363
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@4c
    invoke-direct {p0, v0}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    #@4f
    .line 365
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@51
    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@53
    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@55
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@57
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    #@5a
    .line 367
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@5c
    if-eqz v0, :cond_3

    #@5e
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@60
    if-eqz v0, :cond_6

    #@62
    .line 370
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@64
    iget-object v1, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    #@66
    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    #@69
    .line 373
    :cond_4
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@6b
    if-eqz v0, :cond_5

    #@6d
    .line 377
    iput-boolean v4, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@6f
    .line 381
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    #@72
    .line 382
    const/4 v0, 0x1

    #@73
    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@75
    .line 384
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@77
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@79
    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    #@7c
    .line 385
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@7e
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@81
    move-result v1

    #@82
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@85
    move-result v2

    #@86
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    #@89
    .line 388
    :cond_5
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    #@8c
    .line 389
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    #@8f
    .line 391
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@91
    return-object v0

    #@92
    .line 368
    :cond_6
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@94
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@96
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    #@99
    move-result v2

    #@9a
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    #@9d
    move-result v3

    #@9e
    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    #@a1
    goto :goto_0
.end method

.method public getLayerType()I
    .locals 1

    #@0
    .prologue
    .line 287
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    #@0
    .prologue
    .line 698
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2
    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@2
    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 482
    if-nez p1, :cond_0

    #@2
    .line 483
    new-instance p1, Landroid/graphics/Matrix;

    #@4
    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    #@7
    .line 486
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@9
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@c
    .line 488
    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 602
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
    .line 190
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@2
    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    #@0
    .prologue
    .line 629
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
    .line 652
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    return-object v4

    #@8
    .line 654
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 655
    new-instance v0, Landroid/graphics/Canvas;

    #@e
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@13
    .line 658
    :cond_1
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@15
    monitor-enter v1

    #@16
    .line 659
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
    .line 660
    return-object v4

    #@22
    :cond_2
    monitor-exit v1

    #@23
    .line 663
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@25
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    #@2b
    .line 665
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@2d
    return-object v0

    #@2e
    .line 658
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
    .line 211
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 213
    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 214
    const-string/jumbo v0, "TextureView"

    #@c
    const-string/jumbo v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 218
    :cond_0
    iget-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 219
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    #@1a
    .line 220
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    #@1d
    .line 210
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 0

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Landroid/view/TextureView;->destroySurface()V

    #@3
    .line 228
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    #@6
    .line 226
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 319
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
    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    #@3
    .line 325
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 326
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
    .line 327
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    #@17
    .line 328
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 329
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
    .line 323
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
    .line 396
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    #@4
    .line 398
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 402
    if-nez p2, :cond_2

    #@a
    .line 403
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 404
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
    .line 406
    :cond_0
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    #@1c
    .line 395
    :cond_1
    :goto_0
    return-void

    #@1d
    .line 408
    :cond_2
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@22
    goto :goto_0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 279
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/view/TextureView;->setLayerType(ILandroid/graphics/Paint;)V

    #@4
    .line 278
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    #@2
    if-eq p2, v0, :cond_1

    #@4
    .line 272
    if-nez p2, :cond_0

    #@6
    new-instance p2, Landroid/graphics/Paint;

    #@8
    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    #@b
    :cond_0
    iput-object p2, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    #@d
    .line 273
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    #@10
    .line 270
    :cond_1
    return-void
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "opaque"    # Z

    #@0
    .prologue
    .line 201
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 202
    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    #@6
    .line 203
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 204
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    #@d
    .line 200
    :cond_0
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 717
    if-nez p1, :cond_0

    #@2
    .line 718
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "surfaceTexture must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 720
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@d
    if-ne p1, v0, :cond_1

    #@f
    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Trying to setSurfaceTexture to the same SurfaceTexture that\'s already set."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 724
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v1, "Cannot setSurfaceTexture to a released SurfaceTexture"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 728
    :cond_2
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 729
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@2d
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    #@30
    .line 731
    :cond_3
    iput-object p1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@32
    .line 739
    iget v0, p0, Landroid/view/TextureView;->mViewFlags:I

    #@34
    and-int/lit8 v0, v0, 0xc

    #@36
    if-nez v0, :cond_4

    #@38
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 740
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    #@3e
    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@40
    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@42
    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    #@44
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    #@47
    .line 742
    :cond_4
    const/4 v0, 0x1

    #@48
    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    #@4a
    .line 743
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    #@4d
    .line 716
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    #@0
    .prologue
    .line 765
    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    #@2
    .line 764
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@5
    .line 466
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    #@8
    .line 467
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    #@b
    .line 464
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 680
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    #@6
    if-ne p1, v0, :cond_0

    #@8
    .line 681
    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    #@a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@d
    .line 682
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    #@10
    .line 684
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    #@12
    monitor-enter v1

    #@13
    .line 685
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
    .line 679
    :cond_0
    return-void

    #@1c
    .line 684
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method
