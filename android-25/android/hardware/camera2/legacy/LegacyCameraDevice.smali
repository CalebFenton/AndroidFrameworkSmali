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

.field private mConfiguredSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
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

.method static synthetic -wrap1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;ILjava/lang/Object;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 1
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "errorCode"    # I
    .param p3, "errorArg"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;ILjava/lang/Object;)Landroid/hardware/camera2/impl/CaptureResultExtras;

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
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 67
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@7
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;-><init>()V

    #@a
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@c
    .line 69
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    #@e
    .line 71
    new-instance v0, Landroid/os/ConditionVariable;

    #@10
    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    #@13
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    #@15
    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    #@17
    const-string/jumbo v1, "ResultThread"

    #@1a
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@1d
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@1f
    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    #@21
    const-string/jumbo v1, "CallbackThread"

    #@24
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@27
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@29
    .line 123
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    #@2b
    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)V

    #@2e
    .line 122
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@30
    .line 298
    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCameraId:I

    #@32
    .line 299
    iput-object p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@34
    .line 300
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
    .line 302
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@4c
    .line 303
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
    .line 304
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@5b
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@5e
    .line 305
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
    .line 306
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@6d
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandler:Landroid/os/Handler;

    #@6f
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStateListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    #@71
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V

    #@74
    .line 307
    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@76
    .line 309
    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@78
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@7a
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    #@7d
    .line 308
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@7f
    .line 310
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@81
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->start()V

    #@84
    .line 297
    return-void
.end method

.method static connectSurface(Landroid/view/Surface;)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 664
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 666
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeConnectSurface(Landroid/view/Surface;)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 663
    return-void
.end method

.method static containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z
    .locals 4
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
    .line 748
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 750
    .local v2, "id":J
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-wide v2

    #@6
    .line 755
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 751
    :catch_0
    move-exception v0

    #@10
    .line 753
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    const/4 v1, 0x0

    #@11
    return v1
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
    .line 659
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 660
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
    .line 651
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 652
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
    .line 643
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 644
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method static disconnectSurface(Landroid/view/Surface;)V
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 670
    if-nez p0, :cond_0

    #@2
    return-void

    #@3
    .line 672
    :cond_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDisconnectSurface(Landroid/view/Surface;)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 669
    return-void
.end method

.method static findClosestSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;
    .locals 8
    .param p0, "size"    # Landroid/util/Size;
    .param p1, "supportedSizes"    # [Landroid/util/Size;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 557
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 558
    :cond_0
    return-object v2

    #@6
    .line 560
    :cond_1
    const/4 v0, 0x0

    #@7
    .line 561
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
    .line 562
    .local v1, "s":Landroid/util/Size;
    invoke-virtual {v1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_2

    #@13
    .line 563
    return-object p0

    #@14
    .line 564
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
    .line 565
    invoke-static {p0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J

    #@21
    move-result-wide v4

    #@22
    .line 566
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findEuclidDistSquare(Landroid/util/Size;Landroid/util/Size;)J

    #@25
    move-result-wide v6

    #@26
    .line 565
    cmp-long v4, v4, v6

    #@28
    if-gez v4, :cond_4

    #@2a
    .line 567
    :cond_3
    move-object v0, v1

    #@2b
    .line 561
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 570
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
    .line 549
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
    .line 550
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
    .line 551
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
    .locals 2
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    #@0
    .prologue
    .line 94
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 93
    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;ILjava/lang/Object;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;ILjava/lang/Object;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    .locals 11
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "errorCode"    # I
    .param p3, "errorArg"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 99
    const/4 v9, -0x1

    #@3
    .line 100
    .local v9, "errorStreamId":I
    const/4 v1, 0x5

    #@4
    if-ne p2, v1, :cond_0

    #@6
    move-object v0, p3

    #@7
    .line 101
    check-cast v0, Landroid/view/Surface;

    #@9
    .line 102
    .local v0, "errorTarget":Landroid/view/Surface;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    #@e
    move-result v10

    #@f
    .line 103
    .local v10, "indexOfTarget":I
    if-gez v10, :cond_1

    #@11
    .line 104
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@13
    const-string/jumbo v3, "Buffer drop error reported for unknown Surface"

    #@16
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 109
    .end local v0    # "errorTarget":Landroid/view/Surface;
    .end local v10    # "indexOfTarget":I
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    #@1b
    .line 110
    new-instance v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@1d
    .line 111
    const-wide/16 v6, -0x1

    #@1f
    move v3, v2

    #@20
    move v4, v2

    #@21
    move v5, v2

    #@22
    move v8, v2

    #@23
    move v9, v2

    #@24
    .line 110
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJII)V

    #@27
    .end local v9    # "errorStreamId":I
    return-object v1

    #@28
    .line 106
    .restart local v0    # "errorTarget":Landroid/view/Surface;
    .restart local v9    # "errorStreamId":I
    .restart local v10    # "indexOfTarget":I
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    #@2d
    move-result v9

    #@2e
    goto :goto_0

    #@2f
    .line 113
    .end local v0    # "errorTarget":Landroid/view/Surface;
    .end local v10    # "indexOfTarget":I
    :cond_2
    new-instance v1, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@31
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    #@34
    move-result v2

    #@35
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getSubsequeceId()I

    #@38
    move-result v3

    #@39
    .line 114
    invoke-virtual {p1}, Landroid/hardware/camera2/legacy/RequestHolder;->getFrameNumber()J

    #@3c
    move-result-wide v6

    #@3d
    .line 115
    const/4 v8, 0x1

    #@3e
    move v5, v4

    #@3f
    .line 113
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJII)V

    #@42
    return-object v1
.end method

.method static getSurfaceId(Landroid/view/Surface;)J
    .locals 4
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 704
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 706
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeGetSurfaceId(Landroid/view/Surface;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-wide v2

    #@7
    return-wide v2

    #@8
    .line 707
    :catch_0
    move-exception v0

    #@9
    .line 708
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    #@b
    invoke-direct {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    #@e
    throw v1
.end method

.method static getSurfaceIds(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    .local p0, "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    if-nez p0, :cond_0

    #@2
    .line 715
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "Null argument surfaces"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 717
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 718
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@13
    move-result v0

    #@14
    .line 719
    .local v0, "count":I
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@17
    .line 720
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Landroid/view/Surface;

    #@1d
    invoke-static {v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    #@20
    move-result-wide v2

    #@21
    .line 721
    .local v2, "id":J
    const-wide/16 v6, 0x0

    #@23
    cmp-long v5, v2, v6

    #@25
    if-nez v5, :cond_1

    #@27
    .line 722
    new-instance v5, Ljava/lang/IllegalStateException;

    #@29
    .line 723
    const-string/jumbo v6, "Configured surface had null native GraphicBufferProducer pointer!"

    #@2c
    .line 722
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v5

    #@30
    .line 725
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@33
    move-result-object v5

    #@34
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    .line 719
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 727
    .end local v2    # "id":J
    :cond_2
    return-object v4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    .line 732
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    if-nez p0, :cond_0

    #@2
    .line 733
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "Null argument surfaces"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 735
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 736
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
    .line 737
    .local v2, "s":Landroid/view/Surface;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceId(Landroid/view/Surface;)J

    #@23
    move-result-wide v0

    #@24
    .line 738
    .local v0, "id":J
    const-wide/16 v6, 0x0

    #@26
    cmp-long v5, v0, v6

    #@28
    if-nez v5, :cond_1

    #@2a
    .line 739
    new-instance v5, Ljava/lang/IllegalStateException;

    #@2c
    .line 740
    const-string/jumbo v6, "Configured surface had null native GraphicBufferProducer pointer!"

    #@2f
    .line 739
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5

    #@33
    .line 742
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@36
    move-result-object v5

    #@37
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 744
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
    .line 582
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 584
    const/4 v1, 0x2

    #@4
    new-array v0, v1, [I

    #@6
    .line 585
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@d
    .line 587
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
    .line 767
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 769
    const/4 v1, 0x2

    #@4
    new-array v0, v1, [I

    #@6
    .line 770
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeDetectTextureDimens(Landroid/graphics/SurfaceTexture;[I)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@d
    .line 773
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
    const/4 v0, 0x0

    #@1
    .line 591
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    #@4
    move-result v1

    #@5
    .line 595
    .local v1, "usageFlags":I
    const/high16 v2, 0x110000

    #@7
    .line 598
    and-int/2addr v2, v1

    #@8
    if-nez v2, :cond_0

    #@a
    .line 599
    and-int/lit16 v2, v1, 0x903

    #@c
    if-eqz v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    .line 600
    .local v0, "flexibleConsumer":Z
    :cond_0
    return v0
.end method

.method public static isPreviewConsumer(Landroid/view/Surface;)Z
    .locals 6
    .param p0, "output"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 604
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    #@3
    move-result v3

    #@4
    .line 605
    .local v3, "usageFlags":I
    const v4, 0x110003

    #@7
    .line 609
    and-int/2addr v4, v3

    #@8
    if-nez v4, :cond_1

    #@a
    .line 610
    and-int/lit16 v4, v3, 0xb00

    #@c
    if-eqz v4, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    .line 611
    .local v1, "previewConsumer":Z
    :goto_0
    const/4 v2, 0x0

    #@10
    .line 613
    .local v2, "surfaceFormat":I
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    .line 618
    return v1

    #@15
    .line 610
    .end local v1    # "previewConsumer":Z
    .end local v2    # "surfaceFormat":I
    :cond_0
    const/4 v1, 0x0

    #@16
    .restart local v1    # "previewConsumer":Z
    goto :goto_0

    #@17
    .line 609
    .end local v1    # "previewConsumer":Z
    :cond_1
    const/4 v1, 0x0

    #@18
    .restart local v1    # "previewConsumer":Z
    goto :goto_0

    #@19
    .line 614
    .restart local v2    # "surfaceFormat":I
    :catch_0
    move-exception v0

    #@1a
    .line 615
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
    .line 622
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceUsageFlags(Landroid/view/Surface;)I

    #@3
    move-result v2

    #@4
    .line 623
    .local v2, "usageFlags":I
    const v4, 0x100903

    #@7
    .line 626
    and-int/2addr v4, v2

    #@8
    if-nez v4, :cond_1

    #@a
    .line 625
    const/high16 v4, 0x10000

    #@c
    .line 627
    and-int/2addr v4, v2

    #@d
    if-eqz v4, :cond_0

    #@f
    const/4 v3, 0x1

    #@10
    .line 629
    .local v3, "videoEncoderConsumer":Z
    :goto_0
    const/4 v1, 0x0

    #@11
    .line 631
    .local v1, "surfaceFormat":I
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    .line 636
    return v3

    #@16
    .line 627
    .end local v1    # "surfaceFormat":I
    .end local v3    # "videoEncoderConsumer":Z
    :cond_0
    const/4 v3, 0x0

    #@17
    .restart local v3    # "videoEncoderConsumer":Z
    goto :goto_0

    #@18
    .line 626
    .end local v3    # "videoEncoderConsumer":Z
    :cond_1
    const/4 v3, 0x0

    #@19
    .restart local v3    # "videoEncoderConsumer":Z
    goto :goto_0

    #@1a
    .line 632
    .restart local v1    # "surfaceFormat":I
    :catch_0
    move-exception v0

    #@1b
    .line 633
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v5, "Surface was abandoned"

    #@20
    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v4
.end method

.method private static native nativeConnectSurface(Landroid/view/Surface;)I
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

.method private static native nativeDisconnectSurface(Landroid/view/Surface;)I
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
    .line 277
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    #@4
    move-result v0

    #@5
    .line 278
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
    .line 279
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
    .line 678
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 679
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 680
    const-string/jumbo v0, "width must be positive."

    #@9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@c
    .line 681
    const-string/jumbo v0, "height must be positive."

    #@f
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@12
    .line 683
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeProduceFrame(Landroid/view/Surface;[BIII)I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@19
    .line 677
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
    .line 778
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 779
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetNextTimestamp(Landroid/view/Surface;J)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 777
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
    .line 784
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 785
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetScalingMode(Landroid/view/Surface;I)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 783
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
    .line 696
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 697
    const-string/jumbo v0, "width must be positive."

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@9
    .line 698
    const-string/jumbo v0, "height must be positive."

    #@c
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@f
    .line 700
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceDimens(Landroid/view/Surface;II)I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@16
    .line 695
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
    .line 689
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 691
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceFormat(Landroid/view/Surface;I)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 688
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
    .line 760
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 761
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeSetSurfaceOrientation(Landroid/view/Surface;II)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnError(I)I

    #@a
    .line 759
    return-void
.end method


# virtual methods
.method public cancelRequest(I)J
    .locals 2
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 486
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
    .line 516
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@5
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->quit()V

    #@8
    .line 517
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@a
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    #@d
    .line 518
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@f
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    #@12
    .line 521
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    #@14
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 528
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultThread:Landroid/os/HandlerThread;

    #@19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@1c
    .line 534
    :goto_1
    iput-boolean v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    #@1e
    .line 515
    return-void

    #@1f
    .line 522
    :catch_0
    move-exception v0

    #@20
    .line 523
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@22
    const-string/jumbo v2, "Thread %s (%d) interrupted while quitting."

    #@25
    new-array v3, v8, [Ljava/lang/Object;

    #@27
    .line 524
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
    .line 523
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    goto :goto_0

    #@43
    .line 529
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    #@44
    .line 530
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@46
    const-string/jumbo v2, "Thread %s (%d) interrupted while quitting."

    #@49
    new-array v3, v8, [Ljava/lang/Object;

    #@4b
    .line 531
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
    .line 530
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_1
.end method

.method public configureOutputs(Landroid/util/SparseArray;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 326
    .local p1, "outputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 327
    .local v9, "sizedSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    if-eqz p1, :cond_7

    #@7
    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v2

    #@b
    .line 329
    .local v2, "count":I
    const/4 v5, 0x0

    #@c
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_7

    #@e
    .line 330
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/view/Surface;

    #@16
    .line 331
    .local v6, "output":Landroid/view/Surface;
    if-nez v6, :cond_0

    #@18
    .line 332
    move-object/from16 v0, p0

    #@1a
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@1c
    const-string/jumbo v15, "configureOutputs - null outputs are not allowed"

    #@1f
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 333
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@24
    return v14

    #@25
    .line 335
    :cond_0
    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    #@28
    move-result v14

    #@29
    if-nez v14, :cond_1

    #@2b
    .line 336
    move-object/from16 v0, p0

    #@2d
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@2f
    const-string/jumbo v15, "configureOutputs - invalid output surfaces are not allowed"

    #@32
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 337
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@37
    return v14

    #@38
    .line 339
    :cond_1
    move-object/from16 v0, p0

    #@3a
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mStaticCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@3c
    .line 340
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@3e
    .line 339
    invoke-virtual {v14, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@41
    move-result-object v11

    #@42
    check-cast v11, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@44
    .line 344
    .local v11, "streamConfigurations":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_start_0
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@47
    move-result-object v8

    #@48
    .line 345
    .local v8, "s":Landroid/util/Size;
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    #@4b
    move-result v13

    #@4c
    .line 347
    .local v13, "surfaceType":I
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isFlexibleConsumer(Landroid/view/Surface;)Z

    #@4f
    move-result v4

    #@50
    .line 349
    .local v4, "flexibleConsumer":Z
    invoke-virtual {v11, v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    #@53
    move-result-object v10

    #@54
    .line 350
    .local v10, "sizes":[Landroid/util/Size;
    if-nez v10, :cond_2

    #@56
    .line 352
    const/4 v14, 0x1

    #@57
    if-lt v13, v14, :cond_3

    #@59
    .line 353
    const/4 v14, 0x5

    #@5a
    if-gt v13, v14, :cond_3

    #@5c
    .line 358
    const/16 v14, 0x23

    #@5e
    invoke-virtual {v11, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    #@61
    move-result-object v10

    #@62
    .line 364
    :cond_2
    :goto_1
    invoke-static {v10, v8}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@65
    move-result v14

    #@66
    if-nez v14, :cond_6

    #@68
    .line 365
    if-eqz v4, :cond_4

    #@6a
    invoke-static {v8, v10}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->findClosestSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    #@6d
    move-result-object v8

    #@6e
    if-eqz v8, :cond_4

    #@70
    .line 366
    new-instance v14, Landroid/util/Pair;

    #@72
    invoke-direct {v14, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@75
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@78
    .line 379
    :goto_2
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    #@7b
    move-result v14

    #@7c
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    #@7f
    move-result v15

    #@80
    invoke-static {v6, v14, v15}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    #@83
    .line 329
    add-int/lit8 v5, v5, 0x1

    #@85
    goto :goto_0

    #@86
    .line 359
    :cond_3
    const/16 v14, 0x21

    #@88
    if-ne v13, v14, :cond_2

    #@8a
    .line 360
    const/16 v14, 0x100

    #@8c
    invoke-virtual {v11, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    #@8f
    move-result-object v10

    #@90
    goto :goto_1

    #@91
    .line 368
    :cond_4
    if-nez v10, :cond_5

    #@93
    const-string/jumbo v7, "format is invalid."

    #@96
    .line 370
    .local v7, "reason":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    #@98
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@9a
    const-string/jumbo v15, "Surface with size (w=%d, h=%d) and format 0x%x is not valid, %s"

    #@9d
    const/16 v16, 0x4

    #@9f
    move/from16 v0, v16

    #@a1
    new-array v0, v0, [Ljava/lang/Object;

    #@a3
    move-object/from16 v16, v0

    #@a5
    .line 371
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    #@a8
    move-result v17

    #@a9
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ac
    move-result-object v17

    #@ad
    const/16 v18, 0x0

    #@af
    aput-object v17, v16, v18

    #@b1
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    #@b4
    move-result v17

    #@b5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v17

    #@b9
    const/16 v18, 0x1

    #@bb
    aput-object v17, v16, v18

    #@bd
    .line 372
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c0
    move-result-object v17

    #@c1
    const/16 v18, 0x2

    #@c3
    aput-object v17, v16, v18

    #@c5
    const/16 v17, 0x3

    #@c7
    aput-object v7, v16, v17

    #@c9
    .line 370
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@cc
    move-result-object v15

    #@cd
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    .line 373
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@d2
    return v14

    #@d3
    .line 369
    .end local v7    # "reason":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v15, "size not in valid set: "

    #@db
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v14

    #@df
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@e2
    move-result-object v15

    #@e3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v14

    #@e7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v7

    #@eb
    .restart local v7    # "reason":Ljava/lang/String;
    goto :goto_3

    #@ec
    .line 376
    .end local v7    # "reason":Ljava/lang/String;
    :cond_6
    new-instance v14, Landroid/util/Pair;

    #@ee
    invoke-direct {v14, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@f1
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f4
    goto :goto_2

    #@f5
    .line 380
    .end local v4    # "flexibleConsumer":Z
    .end local v8    # "s":Landroid/util/Size;
    .end local v10    # "sizes":[Landroid/util/Size;
    .end local v13    # "surfaceType":I
    :catch_0
    move-exception v3

    #@f6
    .line 381
    .local v3, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    move-object/from16 v0, p0

    #@f8
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@fa
    const-string/jumbo v15, "Surface bufferqueue is abandoned, cannot configure as output: "

    #@fd
    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@100
    .line 382
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@102
    return v14

    #@103
    .line 388
    .end local v2    # "count":I
    .end local v3    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .end local v5    # "i":I
    .end local v6    # "output":Landroid/view/Surface;
    .end local v11    # "streamConfigurations":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_7
    const/4 v12, 0x0

    #@104
    .line 389
    .local v12, "success":Z
    move-object/from16 v0, p0

    #@106
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@108
    invoke-virtual {v14}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setConfiguring()Z

    #@10b
    move-result v14

    #@10c
    if-eqz v14, :cond_8

    #@10e
    .line 390
    move-object/from16 v0, p0

    #@110
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@112
    invoke-virtual {v14, v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->configure(Ljava/util/Collection;)V

    #@115
    .line 391
    move-object/from16 v0, p0

    #@117
    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@119
    invoke-virtual {v14}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z

    #@11c
    move-result v12

    #@11d
    .line 394
    .end local v12    # "success":Z
    :cond_8
    if-eqz v12, :cond_9

    #@11f
    .line 395
    move-object/from16 v0, p1

    #@121
    move-object/from16 v1, p0

    #@123
    iput-object v0, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    #@125
    .line 399
    const/4 v14, 0x0

    #@126
    return v14

    #@127
    .line 397
    :cond_9
    sget v14, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    #@129
    return v14
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
    .line 540
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 544
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 538
    :goto_0
    return-void

    #@7
    .line 541
    :catch_0
    move-exception v0

    #@8
    .line 542
    .local v0, "e":Landroid/os/ServiceSpecificException;
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
    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

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
    .line 544
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@28
    goto :goto_0

    #@29
    .line 543
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catchall_0
    move-exception v1

    #@2a
    .line 544
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@2d
    .line 543
    throw v1
.end method

.method public flush()J
    .locals 3

    #@0
    .prologue
    .line 502
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->flush()J

    #@5
    move-result-wide v0

    #@6
    .line 503
    .local v0, "lastFrame":J
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    #@9
    .line 504
    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mClosed:Z

    #@2
    return v0
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z

    #@0
    .prologue
    .line 474
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [Landroid/hardware/camera2/CaptureRequest;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    .line 475
    .local v0, "requestList":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 8
    .param p1, "requestList"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 413
    if-eqz p1, :cond_0

    #@3
    array-length v6, p1

    #@4
    if-nez v6, :cond_1

    #@6
    .line 414
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@8
    const-string/jumbo v6, "submitRequestList - Empty/null requests are not allowed"

    #@b
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 415
    new-instance v5, Landroid/os/ServiceSpecificException;

    #@10
    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@12
    .line 416
    const-string/jumbo v7, "submitRequestList - Empty/null requests are not allowed"

    #@15
    .line 415
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@18
    throw v5

    #@19
    .line 422
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    #@1b
    if-nez v6, :cond_2

    #@1d
    new-instance v4, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 430
    .local v4, "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    array-length v6, p1

    #@23
    :goto_1
    if-ge v5, v6, :cond_8

    #@25
    aget-object v1, p1, v5

    #@27
    .line 431
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@2a
    move-result-object v7

    #@2b
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_3

    #@31
    .line 432
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@33
    const-string/jumbo v6, "submitRequestList - Each request must have at least one Surface target"

    #@36
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 434
    new-instance v5, Landroid/os/ServiceSpecificException;

    #@3b
    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@3d
    .line 435
    const-string/jumbo v7, "submitRequestList - Each request must have at least one Surface target"

    #@40
    .line 434
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@43
    throw v5

    #@44
    .line 423
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    #@46
    invoke-static {v6}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceIds(Landroid/util/SparseArray;)Ljava/util/List;
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_0

    #@49
    move-result-object v4

    #@4a
    .restart local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    #@4b
    .line 424
    .end local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    #@4c
    .line 425
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v5, Landroid/os/ServiceSpecificException;

    #@4e
    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@50
    .line 426
    const-string/jumbo v7, "submitRequestList - configured surface is abandoned."

    #@53
    .line 425
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@56
    throw v5

    #@57
    .line 439
    .end local v0    # "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    .restart local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v4    # "surfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    #@5a
    move-result-object v7

    #@5b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v3

    #@5f
    .local v3, "surface$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v7

    #@63
    if-eqz v7, :cond_7

    #@65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v2

    #@69
    check-cast v2, Landroid/view/Surface;

    #@6b
    .line 440
    .local v2, "surface":Landroid/view/Surface;
    if-nez v2, :cond_5

    #@6d
    .line 441
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@6f
    const-string/jumbo v6, "submitRequestList - Null Surface targets are not allowed"

    #@72
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 442
    new-instance v5, Landroid/os/ServiceSpecificException;

    #@77
    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@79
    .line 443
    const-string/jumbo v7, "submitRequestList - Null Surface targets are not allowed"

    #@7c
    .line 442
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@7f
    throw v5

    #@80
    .line 444
    :cond_5
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mConfiguredSurfaces:Landroid/util/SparseArray;

    #@82
    if-nez v7, :cond_6

    #@84
    .line 445
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@86
    const-string/jumbo v6, "submitRequestList - must configure  device with valid surfaces before submitting requests"

    #@89
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 447
    new-instance v5, Landroid/os/ServiceSpecificException;

    #@8e
    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    #@90
    .line 448
    const-string/jumbo v7, "submitRequestList - must configure  device with valid surfaces before submitting requests"

    #@93
    .line 447
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@96
    throw v5

    #@97
    .line 450
    :cond_6
    invoke-static {v2, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    #@9a
    move-result v7

    #@9b
    if-nez v7, :cond_4

    #@9d
    .line 451
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;

    #@9f
    const-string/jumbo v6, "submitRequestList - cannot use a surface that wasn\'t configured"

    #@a2
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 452
    new-instance v5, Landroid/os/ServiceSpecificException;

    #@a7
    sget v6, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@a9
    .line 453
    const-string/jumbo v7, "submitRequestList - cannot use a surface that wasn\'t configured"

    #@ac
    .line 452
    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@af
    throw v5

    #@b0
    .line 430
    .end local v2    # "surface":Landroid/view/Surface;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    #@b2
    goto/16 :goto_1

    #@b4
    .line 459
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "surface$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    #@b6
    invoke-virtual {v5}, Landroid/os/ConditionVariable;->close()V

    #@b9
    .line 460
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mRequestThreadManager:Landroid/hardware/camera2/legacy/RequestThreadManager;

    #@bb
    invoke-virtual {v5, p1, p2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->submitCaptureRequests([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@be
    move-result-object v5

    #@bf
    return-object v5
.end method

.method public waitUntilIdle()V
    .locals 1

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;

    #@2
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    #@5
    .line 492
    return-void
.end method
