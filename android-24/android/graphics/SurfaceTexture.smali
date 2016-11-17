.class public Landroid/graphics/SurfaceTexture;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;,
        Landroid/graphics/SurfaceTexture$OutOfResourcesException;
    }
.end annotation


# instance fields
.field private final mCreatorLooper:Landroid/os/Looper;

.field private mFrameAvailableListener:J

.field private mOnFrameAvailableHandler:Landroid/os/Handler;

.field private mProducer:J

.field private mSurfaceTexture:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #@0
    .prologue
    .line 401
    invoke-static {}, Landroid/graphics/SurfaceTexture;->nativeClassInit()V

    #@3
    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "texName"    # I

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    #@4
    .line 110
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "texName"    # I
    .param p2, "singleBufferMode"    # Z

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    #@9
    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@b
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, v1, p1, p2, v0}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    #@12
    .line 131
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "singleBufferMode"    # Z

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 159
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    #@9
    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@b
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    const/4 v1, 0x1

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {p0, v1, v2, p1, v0}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    #@13
    .line 158
    return-void
.end method

.method private native nativeAttachToGLContext(I)I
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDetachFromGLContext()I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetQueuedCount()I
.end method

.method private native nativeGetTimestamp()J
.end method

.method private native nativeGetTransformMatrix([F)V
.end method

.method private native nativeInit(ZIZLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native nativeIsReleased()Z
.end method

.method private native nativeRelease()V
.end method

.method private native nativeReleaseTexImage()V
.end method

.method private native nativeSetDefaultBufferSize(II)V
.end method

.method private native nativeUpdateTexImage()V
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 372
    .local p0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/SurfaceTexture;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/graphics/SurfaceTexture;

    #@6
    .line 373
    .local v1, "st":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_0

    #@8
    .line 374
    iget-object v0, v1, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    #@a
    .line 375
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    #@c
    .line 376
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@10
    .line 371
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public attachToGLContext(I)V
    .locals 3
    .param p1, "texName"    # I

    #@0
    .prologue
    .line 284
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeAttachToGLContext(I)I

    #@3
    move-result v0

    #@4
    .line 285
    .local v0, "err":I
    if-eqz v0, :cond_0

    #@6
    .line 286
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "Error during attachToGLContext (see logcat for details)"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 283
    :cond_0
    return-void
.end method

.method public detachFromGLContext()V
    .locals 3

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeDetachFromGLContext()I

    #@3
    move-result v0

    #@4
    .line 265
    .local v0, "err":I
    if-eqz v0, :cond_0

    #@6
    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "Error during detachFromGLContext (see logcat for details)"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 263
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 363
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 359
    return-void

    #@7
    .line 362
    :catchall_0
    move-exception v0

    #@8
    .line 363
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 362
    throw v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 328
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetTimestamp()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .locals 2
    .param p1, "mtx"    # [F

    #@0
    .prologue
    .line 308
    array-length v0, p1

    #@1
    const/16 v1, 0x10

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 311
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeGetTransformMatrix([F)V

    #@e
    .line 305
    return-void
.end method

.method public isReleased()Z
    .locals 1

    #@0
    .prologue
    .line 355
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeIsReleased()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public release()V
    .locals 0

    #@0
    .prologue
    .line 347
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeRelease()V

    #@3
    .line 346
    return-void
.end method

.method public releaseTexImage()V
    .locals 0

    #@0
    .prologue
    .line 249
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeReleaseTexImage()V

    #@3
    .line 248
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->nativeSetDefaultBufferSize(II)V

    #@3
    .line 230
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    #@0
    .prologue
    .line 175
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    #@4
    .line 174
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 194
    if-eqz p1, :cond_2

    #@3
    .line 198
    if-eqz p2, :cond_0

    #@5
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@8
    move-result-object v2

    #@9
    .line 200
    .local v2, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v0, Landroid/graphics/SurfaceTexture$1;

    #@b
    const/4 v4, 0x1

    #@c
    move-object v1, p0

    #@d
    move-object v5, p1

    #@e
    invoke-direct/range {v0 .. v5}, Landroid/graphics/SurfaceTexture$1;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    #@11
    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    #@13
    .line 193
    .end local v2    # "looper":Landroid/os/Looper;
    :goto_1
    return-void

    #@14
    .line 199
    :cond_0
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    #@16
    if-eqz v0, :cond_1

    #@18
    iget-object v2, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    #@1a
    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@1b
    .end local v2    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@1e
    move-result-object v2

    #@1f
    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@20
    .line 207
    .end local v2    # "looper":Landroid/os/Looper;
    :cond_2
    iput-object v3, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    #@22
    goto :goto_1
.end method

.method public updateTexImage()V
    .locals 0

    #@0
    .prologue
    .line 240
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeUpdateTexImage()V

    #@3
    .line 239
    return-void
.end method
