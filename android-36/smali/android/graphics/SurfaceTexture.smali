.class public Landroid/graphics/SurfaceTexture;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;,
        Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;,
        Landroid/graphics/SurfaceTexture$SetFrameRateArgs;,
        Landroid/graphics/SurfaceTexture$OutOfResourcesException;
    }
.end annotation


# instance fields
.field private final greylist-max-o mCreatorLooper:Landroid/os/Looper;

.field private greylist-max-r mFrameAvailableListener:J

.field private greylist-max-o mIsSingleBuffered:Z

.field private greylist-max-r mOnFrameAvailableHandler:Landroid/os/Handler;

.field private blacklist mOnSetFrameRateHandler:Landroid/os/Handler;

.field private greylist mProducer:J

.field private greylist mSurfaceTexture:J


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "texName"    # I

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    .line 147
    return-void
.end method

.method public constructor whitelist <init>(IZ)V
    .registers 5
    .param p1, "texName"    # I
    .param p2, "singleBufferMode"    # Z

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    .line 168
    iput-boolean p2, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    .line 170
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 5
    .param p1, "singleBufferMode"    # Z

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    .line 195
    iput-boolean p1, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, v0}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    .line 197
    return-void
.end method

.method private native greylist-max-o nativeAttachToGLContext(I)I
.end method

.method private native greylist nativeDetachFromGLContext()I
.end method

.method private native greylist-max-o nativeFinalize()V
.end method

.method private native blacklist nativeGetDataSpace()I
.end method

.method private native greylist-max-o nativeGetTimestamp()J
.end method

.method private native greylist-max-o nativeGetTransformMatrix([F)V
.end method

.method private native greylist-max-o nativeInit(ZIZLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/lang/ref/WeakReference<",
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

.method private native greylist-max-o nativeIsReleased()Z
.end method

.method private native greylist-max-o nativeRelease()V
.end method

.method private native greylist-max-o nativeReleaseTexImage()V
.end method

.method private native greylist-max-o nativeSetDefaultBufferSize(II)V
.end method

.method private native greylist-max-o nativeUpdateTexImage()V
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .line 474
    .local p0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/SurfaceTexture;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 475
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_10

    .line 476
    iget-object v1, v0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    .line 477
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_10

    .line 478
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_10
    return-void
.end method

.method private static blacklist postOnSetFrameRateEventFromNative(Ljava/lang/ref/WeakReference;FII)V
    .registers 10
    .param p1, "frameRate"    # F
    .param p2, "compatibility"    # I
    .param p3, "changeFrameRateStrategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/SurfaceTexture;",
            ">;FII)V"
        }
    .end annotation

    .line 492
    .local p0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/SurfaceTexture;>;"
    const-string/jumbo v0, "postOnSetFrameRateEventFromNative"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 494
    :try_start_8
    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 495
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 496
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_29

    .line 497
    iget-object v3, v0, Landroid/graphics/SurfaceTexture;->mOnSetFrameRateHandler:Landroid/os/Handler;

    .line 498
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_29

    .line 499
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 500
    .local v4, "msg":Landroid/os/Message;
    new-instance v5, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;

    invoke-direct {v5, p1, p2, p3}, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;-><init>(FII)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2e

    .line 507
    .end local v0    # "st":Landroid/graphics/SurfaceTexture;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_29
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 508
    nop

    .line 510
    return-void

    .line 507
    :catchall_2e
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 508
    throw v0
.end method


# virtual methods
.method public whitelist attachToGLContext(I)V
    .registers 5
    .param p1, "texName"    # I

    .line 363
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeAttachToGLContext(I)I

    move-result v0

    .line 364
    .local v0, "err":I
    if-nez v0, :cond_7

    .line 367
    return-void

    .line 365
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during attachToGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist detachFromGLContext()V
    .registers 4

    .line 343
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeDetachFromGLContext()I

    move-result v0

    .line 344
    .local v0, "err":I
    if-nez v0, :cond_7

    .line 347
    return-void

    .line 345
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during detachFromGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 462
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeFinalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 464
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    throw v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 425
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetDataSpace()I

    move-result v0

    return v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 416
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTransformMatrix([F)V
    .registers 4
    .param p1, "mtx"    # [F

    .line 392
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 395
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeGetTransformMatrix([F)V

    .line 396
    return-void

    .line 393
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist isReleased()Z
    .registers 2

    .line 456
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeIsReleased()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSingleBuffered()Z
    .registers 2

    .line 517
    iget-boolean v0, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    return v0
.end method

.method public whitelist release()V
    .registers 1

    .line 447
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeRelease()V

    .line 448
    return-void
.end method

.method public whitelist releaseTexImage()V
    .registers 1

    .line 328
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeReleaseTexImage()V

    .line 329
    return-void
.end method

.method public whitelist setDefaultBufferSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->nativeSetDefaultBufferSize(II)V

    .line 310
    return-void
.end method

.method public whitelist setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 212
    return-void
.end method

.method public whitelist setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .registers 10
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 230
    if-eqz p1, :cond_21

    .line 234
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_14

    .line 235
    :cond_9
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    goto :goto_14

    :cond_10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_14
    move-object v3, v0

    .line 236
    .local v3, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/graphics/SurfaceTexture$1;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p1

    .end local p1    # "listener":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .local v6, "listener":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    invoke-direct/range {v1 .. v6}, Landroid/graphics/SurfaceTexture$1;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v1, v2, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    .line 242
    .end local v3    # "looper":Landroid/os/Looper;
    goto :goto_26

    .line 243
    .end local v6    # "listener":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .restart local p1    # "listener":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    :cond_21
    move-object v2, p0

    move-object v6, p1

    .end local p1    # "listener":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .restart local v6    # "listener":Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    const/4 p1, 0x0

    iput-object p1, v2, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    .line 245
    :goto_26
    return-void
.end method

.method public blacklist setOnSetFrameRateListener(Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;Landroid/os/Handler;)V
    .registers 10
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 267
    if-eqz p1, :cond_21

    .line 268
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_14

    .line 269
    :cond_9
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    goto :goto_14

    :cond_10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_14
    move-object v3, v0

    .line 270
    .local v3, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/graphics/SurfaceTexture$2;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p1

    .end local p1    # "listener":Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;
    .local v6, "listener":Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;
    invoke-direct/range {v1 .. v6}, Landroid/graphics/SurfaceTexture$2;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnSetFrameRateListener;)V

    iput-object v1, v2, Landroid/graphics/SurfaceTexture;->mOnSetFrameRateHandler:Landroid/os/Handler;

    .line 284
    .end local v3    # "looper":Landroid/os/Looper;
    goto :goto_26

    .line 285
    .end local v6    # "listener":Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;
    .restart local p1    # "listener":Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;
    :cond_21
    move-object v2, p0

    move-object v6, p1

    .end local p1    # "listener":Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;
    .restart local v6    # "listener":Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;
    const/4 p1, 0x0

    iput-object p1, v2, Landroid/graphics/SurfaceTexture;->mOnSetFrameRateHandler:Landroid/os/Handler;

    .line 287
    :goto_26
    return-void
.end method

.method public whitelist updateTexImage()V
    .registers 1

    .line 318
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeUpdateTexImage()V

    .line 319
    return-void
.end method
