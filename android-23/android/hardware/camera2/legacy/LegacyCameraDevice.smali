.class public Landroid/hardware/camera2/legacy/LegacyCameraDevice;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GRALLOC_USAGE_HW_COMPOSER:I = 0x800

.field private static final GRALLOC_USAGE_HW_RENDER:I = 0x200

.field private static final GRALLOC_USAGE_HW_TEXTURE:I = 0x100

.field private static final GRALLOC_USAGE_HW_VIDEO_ENCODER:I = 0x10000

.field private static final GRALLOC_USAGE_RENDERSCRIPT:I = 0x100000

.field private static final GRALLOC_USAGE_SW_READ_OFTEN:I = 0x3

.field private static final ILLEGAL_VALUE:I = -0x1

.field public static final MAX_DIMEN_FOR_ROUNDING:I = 0x780

.field public static final NATIVE_WINDOW_SCALING_MODE_SCALE_TO_WINDOW:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mCallbackHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraId:I

.field private mClosed:Z

.field private mConfiguredSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private final mIdle:Landroid/os/ConditionVariable;

.field private final mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

.field private final mResultHandler:Landroid/os/Handler;

.field private final mResultThread:Landroid/os/HandlerThread;

.field private final mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

.field private final mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 1
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 68
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@7
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;-><init>()V

    #@a
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@c
    .line 70
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    #@e
    .line 72
    new-instance v0, Landroid/os/ConditionVariable;

    #@10
    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    #@13
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    #@15
    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    #@17
    const-string/jumbo v1, "ResultThread"

    #@1a
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@1d
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@1f
    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    #@21
    const-string/jumbo v1, "CallbackThread"

    #@24
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@27
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@29
    .line 108
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    #@2b
    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)V

    #@2e
    .line 107
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@30
    .line 264
    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCameraId:I

    #@32
    .line 265
    iput-object p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@34
    .line 266
    const-string/jumbo v0, "CameraDevice-%d-LE"

    #@37
    new-array v1, v2, [Ljava/lang/Object;

    #@39
    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCameraId:I

    #@3b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v2

    #@3f
    aput-object v2, v1, v3

    #@41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@47
    .line 268
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@4c
    .line 269
    new-instance v0, Landroid/os/Handler;

    #@4e
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@50
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@57
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;

    #@59
    .line 270
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@5b
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@5e
    .line 271
    new-instance v0, Landroid/os/Handler;

    #@60
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@62
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@65
    move-result-object v1

    #@66
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@69
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandler:Landroid/os/Handler;

    #@6b
    .line 272
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@6d
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandler:Landroid/os/Handler;

    #@6f
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@71
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V

    #@74
    .line 273
    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@76
    .line 275
    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@78
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@7a
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@7d
    .line 274
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@7f
    .line 276
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@81
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->start()V

    #@84
    .line 263
    return-void
.end method

.method static configureSurface(Landroid/view/Surface;III)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 619
    const-string/jumbo v0, "width must be positive."

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@9
    .line 620
    const-string/jumbo v0, "height must be positive."

    #@c
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@f
    .line 622
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeConfigureSurface(Landroid/view/Surface;III)I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@16
    .line 617
    return-void
.end method

.method static containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z
    .locals 3
    .param p0, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 676
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    #@3
    move-result-wide v0

    #@4
    .line 677
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v2

    #@8
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    return v2
.end method

.method public static detectSurfaceDataspace(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 612
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 613
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceDataspace(Landroid/view/Surface;)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static detectSurfaceType(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 604
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 605
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method static detectSurfaceUsageFlags(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 596
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 597
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method static findClosestSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;
    .locals 8
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "supportedSizes"    # [Landroid/util/Size;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 510
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 511
    :cond_0
    return-object v2

    #@6
    .line 513
    :cond_1
    const/4 v0, 0x0

    #@7
    .line 514
    .local v0, "bestSize":Landroid/util/Size;
    const/4 v2, 0x0

    #@8
    array-length v3, p1

    #@9
    .end local v0    # "bestSize":Landroid/util/Size;
    :goto_0
    if-ge v2, v3, :cond_5

    #@b
    aget-object v1, p1, v2

    #@d
    .line 515
    .local v1, "s":Landroid/util/Size;
    invoke-virtual {v1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_2

    #@13
    .line 516
    return-object p0

    #@14
    .line 517
    :cond_2
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    #@17
    move-result v4

    #@18
    const/16 v5, 0x780

    #@1a
    if-gt v4, v5, :cond_4

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 518
    invoke-static {p0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J

    #@21
    move-result-wide v4

    #@22
    .line 519
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J

    #@25
    move-result-wide v6

    #@26
    .line 518
    cmp-long v4, v4, v6

    #@28
    if-gez v4, :cond_4

    #@2a
    .line 520
    :cond_3
    move-object v0, v1

    #@2b
    .line 514
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 523
    .end local v1    # "s":Landroid/util/Size;
    :cond_5
    return-object v0
.end method

.method static findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J
    .locals 8
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    #@0
    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@7
    move-result v5

    #@8
    sub-int/2addr v4, v5

    #@9
    int-to-long v0, v4

    #@a
    .line 503
    .local v0, "d0":J
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    #@d
    move-result v4

    #@e
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@11
    move-result v5

    #@12
    sub-int/2addr v4, v5

    #@13
    int-to-long v2, v4

    #@14
    .line 504
    .local v2, "d1":J
    mul-long v4, v0, v0

    #@16
    mul-long v6, v2, v2

    #@18
    add-long/2addr v4, v6

    #@19
    return-wide v4
.end method

.method private getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 9
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 94
    if-nez p1, :cond_0

    #@4
    .line 95
    new-instance v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@6
    .line 96
    const-wide/16 v6, -0x1

    #@8
    move v3, v2

    #@9
    move v4, v2

    #@a
    move v5, v2

    #@b
    move v8, v2

    #@c
    .line 95
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJI)V

    #@f
    return-object v1

    #@10
    .line 98
    :cond_0
    new-instance v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@12
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getSubsequeceId()I

    #@19
    move-result v3

    #@1a
    .line 99
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    #@1d
    move-result-wide v6

    #@1e
    .line 100
    const/4 v8, 0x1

    #@1f
    move v5, v4

    #@20
    .line 98
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJI)V

    #@23
    return-object v1
.end method

.method static getSurfaceId(Landroid/view/Surface;)J
    .locals 2
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 655
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 656
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeGetSurfaceId(Landroid/view/Surface;)J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method static getSurfaceIds(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 660
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-nez p0, :cond_0

    #@2
    .line 661
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "Null argument surfaces"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 663
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 664
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_2

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/view/Surface;

    #@20
    .line 665
    .local v2, "s":Landroid/view/Surface;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    #@23
    move-result-wide v0

    #@24
    .line 666
    .local v0, "id":J
    const-wide/16 v6, 0x0

    #@26
    cmp-long v5, v0, v6

    #@28
    if-nez v5, :cond_1

    #@2a
    .line 667
    new-instance v5, Ljava/lang/IllegalStateException;

    #@2c
    .line 668
    const-string/jumbo v6, "Configured surface had null native GraphicBufferProducer pointer!"

    #@2f
    .line 667
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5

    #@33
    .line 670
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 672
    .end local v0    # "id":J
    .end local v2    # "s":Landroid/view/Surface;
    :cond_2
    return-object v4
.end method

.method public static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 4
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 537
    const/4 v1, 0x2

    #@4
    new-array v0, v1, [I

    #@6
    .line 538
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@d
    .line 540
    new-instance v1, Landroid/util/Size;

    #@f
    const/4 v2, 0x0

    #@10
    aget v2, v0, v2

    #@12
    const/4 v3, 0x1

    #@13
    aget v3, v0, v3

    #@15
    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    #@18
    return-object v1
.end method

.method static getTextureSize(Landroid/graphics/SurfaceTexture;)Landroid/util/Size;
    .locals 4
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 689
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 691
    const/4 v1, 0x2

    #@4
    new-array v0, v1, [I

    #@6
    .line 692
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectTextureDimens(Landroid/graphics/SurfaceTexture;[I)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@d
    .line 695
    new-instance v1, Landroid/util/Size;

    #@f
    const/4 v2, 0x0

    #@10
    aget v2, v0, v2

    #@12
    const/4 v3, 0x1

    #@13
    aget v3, v0, v3

    #@15
    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    #@18
    return-object v1
.end method

.method public static isFlexibleConsumer(Landroid/view/Surface;)Z
    .locals 3
    .param p0, "output"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 544
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    #@3
    move-result v1

    #@4
    .line 548
    .local v1, "usageFlags":I
    const/high16 v2, 0x110000

    #@6
    .line 551
    and-int/2addr v2, v1

    #@7
    if-nez v2, :cond_1

    #@9
    .line 552
    and-int/lit16 v2, v1, 0x903

    #@b
    if-eqz v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 553
    .local v0, "flexibleConsumer":Z
    :goto_0
    return v0

    #@f
    .line 552
    .end local v0    # "flexibleConsumer":Z
    :cond_0
    const/4 v0, 0x0

    #@10
    .restart local v0    # "flexibleConsumer":Z
    goto :goto_0

    #@11
    .line 551
    .end local v0    # "flexibleConsumer":Z
    :cond_1
    const/4 v0, 0x0

    #@12
    .restart local v0    # "flexibleConsumer":Z
    goto :goto_0
.end method

.method public static isPreviewConsumer(Landroid/view/Surface;)Z
    .locals 6
    .param p0, "output"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 557
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    #@3
    move-result v3

    #@4
    .line 558
    .local v3, "usageFlags":I
    const v4, 0x110003

    #@7
    .line 562
    and-int/2addr v4, v3

    #@8
    if-nez v4, :cond_1

    #@a
    .line 563
    and-int/lit16 v4, v3, 0xb00

    #@c
    if-eqz v4, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    .line 564
    .local v1, "previewConsumer":Z
    :goto_0
    const/4 v2, 0x0

    #@10
    .line 566
    .local v2, "surfaceFormat":I
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    .line 571
    return v1

    #@15
    .line 563
    .end local v1    # "previewConsumer":Z
    .end local v2    # "surfaceFormat":I
    :cond_0
    const/4 v1, 0x0

    #@16
    .restart local v1    # "previewConsumer":Z
    goto :goto_0

    #@17
    .line 562
    .end local v1    # "previewConsumer":Z
    :cond_1
    const/4 v1, 0x0

    #@18
    .restart local v1    # "previewConsumer":Z
    goto :goto_0

    #@19
    .line 567
    .restart local v2    # "surfaceFormat":I
    :catch_0
    move-exception v0

    #@1a
    .line 568
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v5, "Surface was abandoned"

    #@1f
    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    throw v4
.end method

.method public static isVideoEncoderConsumer(Landroid/view/Surface;)Z
    .locals 6
    .param p0, "output"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 575
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    #@3
    move-result v2

    #@4
    .line 576
    .local v2, "usageFlags":I
    const v4, 0x100903

    #@7
    .line 579
    and-int/2addr v4, v2

    #@8
    if-nez v4, :cond_1

    #@a
    .line 578
    const/high16 v4, 0x10000

    #@c
    .line 580
    and-int/2addr v4, v2

    #@d
    if-eqz v4, :cond_0

    #@f
    const/4 v3, 0x1

    #@10
    .line 582
    .local v3, "videoEncoderConsumer":Z
    :goto_0
    const/4 v1, 0x0

    #@11
    .line 584
    .local v1, "surfaceFormat":I
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    .line 589
    return v3

    #@16
    .line 580
    .end local v1    # "surfaceFormat":I
    .end local v3    # "videoEncoderConsumer":Z
    :cond_0
    const/4 v3, 0x0

    #@17
    .restart local v3    # "videoEncoderConsumer":Z
    goto :goto_0

    #@18
    .line 579
    .end local v3    # "videoEncoderConsumer":Z
    :cond_1
    const/4 v3, 0x0

    #@19
    .restart local v3    # "videoEncoderConsumer":Z
    goto :goto_0

    #@1a
    .line 585
    .restart local v1    # "surfaceFormat":I
    :catch_0
    move-exception v0

    #@1b
    .line 586
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v5, "Surface was abandoned"

    #@20
    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v4
.end method

.method private static native nativeConfigureSurface(Landroid/view/Surface;III)I
.end method

.method private static native nativeDetectSurfaceDataspace(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I
.end method

.method private static native nativeDetectSurfaceType(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)I
.end method

.method private static native nativeDetectTextureDimens(Landroid/graphics/SurfaceTexture;[I)I
.end method

.method static native nativeGetJpegFooterSize()I
.end method

.method private static native nativeGetSurfaceId(Landroid/view/Surface;)J
.end method

.method private static native nativeProduceFrame(Landroid/view/Surface;[BIII)I
.end method

.method private static native nativeSetNextTimestamp(Landroid/view/Surface;J)I
.end method

.method private static native nativeSetScalingMode(Landroid/view/Surface;I)I
.end method

.method private static native nativeSetSurfaceDimens(Landroid/view/Surface;II)I
.end method

.method private static native nativeSetSurfaceFormat(Landroid/view/Surface;I)I
.end method

.method private static native nativeSetSurfaceOrientation(Landroid/view/Surface;II)I
.end method

.method static needsConversion(Landroid/view/Surface;)Z
    .locals 3
    .param p0, "s"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 243
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    #@4
    move-result v0

    #@5
    .line 244
    .local v0, "nativeType":I
    const/16 v2, 0x23

    #@7
    if-eq v0, v2, :cond_0

    #@9
    const v2, 0x32315659

    #@c
    if-ne v0, v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v1

    #@f
    .line 245
    :cond_1
    const/16 v2, 0x11

    #@11
    if-eq v0, v2, :cond_0

    #@13
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method static produceFrame(Landroid/view/Surface;[BIII)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "pixelBuffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 629
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 630
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 631
    const-string/jumbo v0, "width must be positive."

    #@9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@c
    .line 632
    const-string/jumbo v0, "height must be positive."

    #@f
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@12
    .line 634
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeProduceFrame(Landroid/view/Surface;[BIII)I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@19
    .line 628
    return-void
.end method

.method static setNextTimestamp(Landroid/view/Surface;J)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 700
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 701
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetNextTimestamp(Landroid/view/Surface;J)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 699
    return-void
.end method

.method static setScalingMode(Landroid/view/Surface;I)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 706
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 707
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetScalingMode(Landroid/view/Surface;I)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 705
    return-void
.end method

.method static setSurfaceDimens(Landroid/view/Surface;II)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 647
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 648
    const-string/jumbo v0, "width must be positive."

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@9
    .line 649
    const-string/jumbo v0, "height must be positive."

    #@c
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@f
    .line 651
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceDimens(Landroid/view/Surface;II)I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@16
    .line 646
    return-void
.end method

.method static setSurfaceFormat(Landroid/view/Surface;I)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 640
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 642
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceFormat(Landroid/view/Surface;I)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 639
    return-void
.end method

.method static setSurfaceOrientation(Landroid/view/Surface;II)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "facing"    # I
    .param p2, "sensorOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 682
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 683
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceOrientation(Landroid/view/Surface;II)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 681
    return-void
.end method


# virtual methods
.method public cancelRequest(I)J
    .locals 2
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->cancelRepeating(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public close()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    .line 469
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@5
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->quit()V

    #@8
    .line 470
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@a
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    #@d
    .line 471
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@f
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    #@12
    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@14
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 481
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@1c
    .line 487
    :goto_1
    iput-boolean v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    #@1e
    .line 468
    return-void

    #@1f
    .line 475
    :catch_0
    move-exception v0

    #@20
    .line 476
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@22
    const-string/jumbo v2, "Thread %s (%d) interrupted while quitting."

    #@25
    new-array v3, v8, [Ljava/lang/Object;

    #@27
    .line 477
    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@29
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    aput-object v4, v3, v7

    #@2f
    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@31
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getId()J

    #@34
    move-result-wide v4

    #@35
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v4

    #@39
    aput-object v4, v3, v6

    #@3b
    .line 476
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    goto :goto_0

    #@43
    .line 482
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    #@44
    .line 483
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@46
    const-string/jumbo v2, "Thread %s (%d) interrupted while quitting."

    #@49
    new-array v3, v8, [Ljava/lang/Object;

    #@4b
    .line 484
    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@4d
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    aput-object v4, v3, v7

    #@53
    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@55
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getId()J

    #@58
    move-result-wide v4

    #@59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5c
    move-result-object v4

    #@5d
    aput-object v4, v3, v6

    #@5f
    .line 483
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_1
.end method

.method public configureOutputs(Ljava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 291
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 292
    .local v7, "sizedSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    if-eqz p1, :cond_7

    #@7
    .line 293
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v4

    #@b
    .local v4, "output$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v12

    #@f
    if-eqz v12, :cond_7

    #@11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/view/Surface;

    #@17
    .line 294
    .local v3, "output":Landroid/view/Surface;
    if-nez v3, :cond_0

    #@19
    .line 295
    move-object/from16 v0, p0

    #@1b
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@1d
    const-string/jumbo v13, "configureOutputs - null outputs are not allowed"

    #@20
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 296
    const/16 v12, -0x16

    #@25
    return v12

    #@26
    .line 298
    :cond_0
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    #@29
    move-result v12

    #@2a
    if-nez v12, :cond_1

    #@2c
    .line 299
    move-object/from16 v0, p0

    #@2e
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@30
    const-string/jumbo v13, "configureOutputs - invalid output surfaces are not allowed"

    #@33
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 300
    const/16 v12, -0x16

    #@38
    return v12

    #@39
    .line 302
    :cond_1
    move-object/from16 v0, p0

    #@3b
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@3d
    .line 303
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@3f
    .line 302
    invoke-virtual {v12, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@42
    move-result-object v9

    #@43
    check-cast v9, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@45
    .line 307
    .local v9, "streamConfigurations":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_start_0
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@48
    move-result-object v6

    #@49
    .line 308
    .local v6, "s":Landroid/util/Size;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    #@4c
    move-result v11

    #@4d
    .line 310
    .local v11, "surfaceType":I
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isFlexibleConsumer(Landroid/view/Surface;)Z

    #@50
    move-result v2

    #@51
    .line 312
    .local v2, "flexibleConsumer":Z
    invoke-virtual {v9, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    #@54
    move-result-object v8

    #@55
    .line 313
    .local v8, "sizes":[Landroid/util/Size;
    if-nez v8, :cond_2

    #@57
    .line 315
    const/4 v12, 0x1

    #@58
    if-lt v11, v12, :cond_3

    #@5a
    .line 316
    const/4 v12, 0x5

    #@5b
    if-gt v11, v12, :cond_3

    #@5d
    .line 321
    const/16 v12, 0x23

    #@5f
    invoke-virtual {v9, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    #@62
    move-result-object v8

    #@63
    .line 327
    :cond_2
    :goto_1
    invoke-static {v8, v6}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@66
    move-result v12

    #@67
    if-nez v12, :cond_6

    #@69
    .line 328
    if-eqz v2, :cond_4

    #@6b
    invoke-static {v6, v8}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findClosestSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    #@6e
    move-result-object v6

    #@6f
    if-eqz v6, :cond_4

    #@71
    .line 329
    new-instance v12, Landroid/util/Pair;

    #@73
    invoke-direct {v12, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@76
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@79
    goto :goto_0

    #@7a
    .line 341
    .end local v2    # "flexibleConsumer":Z
    .end local v6    # "s":Landroid/util/Size;
    .end local v8    # "sizes":[Landroid/util/Size;
    .end local v11    # "surfaceType":I
    :catch_0
    move-exception v1

    #@7b
    .line 342
    .local v1, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    move-object/from16 v0, p0

    #@7d
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@7f
    const-string/jumbo v13, "Surface bufferqueue is abandoned, cannot configure as output: "

    #@82
    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@85
    .line 343
    const/16 v12, -0x16

    #@87
    return v12

    #@88
    .line 322
    .end local v1    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .restart local v2    # "flexibleConsumer":Z
    .restart local v6    # "s":Landroid/util/Size;
    .restart local v8    # "sizes":[Landroid/util/Size;
    .restart local v11    # "surfaceType":I
    :cond_3
    const/16 v12, 0x21

    #@8a
    if-ne v11, v12, :cond_2

    #@8c
    .line 323
    const/16 v12, 0x100

    #@8e
    :try_start_1
    invoke-virtual {v9, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    #@91
    move-result-object v8

    #@92
    goto :goto_1

    #@93
    .line 331
    :cond_4
    if-nez v8, :cond_5

    #@95
    const-string/jumbo v5, "format is invalid."

    #@98
    .line 333
    .local v5, "reason":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    #@9a
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@9c
    const-string/jumbo v13, "Surface with size (w=%d, h=%d) and format 0x%x is not valid, %s"

    #@9f
    const/4 v14, 0x4

    #@a0
    new-array v14, v14, [Ljava/lang/Object;

    #@a2
    .line 334
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    #@a5
    move-result v15

    #@a6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v15

    #@aa
    const/16 v16, 0x0

    #@ac
    aput-object v15, v14, v16

    #@ae
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    #@b1
    move-result v15

    #@b2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5
    move-result-object v15

    #@b6
    const/16 v16, 0x1

    #@b8
    aput-object v15, v14, v16

    #@ba
    .line 335
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bd
    move-result-object v15

    #@be
    const/16 v16, 0x2

    #@c0
    aput-object v15, v14, v16

    #@c2
    const/4 v15, 0x3

    #@c3
    aput-object v5, v14, v15

    #@c5
    .line 333
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c8
    move-result-object v13

    #@c9
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    .line 336
    const/16 v12, -0x16

    #@ce
    return v12

    #@cf
    .line 332
    .end local v5    # "reason":Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v13, "size not in valid set: "

    #@d7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v12

    #@db
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@de
    move-result-object v13

    #@df
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v12

    #@e3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    .restart local v5    # "reason":Ljava/lang/String;
    goto :goto_2

    #@e8
    .line 339
    .end local v5    # "reason":Ljava/lang/String;
    :cond_6
    new-instance v12, Landroid/util/Pair;

    #@ea
    invoke-direct {v12, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@ed
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    #@f0
    goto/16 :goto_0

    #@f2
    .line 349
    .end local v2    # "flexibleConsumer":Z
    .end local v3    # "output":Landroid/view/Surface;
    .end local v4    # "output$iterator":Ljava/util/Iterator;
    .end local v6    # "s":Landroid/util/Size;
    .end local v8    # "sizes":[Landroid/util/Size;
    .end local v9    # "streamConfigurations":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v11    # "surfaceType":I
    :cond_7
    const/4 v10, 0x0

    #@f3
    .line 350
    .local v10, "success":Z
    move-object/from16 v0, p0

    #@f5
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@f7
    invoke-virtual {v12}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setConfiguring()Z

    #@fa
    move-result v12

    #@fb
    if-eqz v12, :cond_8

    #@fd
    .line 351
    move-object/from16 v0, p0

    #@ff
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@101
    invoke-virtual {v12, v7}, Landroid/hardware/camera2/legacy/RequestThreadManager;->configure(Ljava/util/Collection;)V

    #@104
    .line 352
    move-object/from16 v0, p0

    #@106
    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@108
    invoke-virtual {v12}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z

    #@10b
    move-result v10

    #@10c
    .line 355
    .end local v10    # "success":Z
    :cond_8
    if-eqz v10, :cond_a

    #@10e
    .line 356
    if-eqz p1, :cond_9

    #@110
    new-instance v12, Ljava/util/ArrayList;

    #@112
    move-object/from16 v0, p1

    #@114
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@117
    :goto_3
    move-object/from16 v0, p0

    #@119
    iput-object v12, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Ljava/util/List;

    #@11b
    .line 360
    const/4 v12, 0x0

    #@11c
    return v12

    #@11d
    .line 356
    :cond_9
    const/4 v12, 0x0

    #@11e
    goto :goto_3

    #@11f
    .line 358
    :cond_a
    const/16 v12, -0x26

    #@121
    return v12
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 493
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 497
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 491
    :goto_0
    return-void

    #@7
    .line 494
    :catch_0
    move-exception v0

    #@8
    .line 495
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Got error while trying to finalize, ignoring: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getMessage()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 497
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@28
    goto :goto_0

    #@29
    .line 496
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_0
    move-exception v1

    #@2a
    .line 497
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@2d
    .line 496
    throw v1
.end method

.method public flush()J
    .locals 3

    #@0
    .prologue
    .line 455
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    #@5
    move-result-wide v0

    #@6
    .line 456
    .local v0, "lastFrame":J
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    #@9
    .line 457
    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 464
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    #@2
    return v0
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z
    .param p3, "frameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;

    #@0
    .prologue
    .line 426
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 427
    .local v0, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    .line 428
    invoke-virtual {p0, v0, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 8
    .param p2, "repeating"    # Z
    .param p3, "frameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/16 v7, -0x16

    #@2
    .line 376
    if-eqz p1, :cond_0

    #@4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 377
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v6, "submitRequestList - Empty/null requests are not allowed"

    #@f
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 378
    return v7

    #@13
    .line 381
    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Ljava/util/List;

    #@15
    if-nez v5, :cond_3

    #@17
    new-instance v4, Ljava/util/ArrayList;

    #@19
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 385
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "request$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_8

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    #@2c
    .line 386
    .local v0, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@2f
    move-result-object v5

    #@30
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_4

    #@36
    .line 387
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@38
    const-string/jumbo v6, "submitRequestList - Each request must have at least one Surface target"

    #@3b
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 389
    return v7

    #@3f
    .line 382
    .end local v0    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v1    # "request$iterator":Ljava/util/Iterator;
    .end local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Ljava/util/List;

    #@41
    invoke-static {v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceIds(Ljava/util/Collection;)Ljava/util/List;

    #@44
    move-result-object v4

    #@45
    .restart local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    #@46
    .line 392
    .restart local v0    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v1    # "request$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@49
    move-result-object v5

    #@4a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v3

    #@4e
    .local v3, "surface$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_2

    #@54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v2

    #@58
    check-cast v2, Landroid/view/Surface;

    #@5a
    .line 393
    .local v2, "surface":Landroid/view/Surface;
    if-nez v2, :cond_6

    #@5c
    .line 394
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@5e
    const-string/jumbo v6, "submitRequestList - Null Surface targets are not allowed"

    #@61
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 395
    return v7

    #@65
    .line 396
    :cond_6
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Ljava/util/List;

    #@67
    if-nez v5, :cond_7

    #@69
    .line 397
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@6b
    const-string/jumbo v6, "submitRequestList - must configure  device with valid surfaces before submitting requests"

    #@6e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 399
    const/16 v5, -0x26

    #@73
    return v5

    #@74
    .line 400
    :cond_7
    invoke-static {v2, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    #@77
    move-result v5

    #@78
    if-nez v5, :cond_5

    #@7a
    .line 401
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@7c
    const-string/jumbo v6, "submitRequestList - cannot use a surface that wasn\'t configured"

    #@7f
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 402
    return v7

    #@83
    .line 408
    .end local v0    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v2    # "surface":Landroid/view/Surface;
    .end local v3    # "surface$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    #@85
    invoke-virtual {v5}, Landroid/os/ConditionVariable;->close()V

    #@88
    .line 409
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@8a
    invoke-virtual {v5, p1, p2, p3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->submitCaptureRequests(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    #@8d
    move-result v5

    #@8e
    return v5
.end method

.method public waitUntilIdle()V
    .locals 1

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    #@2
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    #@5
    .line 445
    return-void
.end method
