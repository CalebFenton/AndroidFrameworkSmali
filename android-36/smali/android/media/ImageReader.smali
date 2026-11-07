.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$HandlerExecutor;,
        Landroid/media/ImageReader$OnImageAvailableListener;,
        Landroid/media/ImageReader$ImagePlane;,
        Landroid/media/ImageReader$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final greylist-max-o ACQUIRE_NO_BUFS:I = 0x1

.field private static final greylist-max-o ACQUIRE_SUCCESS:I = 0x0

.field private static final blacklist DETACH_THROWS_ISE_ONLY:J = 0xe1daaa7L


# instance fields
.field private greylist-max-o mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCloseLock:Ljava/lang/Object;

.field private final blacklist mDataSpace:I

.field private final blacklist mDetachThrowsIseOnly:Z

.field private greylist-max-o mEstimatedNativeAllocBytes:I

.field private final greylist-max-o mFormat:I

.field private final blacklist mHardwareBufferFormat:I

.field private final greylist-max-o mHeight:I

.field private greylist-max-o mIsReaderValid:Z

.field private greylist-max-o mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxImages:I

.field private greylist-max-o mNativeContext:J

.field private final greylist-max-o mNumPlanes:I

.field private final blacklist mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private final blacklist mUsage:J

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataSpace(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFormat(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/media/ImageReader;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseImage(Landroid/media/ImageReader;Landroid/media/Image;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1528
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1529
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    .line 1530
    return-void
.end method

.method private constructor blacklist <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V
    .registers 18
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "maxImages"    # I
    .param p5, "usage"    # J
    .param p7, "parent"    # Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    nop

    .line 126
    const-wide/32 v0, 0xe1daaa7

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    .line 1115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 1116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 1123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 355
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    .line 356
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    .line 357
    iput p3, p0, Landroid/media/ImageReader;->mFormat:I

    .line 358
    move-wide v6, p5

    iput-wide v6, p0, Landroid/media/ImageReader;->mUsage:J

    .line 359
    iput p4, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 360
    move-object/from16 v0, p7

    iput-object v0, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 362
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v1}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    .line 363
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v1}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageReader;->mDataSpace:I

    .line 364
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v1}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageReader;->mNumPlanes:I

    .line 366
    iget v8, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    iget v9, p0, Landroid/media/ImageReader;->mDataSpace:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/media/ImageReader;->initializeImageReader(IIIIJII)V

    .line 368
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;Landroid/media/ImageReader-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-void
.end method

.method private constructor blacklist <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V
    .registers 19
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxImages"    # I
    .param p4, "usage"    # J
    .param p6, "parent"    # Landroid/hardware/camera2/MultiResolutionImageReader;
    .param p7, "hardwareBufferFormat"    # I
    .param p8, "dataSpace"    # I

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    nop

    .line 126
    const-wide/32 v0, 0xe1daaa7

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    .line 1115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 1116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 1123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 372
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    .line 373
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    .line 374
    iput-wide p4, p0, Landroid/media/ImageReader;->mUsage:J

    .line 375
    iput p3, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 376
    move-object/from16 v0, p6

    iput-object v0, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 377
    move/from16 v8, p7

    iput v8, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    .line 378
    move/from16 v9, p8

    iput v9, p0, Landroid/media/ImageReader;->mDataSpace:I

    .line 379
    iget v1, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    invoke-static {v1}, Landroid/media/ImageUtils;->getNumPlanesForHardwareBufferFormat(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageReader;->mNumPlanes:I

    .line 380
    invoke-static/range {p7 .. p8}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v1

    iput v1, p0, Landroid/media/ImageReader;->mFormat:I

    .line 382
    iget v4, p0, Landroid/media/ImageReader;->mFormat:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v9}, Landroid/media/ImageReader;->initializeImageReader(IIIIJII)V

    .line 384
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;IILandroid/media/ImageReader-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageReader;-><init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V

    return-void
.end method

.method private greylist-max-o acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .registers 7
    .param p1, "si"    # Landroid/media/ImageReader$SurfaceImage;

    .line 596
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    const/4 v1, 0x1

    .line 599
    .local v1, "status":I
    :try_start_4
    iget-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    if-eqz v2, :cond_d

    .line 600
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    move-result v2

    move v1, v2

    .line 603
    :cond_d
    packed-switch v1, :pswitch_data_3a

    .line 610
    new-instance v2, Ljava/lang/AssertionError;

    goto :goto_20

    .line 605
    :pswitch_13
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 608
    :pswitch_16
    nop

    .line 615
    if-nez v1, :cond_1e

    .line 616
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_1e
    monitor-exit v0

    return v1

    .line 610
    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "this":Landroid/media/ImageReader;
    .end local p1    # "si":Landroid/media/ImageReader$SurfaceImage;
    throw v2

    .line 619
    .end local v1    # "status":I
    .restart local p0    # "this":Landroid/media/ImageReader;
    .restart local p1    # "si":Landroid/media/ImageReader$SurfaceImage;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_37

    throw v1

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static blacklist initializeImagePlanes(ILandroid/graphics/GraphicBuffer;IIJIILandroid/graphics/Rect;)[Landroid/media/ImageReader$ImagePlane;
    .registers 18
    .param p0, "numPlanes"    # I
    .param p1, "buffer"    # Landroid/graphics/GraphicBuffer;
    .param p2, "fenceFd"    # I
    .param p3, "format"    # I
    .param p4, "timestamp"    # J
    .param p6, "transform"    # I
    .param p7, "scalingMode"    # I
    .param p8, "crop"    # Landroid/graphics/Rect;

    .line 1505
    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Landroid/media/ImageReader;->nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;

    move-result-object v5

    return-object v5
.end method

.method private blacklist initializeImageReader(IIIIJII)V
    .registers 19
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "maxImages"    # I
    .param p5, "usage"    # J
    .param p7, "hardwareBufferFormat"    # I
    .param p8, "dataSpace"    # I

    .line 321
    const/4 v9, 0x1

    if-lt p1, v9, :cond_44

    if-lt p2, v9, :cond_44

    .line 326
    if-lt p4, v9, :cond_3c

    .line 331
    const/16 v1, 0x11

    if-eq p3, v1, :cond_34

    .line 336
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIIJII)V

    .line 339
    iput-boolean v9, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 341
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 348
    invoke-static {p1, p2, p3, v9}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v1

    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 350
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v4, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v1, v4}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 351
    return-void

    .line 332
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "NV21 format is not supported"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Maximum outstanding image count must be at least 1"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The image dimensions must be positive"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o isImageOwnedbyMe(Landroid/media/Image;)Z
    .registers 5
    .param p1, "image"    # Landroid/media/Image;

    .line 911
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 912
    return v1

    .line 914
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 915
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v2

    if-ne v2, p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeClose()V
.end method

.method private static synchronized native blacklist nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;
.end method

.method private synchronized native blacklist nativeDetachImage(Landroid/media/Image;Z)I
.end method

.method private synchronized native greylist-max-o nativeDiscardFreeBuffers()V
.end method

.method private synchronized native greylist-max-o nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native greylist-max-o nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native blacklist nativeInit(Ljava/lang/Object;IIIJII)V
.end method

.method private synchronized native greylist-max-o nativeReleaseImage(Landroid/media/Image;)V
.end method

.method private static synchronized native blacklist nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
.end method

.method public static whitelist newInstance(IIII)Landroid/media/ImageReader;
    .registers 12
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    .line 184
    new-instance v0, Landroid/media/ImageReader;

    .line 185
    const/16 v1, 0x22

    if-ne p2, v1, :cond_9

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_9
    const-wide/16 v1, 0x3

    :goto_b
    move-wide v5, v1

    const/4 v7, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .end local p0    # "width":I
    .end local p1    # "height":I
    .end local p2    # "format":I
    .end local p3    # "maxImages":I
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "format":I
    .local v4, "maxImages":I
    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    .line 184
    return-object v0
.end method

.method public static whitelist newInstance(IIIIJ)Landroid/media/ImageReader;
    .registers 14
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .param p4, "usage"    # J

    .line 301
    new-instance v0, Landroid/media/ImageReader;

    const/4 v7, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p0    # "width":I
    .end local p1    # "height":I
    .end local p2    # "format":I
    .end local p3    # "maxImages":I
    .end local p4    # "usage":J
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "format":I
    .local v4, "maxImages":I
    .local v5, "usage":J
    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v0
.end method

.method public static blacklist newInstance(IIIILandroid/hardware/camera2/MultiResolutionImageReader;)Landroid/media/ImageReader;
    .registers 13
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .param p4, "parent"    # Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 315
    new-instance v0, Landroid/media/ImageReader;

    .line 316
    const/16 v1, 0x22

    if-ne p2, v1, :cond_9

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_9
    const-wide/16 v1, 0x3

    :goto_b
    move-wide v5, v1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    .end local p0    # "width":I
    .end local p1    # "height":I
    .end local p2    # "format":I
    .end local p3    # "maxImages":I
    .end local p4    # "parent":Landroid/hardware/camera2/MultiResolutionImageReader;
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "format":I
    .local v4, "maxImages":I
    .local v7, "parent":Landroid/hardware/camera2/MultiResolutionImageReader;
    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    .line 315
    return-object v0
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;)V
    .registers 7
    .param p0, "selfRef"    # Ljava/lang/Object;

    .line 926
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 927
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageReader;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 928
    .local v1, "ir":Landroid/media/ImageReader;
    if-nez v1, :cond_c

    .line 929
    return-void

    .line 931
    :cond_c
    const-string v2, "android.media.ImageReader#postEventFromNative"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 935
    iget-object v2, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 936
    :try_start_14
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 937
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, v1, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 938
    .local v4, "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_34

    .line 940
    iget-object v5, v1, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 941
    :try_start_1c
    iget-boolean v2, v1, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 942
    .local v2, "isReaderValid":Z
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_31

    .line 947
    if-eqz v3, :cond_2d

    if-eqz v4, :cond_2d

    if-eqz v2, :cond_2d

    .line 948
    new-instance v5, Landroid/media/ImageReader$1;

    invoke-direct {v5, v4, v1}, Landroid/media/ImageReader$1;-><init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/media/ImageReader;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 955
    :cond_2d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 956
    return-void

    .line 942
    .end local v2    # "isReaderValid":Z
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 938
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v3
.end method

.method private greylist-max-o releaseImage(Landroid/media/Image;)V
    .registers 5
    .param p1, "i"    # Landroid/media/Image;

    .line 679
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    if-eqz v0, :cond_31

    .line 683
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 684
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_c

    .line 685
    return-void

    .line 688
    :cond_c
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_29

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 693
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    .line 694
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    .line 695
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 696
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 697
    return-void

    .line 689
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This image was not produced by an ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist unlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
    .registers 1
    .param p0, "buffer"    # Landroid/graphics/GraphicBuffer;

    .line 1517
    invoke-static {p0}, Landroid/media/ImageReader;->nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 1518
    return-void
.end method


# virtual methods
.method public whitelist acquireLatestImage()Landroid/media/Image;
    .registers 5

    .line 544
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 545
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_8

    .line 546
    const/4 v1, 0x0

    return-object v1

    .line 550
    :cond_8
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_25

    .line 551
    .local v1, "next":Landroid/media/Image;
    if-nez v1, :cond_20

    .line 552
    move-object v2, v0

    .line 553
    .local v2, "result":Landroid/media/Image;
    const/4 v0, 0x0

    .line 554
    nop

    .line 560
    if-eqz v0, :cond_16

    .line 561
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 563
    :cond_16
    iget-object v3, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v3, :cond_1f

    .line 564
    iget-object v3, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {v3, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 554
    :cond_1f
    return-object v2

    .line 556
    .end local v2    # "result":Landroid/media/Image;
    :cond_20
    :try_start_20
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    .line 557
    move-object v0, v1

    .line 558
    .end local v1    # "next":Landroid/media/Image;
    goto :goto_8

    .line 560
    :catchall_25
    move-exception v1

    if-eqz v0, :cond_2b

    .line 561
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 563
    :cond_2b
    iget-object v2, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v2, :cond_34

    .line 564
    iget-object v2, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 566
    :cond_34
    throw v1
.end method

.method public whitelist acquireNextImage()Landroid/media/Image;
    .registers 6

    .line 654
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 655
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    .line 657
    .local v1, "status":I
    packed-switch v1, :pswitch_data_40

    .line 668
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 663
    :pswitch_27
    new-instance v2, Ljava/lang/IllegalStateException;

    iget v3, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 666
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 664
    const-string v4, "maxImages (%d) has already been acquired, call #close before acquiring more."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    :pswitch_3d
    const/4 v2, 0x0

    return-object v2

    .line 659
    :pswitch_3f
    return-object v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3d
        :pswitch_27
    .end packed-switch
.end method

.method public greylist-max-o acquireNextImageNoThrowISE()Landroid/media/Image;
    .registers 3

    .line 577
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 578
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_f

    move-object v1, v0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public whitelist test-api close()V
    .registers 5

    .line 790
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 791
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 801
    :cond_d
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    const/4 v1, 0x0

    :try_start_11
    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 803
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    .line 804
    .local v3, "image":Landroid/media/Image;
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 805
    .end local v3    # "image":Landroid/media/Image;
    goto :goto_19

    .line 806
    :cond_29
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 808
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    .line 810
    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_40

    .line 811
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 812
    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 814
    :cond_40
    monitor-exit v0

    .line 815
    return-void

    .line 814
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public greylist-max-o detachImage(Landroid/media/Image;)V
    .registers 5
    .param p1, "image"    # Landroid/media/Image;

    .line 889
    if-eqz p1, :cond_35

    .line 892
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 897
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 898
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 900
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_25

    .line 904
    iget-boolean v1, p0, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    invoke-direct {p0, p1, v1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;Z)I

    .line 905
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    .line 906
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$fputmPlanes(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 907
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$msetDetached(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 908
    return-void

    .line 901
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image was already detached from this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 893
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist discardFreeBuffers()V
    .registers 3

    .line 836
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeDiscardFreeBuffers()V

    .line 838
    monitor-exit v0

    .line 839
    return-void

    .line 838
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 844
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 846
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 847
    nop

    .line 848
    return-void

    .line 846
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 847
    throw v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return v0
.end method

.method public whitelist getHardwareBufferFormat()I
    .registers 2

    .line 445
    iget v0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 409
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public whitelist getImageFormat()I
    .registers 2

    .line 432
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public whitelist getMaxImages()I
    .registers 2

    .line 479
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 2

    .line 508
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getUsage()J
    .registers 3

    .line 488
    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public whitelist setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 712
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    if-eqz p1, :cond_37

    .line 714
    if-eqz p2, :cond_c

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 715
    .local v1, "looper":Landroid/os/Looper;
    :goto_10
    if-eqz v1, :cond_2f

    .line 719
    iget-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-virtual {v2}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_2e

    .line 720
    :cond_1e
    new-instance v2, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 721
    new-instance v2, Landroid/media/ImageReader$HandlerExecutor;

    iget-object v3, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v2, p0, v3}, Landroid/media/ImageReader$HandlerExecutor;-><init>(Landroid/media/ImageReader;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 723
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_2e
    goto :goto_3c

    .line 716
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/ImageReader;
    .end local p1    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 724
    .end local v1    # "looper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/media/ImageReader;
    .restart local p1    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_37
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 725
    iput-object v1, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 727
    :goto_3c
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 728
    monitor-exit v0

    .line 729
    return-void

    .line 728
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public blacklist setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 746
    if-eqz p2, :cond_e

    .line 750
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_5
    iput-object p2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 752
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 753
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1

    .line 747
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
