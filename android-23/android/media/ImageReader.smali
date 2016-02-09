.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$OnImageAvailableListener;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$SurfaceImage;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I


# instance fields
.field private mEstimatedNativeAllocBytes:I

.field private final mFormat:I

.field private final mHeight:I

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static synthetic -get0(Landroid/media/ImageReader;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/ImageReader;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0
    .param p1, "i"    # Landroid/media/Image;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 876
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 877
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    #@9
    .line 54
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxImages"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 624
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    #@b
    .line 129
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    #@d
    .line 130
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    #@f
    .line 131
    iput p3, p0, Landroid/media/ImageReader;->mFormat:I

    #@11
    .line 132
    iput p4, p0, Landroid/media/ImageReader;->mMaxImages:I

    #@13
    .line 134
    if-lt p1, v1, :cond_0

    #@15
    if-ge p2, v1, :cond_1

    #@17
    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    .line 136
    const-string/jumbo v1, "The image dimensions must be positive"

    #@1c
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 138
    :cond_1
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    #@22
    if-ge v0, v1, :cond_2

    #@24
    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    .line 140
    const-string/jumbo v1, "Maximum outstanding image count must be at least 1"

    #@29
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 143
    :cond_2
    const/16 v0, 0x11

    #@2f
    if-ne p3, v0, :cond_3

    #@31
    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    .line 145
    const-string/jumbo v1, "NV21 format is not supported"

    #@36
    .line 144
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 148
    :cond_3
    invoke-direct {p0}, Landroid/media/ImageReader;->getNumPlanesFromFormat()I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    #@40
    .line 150
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@42
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@45
    move-object v0, p0

    #@46
    move v2, p1

    #@47
    move v3, p2

    #@48
    move v4, p3

    #@49
    move v5, p4

    #@4a
    invoke-direct/range {v0 .. v5}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIII)V

    #@4d
    .line 152
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    #@53
    .line 157
    invoke-static {p1, p2, p3, p4}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    #@56
    move-result v0

    #@57
    iput v0, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@59
    .line 159
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@5c
    move-result-object v0

    #@5d
    iget v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@5f
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@62
    .line 128
    return-void
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 4
    .param p1, "si"    # Landroid/media/ImageReader$SurfaceImage;

    #@0
    .prologue
    .line 327
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    #@3
    move-result v0

    #@4
    .line 329
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 337
    new-instance v1, Ljava/lang/AssertionError;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Unknown nativeImageSetup return code "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@20
    throw v1

    #@21
    .line 331
    :pswitch_0
    invoke-static {p1}, Landroid/media/ImageReader$SurfaceImage;->-wrap2(Landroid/media/ImageReader$SurfaceImage;)V

    #@24
    .line 332
    const/4 v1, 0x1

    #@25
    iput-boolean v1, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    #@27
    .line 340
    :pswitch_1
    return v0

    #@28
    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getNumPlanesFromFormat()I
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 556
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 579
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    .line 580
    const-string/jumbo v1, "Invalid format specified %d"

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    iget v3, p0, Landroid/media/ImageReader;->mFormat:I

    #@10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v3

    #@14
    aput-object v3, v2, v4

    #@16
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 579
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 560
    :sswitch_0
    const/4 v0, 0x3

    #@1f
    return v0

    #@20
    .line 562
    :sswitch_1
    const/4 v0, 0x2

    #@21
    return v0

    #@22
    .line 575
    :sswitch_2
    return v2

    #@23
    .line 577
    :sswitch_3
    return v4

    #@24
    .line 556
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x14 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_0
        0x25 -> :sswitch_2
        0x100 -> :sswitch_2
        0x101 -> :sswitch_2
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_2
    .end sparse-switch
.end method

.method private isImageOwnedbyMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 585
    instance-of v2, p1, Landroid/media/ImageReader$SurfaceImage;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 586
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 588
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    #@9
    .line 589
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    :cond_1
    return v1
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose()V
.end method

.method private synchronized native declared-synchronized nativeDetachImage(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native declared-synchronized nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;IIII)V
.end method

.method private synchronized native declared-synchronized nativeReleaseImage(Landroid/media/Image;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/media/ImageReader;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/ImageReader;-><init>(IIII)V

    #@5
    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v2, p0

    #@1
    .line 600
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@3
    .line 601
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageReader;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/media/ImageReader;

    #@9
    .line 602
    .local v1, "ir":Landroid/media/ImageReader;
    if-nez v1, :cond_0

    #@b
    .line 603
    return-void

    #@c
    .line 607
    :cond_0
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 608
    :try_start_0
    iget-object v0, v1, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .local v0, "handler":Landroid/os/Handler;
    monitor-exit v3

    #@12
    .line 610
    if-eqz v0, :cond_1

    #@14
    .line 611
    const/4 v3, 0x0

    #@15
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@18
    .line 598
    :cond_1
    return-void

    #@19
    .line 607
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v4

    #@1a
    monitor-exit v3

    #@1b
    throw v4
.end method

.method private releaseImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "i"    # Landroid/media/Image;

    #@0
    .prologue
    .line 396
    instance-of v1, p1, Landroid/media/ImageReader$SurfaceImage;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 397
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    .line 398
    const-string/jumbo v2, "This image was not produced by an ImageReader"

    #@9
    .line 397
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 400
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    #@10
    .line 401
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    #@13
    move-result-object v1

    #@14
    if-eq v1, p0, :cond_1

    #@16
    .line 402
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    .line 403
    const-string/jumbo v2, "This image was not produced by this ImageReader"

    #@1b
    .line 402
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 406
    :cond_1
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-wrap1(Landroid/media/ImageReader$SurfaceImage;)V

    #@22
    .line 407
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    #@25
    .line 408
    const/4 v1, 0x0

    #@26
    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    #@28
    .line 395
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 277
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    #@4
    move-result-object v0

    #@5
    .line 278
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_1

    #@7
    .line 279
    return-object v3

    #@8
    .line 289
    .local v1, "next":Landroid/media/Image;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    #@b
    .line 290
    move-object v0, v1

    #@c
    .line 283
    .end local v1    # "next":Landroid/media/Image;
    :cond_1
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v1

    #@10
    .line 284
    .restart local v1    # "next":Landroid/media/Image;
    if-nez v1, :cond_0

    #@12
    .line 285
    move-object v2, v0

    #@13
    .line 286
    .local v2, "result":Landroid/media/Image;
    const/4 v0, 0x0

    #@14
    .line 287
    .local v0, "image":Landroid/media/Image;
    return-object v2

    #@15
    .line 292
    .end local v1    # "next":Landroid/media/Image;
    .end local v2    # "result":Landroid/media/Image;
    .local v0, "image":Landroid/media/Image;
    :catchall_0
    move-exception v3

    #@16
    .line 293
    if-eqz v0, :cond_2

    #@18
    .line 294
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    #@1b
    .line 292
    :cond_2
    throw v3
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 7

    #@0
    .prologue
    .line 374
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    #@2
    iget v2, p0, Landroid/media/ImageReader;->mFormat:I

    #@4
    invoke-direct {v0, p0, v2}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    #@7
    .line 375
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    #@a
    move-result v1

    #@b
    .line 377
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    #@e
    .line 388
    new-instance v2, Ljava/lang/AssertionError;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Unknown nativeImageSetup return code "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@27
    throw v2

    #@28
    .line 379
    :pswitch_0
    return-object v0

    #@29
    .line 381
    :pswitch_1
    const/4 v2, 0x0

    #@2a
    return-object v2

    #@2b
    .line 383
    :pswitch_2
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2d
    .line 385
    const-string/jumbo v3, "maxImages (%d) has already been acquired, call #close before acquiring more."

    #@30
    .line 384
    const/4 v4, 0x1

    #@31
    new-array v4, v4, [Ljava/lang/Object;

    #@33
    .line 386
    iget v5, p0, Landroid/media/ImageReader;->mMaxImages:I

    #@35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v5

    #@39
    const/4 v6, 0x0

    #@3a
    aput-object v5, v4, v6

    #@3c
    .line 384
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .line 383
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v2

    #@44
    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 2

    #@0
    .prologue
    .line 307
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    #@2
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    #@4
    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    #@7
    .line 308
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :goto_0
    return-object v0

    #@e
    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 476
    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    #@5
    .line 477
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    #@b
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@e
    .line 478
    :cond_0
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    #@11
    .line 479
    iget v0, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@13
    if-lez v0, :cond_1

    #@15
    .line 480
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@1b
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@1e
    .line 481
    iput v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@20
    .line 475
    :cond_1
    return-void
.end method

.method detachImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    .line 526
    if-nez p1, :cond_0

    #@2
    .line 527
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "input image must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 529
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 530
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Trying to detach an image that is not owned by this ImageReader"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    :cond_1
    move-object v0, p1

    #@1b
    .line 534
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    #@1d
    .line 535
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@20
    .line 537
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 538
    new-instance v1, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v2, "Image was already detached from this ImageReader"

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 541
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;)I

    #@32
    .line 542
    const/4 v1, 0x1

    #@33
    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-wrap3(Landroid/media/ImageReader$SurfaceImage;Z)V

    #@36
    .line 525
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
    .line 488
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 490
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 486
    return-void

    #@7
    .line 489
    :catchall_0
    move-exception v0

    #@8
    .line 490
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 489
    throw v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 185
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    #@2
    return v0
.end method

.method public getImageFormat()I
    .locals 1

    #@0
    .prologue
    .line 204
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    #@2
    return v0
.end method

.method public getMaxImages()I
    .locals 1

    #@0
    .prologue
    .line 225
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    #@2
    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 172
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    #@2
    return v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 424
    iget-object v2, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 425
    if-eqz p1, :cond_4

    #@5
    .line 426
    if-eqz p2, :cond_0

    #@7
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@a
    move-result-object v0

    #@b
    .line 427
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-nez v0, :cond_1

    #@d
    .line 428
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    .line 429
    const-string/jumbo v3, "handler is null but the current thread is not a looper"

    #@12
    .line 428
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 424
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 426
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@1e
    .line 431
    :cond_1
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    #@20
    if-eqz v1, :cond_2

    #@22
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    #@24
    invoke-virtual {v1}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    #@27
    move-result-object v1

    #@28
    if-eq v1, v0, :cond_3

    #@2a
    .line 432
    :cond_2
    new-instance v1, Landroid/media/ImageReader$ListenerHandler;

    #@2c
    invoke-direct {v1, p0, v0}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    #@2f
    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    #@31
    .line 434
    :cond_3
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_1
    monitor-exit v2

    #@34
    .line 423
    return-void

    #@35
    .line 436
    :cond_4
    const/4 v1, 0x0

    #@36
    :try_start_2
    iput-object v1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    #@38
    .line 437
    const/4 v1, 0x0

    #@39
    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1
.end method
