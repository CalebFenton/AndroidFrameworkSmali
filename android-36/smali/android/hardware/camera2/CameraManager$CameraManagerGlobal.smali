.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final blacklist DEVICE_STATUS_ARRAY_SIZE:I = 0xa

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field private static final greylist-max-o gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field public static final greylist-max-o sCameraServiceDisabled:Z

.field public static final blacklist sLandscapeToPortrait:Z


# instance fields
.field private final greylist-max-o CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCameraService:Landroid/hardware/ICameraService;

.field private final blacklist mConcurrentCameraIdCombinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mDeviceStateHandler:Landroid/os/Handler;

.field private blacklist mDeviceStateHandlerThread:Landroid/os/HandlerThread;

.field private final greylist-max-o mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceStatusHistory:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

.field private blacklist mHasOpenCloseListenerPermission:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mOpenedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final greylist-max-o mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTorchClientBinder:Landroid/os/Binder;

.field private final greylist-max-o mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnavailablePhysicalDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$jmxOBN39nTX1p4gNk8dcKQK_ku0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->lambda$scheduleCameraServiceReconnectionLocked$7()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2277
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 2327
    nop

    .line 2328
    const-string v0, "config.disable_cameraservice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    .line 2330
    nop

    .line 2331
    const-string v0, "camera.enable_landscape_to_portrait"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sLandscapeToPortrait:Z

    .line 2330
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 4

    .line 2325
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 2272
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 2274
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 2285
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2287
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 2289
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 2292
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    .line 2294
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    .line 2299
    new-instance v1, Ljava/util/ArrayDeque;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    .line 2303
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 2306
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 2309
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 2312
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 2314
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 2318
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 2325
    return-void
.end method

.method private blacklist addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 3599
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_f

    .line 3600
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 3602
    :cond_f
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 3603
    return-void
.end method

.method private static blacklist cameraStatusesContains([Landroid/hardware/CameraStatus;Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z
    .registers 8
    .param p0, "cameraStatuses"    # [Landroid/hardware/CameraStatus;
    .param p1, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2601
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_20

    aget-object v3, p0, v2

    .line 2602
    .local v3, "c":Landroid/hardware/CameraStatus;
    iget-object v4, v3, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v4, v3, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v5

    if-ne v4, v5, :cond_1d

    .line 2603
    const/4 v0, 0x1

    return v0

    .line 2601
    .end local v3    # "c":Landroid/hardware/CameraStatus;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2606
    :cond_20
    return v1
.end method

.method private greylist-max-o connectCameraServiceLocked()V
    .registers 14

    .line 2394
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_113

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_a

    goto/16 :goto_113

    .line 2396
    :cond_a
    const-string v0, "CameraManagerGlobal"

    const-string v1, "Connecting to camera service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    const-string/jumbo v0, "media.camera"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2399
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_1b

    .line 2401
    return-void

    .line 2404
    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_111

    .line 2408
    nop

    .line 2410
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 2413
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    :try_start_24
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_24 .. :try_end_27} :catch_28

    .line 2416
    goto :goto_2c

    .line 2414
    :catch_28
    move-exception v3

    .line 2415
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    .line 2419
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_2c
    :try_start_2c
    const-string v3, "connectCameraServiceLocked(E): tid(%d): mDeviceStatus size %d"

    .line 2421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 2419
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2423
    invoke-interface {v2, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 2424
    .local v3, "cameraStatuses":[Landroid/hardware/CameraStatus;
    array-length v4, v3

    move v5, v1

    :goto_55
    if-ge v5, v4, :cond_92

    aget-object v6, v3, v5

    .line 2425
    .local v6, "cameraStatus":Landroid/hardware/CameraStatus;
    new-instance v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v8, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget v9, v6, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-direct {v7, v8, v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2427
    .local v7, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    iget v8, v6, Landroid/hardware/CameraStatus;->status:I

    invoke-direct {p0, v8, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2429
    iget-object v8, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    if-eqz v8, :cond_79

    .line 2431
    iget-object v8, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    array-length v9, v8

    move v10, v1

    :goto_6f
    if-ge v10, v9, :cond_79

    aget-object v11, v8, v10

    .line 2432
    .local v11, "unavailablePhysicalCamera":Ljava/lang/String;
    invoke-direct {p0, v1, v7, v11}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 2431
    .end local v11    # "unavailablePhysicalCamera":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    .line 2438
    :cond_79
    iget-boolean v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v8, :cond_8f

    iget v8, v6, Landroid/hardware/CameraStatus;->status:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_8f

    iget-object v8, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    .line 2440
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8f

    .line 2441
    iget-object v8, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 2424
    .end local v6    # "cameraStatus":Landroid/hardware/CameraStatus;
    .end local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :cond_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 2444
    :cond_92
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 2446
    const-string v4, "connectCameraServiceLocked(X): tid(%d): mDeviceStatus size %d"

    .line 2448
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 2446
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    :try_end_b7
    .catch Landroid/os/ServiceSpecificException; {:try_start_2c .. :try_end_b7} :catch_108
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_b7} :catch_b8

    .line 2454
    .end local v3    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    goto :goto_b9

    .line 2452
    :catch_b8
    move-exception v3

    .line 2457
    :goto_b9
    nop

    .line 2458
    :try_start_ba
    invoke-interface {v2}, Landroid/hardware/ICameraService;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v3

    .line 2459
    .local v3, "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    array-length v4, v3

    :goto_bf
    if-ge v1, v4, :cond_fc

    aget-object v5, v3, v1

    .line 2460
    .local v5, "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    nop

    .line 2461
    invoke-virtual {v5}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->getConcurrentCameraIdCombination()Ljava/util/Set;

    move-result-object v6

    .line 2462
    .local v6, "combination":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2463
    .local v7, "deviceCameraInfoSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 2464
    .local v9, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v10, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2465
    nop

    .end local v9    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_d1

    .line 2466
    :cond_f3
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f8
    .catch Landroid/os/ServiceSpecificException; {:try_start_ba .. :try_end_f8} :catch_ff
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_f8} :catch_fd

    .line 2459
    nop

    .end local v5    # "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    .end local v6    # "combination":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "deviceCameraInfoSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    .line 2474
    .end local v3    # "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :cond_fc
    goto :goto_fe

    .line 2472
    :catch_fd
    move-exception v1

    .line 2475
    :goto_fe
    return-void

    .line 2468
    :catch_ff
    move-exception v1

    .line 2470
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to get concurrent camera id combinations"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2449
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_108
    move-exception v1

    .line 2451
    .restart local v1    # "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2405
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_111
    move-exception v1

    .line 2407
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 2394
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_113
    :goto_113
    return-void
.end method

.method private blacklist extractCameraIdListLocked(II)[Ljava/lang/String;
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I

    .line 2502
    nop

    .line 2504
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2502
    const-string v1, "extractCameraIdListLocked(E): tid(%d): mDeviceStatus size %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2506
    :try_start_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2507
    .local v0, "cameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 2508
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2509
    .local v2, "status":I
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2510
    .local v3, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    if-eqz v2, :cond_59

    const/4 v4, 0x2

    if-eq v2, v4, :cond_59

    .line 2512
    invoke-direct {p0, p1, p2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 2513
    goto :goto_59

    .line 2515
    :cond_52
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2507
    .end local v2    # "status":I
    .end local v3    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :cond_59
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2517
    .end local v1    # "i":I
    :cond_5c
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_24 .. :try_end_65} :catch_66

    return-object v1

    .line 2518
    .end local v0    # "cameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_66
    move-exception v0

    .line 2519
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2520
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    .line 2521
    const-string v4, " -> "

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2522
    .local v2, "messageWithHistory":Ljava/lang/String;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist extractConcurrentCameraIdListLocked(II)Ljava/util/Set;
    .registers 12
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2528
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2529
    .local v0, "concurrentCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 2530
    .local v2, "deviceCameraInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2531
    .local v3, "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2535
    .local v5, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2536
    .local v6, "status":Ljava/lang/Integer;
    if-nez v6, :cond_37

    .line 2538
    goto :goto_20

    .line 2540
    :cond_37
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_20

    .line 2541
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_45

    .line 2542
    goto :goto_20

    .line 2544
    :cond_45
    invoke-direct {p0, p1, p2, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 2545
    goto :goto_20

    .line 2547
    :cond_4c
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2548
    .end local v5    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .end local v6    # "status":Ljava/lang/Integer;
    goto :goto_20

    .line 2549
    :cond_54
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5d

    .line 2550
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2552
    .end local v2    # "deviceCameraInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    .end local v3    # "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5d
    goto :goto_b

    .line 2553
    :cond_5e
    return-object v0
.end method

.method public static greylist-max-o get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .registers 1

    .line 2334
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private greylist-max-o handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .registers 4
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 2912
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_16

    .line 2917
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2914
    :pswitch_b
    const-string v0, "CameraManagerGlobal"

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    nop

    .line 2919
    return-void

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o isAvailable(I)Z
    .registers 3
    .param p1, "status"    # I

    .line 2922
    packed-switch p1, :pswitch_data_8

    .line 2926
    const/4 v0, 0x0

    return v0

    .line 2924
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$postSingleCameraClosedUpdate$1(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 2
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p1, "id"    # Ljava/lang/String;

    .line 2977
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraClosed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleCameraOpenedUpdate$0(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "packageId"    # Ljava/lang/String;

    .line 2967
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchStrengthLevelUpdate$6(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .registers 3
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 3046
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchStrengthLevelChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$4(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .registers 4
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 3023
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$5(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V
    .registers 2
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;

    .line 3033
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleUpdate$2(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 3
    .param p0, "physicalId"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "id"    # Ljava/lang/String;

    .line 2990
    if-nez p0, :cond_6

    .line 2991
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    goto :goto_9

    .line 2993
    :cond_6
    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    :goto_9
    return-void
.end method

.method static synthetic blacklist lambda$postSingleUpdate$3(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 3
    .param p0, "physicalId"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "id"    # Ljava/lang/String;

    .line 3004
    if-nez p0, :cond_6

    .line 3005
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    goto :goto_9

    .line 3007
    :cond_6
    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    :goto_9
    return-void
.end method

.method private synthetic blacklist lambda$scheduleCameraServiceReconnectionLocked$7()V
    .registers 4

    .line 3508
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 3509
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_11

    .line 3510
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3514
    :try_start_9
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3515
    monitor-exit v1

    goto :goto_11

    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v2

    .line 3517
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3477
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3479
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3480
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_37

    .line 3481
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3482
    .local v2, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3483
    goto :goto_34

    .line 3486
    :cond_25
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3487
    .local v3, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 3480
    .end local v2    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3489
    .end local v1    # "i":I
    :cond_37
    return-void
.end method

.method private blacklist onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V
    .registers 9
    .param p1, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 3440
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3442
    .local v0, "oldApk":Ljava/lang/String;
    if-eqz v0, :cond_54

    .line 3443
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "onCameraOpened was previously called for "

    const-string v3, "CameraManagerGlobal"

    if-eqz v1, :cond_30

    .line 3444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now again called for the same package name, so no new client visible update will be sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    return-void

    .line 3450
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without onCameraClosed being called first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    :cond_54
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3458
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5b
    if-ge v2, v1, :cond_86

    .line 3459
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3460
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 3461
    goto :goto_83

    .line 3464
    :cond_74
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 3465
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 3467
    .end local v2    # "i":I
    :cond_86
    return-void
.end method

.method private blacklist onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V
    .registers 14
    .param p1, "status"    # I
    .param p2, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .param p3, "physicalId"    # Ljava/lang/String;

    .line 3176
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    const-string v1, "CameraManagerGlobal"

    if-nez v0, :cond_26

    .line 3177
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, p3, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 3177
    const-string v2, "Ignoring invalid device %s physical device %s status 0x%x for device %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    return-void

    .line 3184
    :cond_26
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 3185
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    move v9, p1

    move-object v8, p3

    goto/16 :goto_cf

    .line 3191
    :cond_3a
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3192
    .local v0, "unavailablePhysicalDevices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-nez v2, :cond_52

    .line 3193
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 3194
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 3195
    :cond_52
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 3196
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 3197
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3211
    :goto_61
    invoke-static {}, Landroid/hardware/camera2/CameraManager;->physicalCallbacksAreEnabledForUnavailableCamera()Z

    move-result v2

    if-nez v2, :cond_8b

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 3212
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 3213
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Camera %s is not available. Ignore physical camera status change callback(s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    return-void

    .line 3218
    :cond_8b
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3219
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_92
    if-ge v2, v1, :cond_c6

    .line 3220
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3221
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 3222
    move v9, p1

    move-object v8, p3

    goto :goto_c1

    .line 3225
    :cond_ae
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 3226
    .local v6, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move v9, p1

    move-object v8, p3

    .end local p1    # "status":I
    .end local p3    # "physicalId":Ljava/lang/String;
    .local v8, "physicalId":Ljava/lang/String;
    .local v9, "status":I
    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3219
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    :goto_c1
    add-int/lit8 v2, v2, 0x1

    move-object p3, v8

    move p1, v9

    goto :goto_92

    .line 3228
    .end local v2    # "i":I
    .end local v8    # "physicalId":Ljava/lang/String;
    .end local v9    # "status":I
    .restart local p1    # "status":I
    .restart local p3    # "physicalId":Ljava/lang/String;
    :cond_c6
    return-void

    .line 3196
    .end local v1    # "callbackCount":I
    :cond_c7
    move v9, p1

    move-object v8, p3

    .end local p1    # "status":I
    .end local p3    # "physicalId":Ljava/lang/String;
    .restart local v8    # "physicalId":Ljava/lang/String;
    .restart local v9    # "status":I
    goto :goto_cc

    .line 3195
    .end local v8    # "physicalId":Ljava/lang/String;
    .end local v9    # "status":I
    .restart local p1    # "status":I
    .restart local p3    # "physicalId":Ljava/lang/String;
    :cond_ca
    move v9, p1

    move-object v8, p3

    .line 3208
    .end local p1    # "status":I
    .end local p3    # "physicalId":Ljava/lang/String;
    .restart local v8    # "physicalId":Ljava/lang/String;
    .restart local v9    # "status":I
    :goto_cc
    return-void

    .line 3184
    .end local v0    # "unavailablePhysicalDevices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "physicalId":Ljava/lang/String;
    .end local v9    # "status":I
    .restart local p1    # "status":I
    .restart local p3    # "physicalId":Ljava/lang/String;
    :cond_cd
    move v9, p1

    move-object v8, p3

    .line 3186
    .end local p1    # "status":I
    .end local p3    # "physicalId":Ljava/lang/String;
    .restart local v8    # "physicalId":Ljava/lang/String;
    .restart local v9    # "status":I
    :goto_cf
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Camera %s is not present. Ignore physical camera status change"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    return-void
.end method

.method private blacklist onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .registers 14
    .param p1, "status"    # I
    .param p2, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3095
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3096
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3097
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 3096
    const-string v1, "Ignoring invalid camera %s status 0x%x for device %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    return-void

    .line 3102
    :cond_26
    if-nez p1, :cond_36

    .line 3103
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3104
    .local v0, "oldStatus":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 3106
    .end local v0    # "oldStatus":Ljava/lang/Integer;
    :cond_36
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3107
    .restart local v0    # "oldStatus":Ljava/lang/Integer;
    if-nez v0, :cond_4e

    .line 3108
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3112
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_57

    .line 3118
    return-void

    .line 3134
    :cond_57
    if-eqz v0, :cond_68

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-ne v1, v2, :cond_68

    .line 3143
    return-void

    .line 3146
    :cond_68
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3147
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6f
    if-ge v2, v1, :cond_d0

    .line 3148
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3149
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 3150
    goto :goto_cd

    .line 3153
    :cond_89
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 3154
    .local v6, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p0

    move v9, p1

    .end local p1    # "status":I
    .local v9, "status":I
    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3157
    .end local v9    # "status":I
    .restart local p1    # "status":I
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_cd

    iget-object v3, v4, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 3158
    iget-object v3, v4, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 3159
    .local v3, "unavailableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 3160
    .local v8, "unavailableId":Ljava/lang/String;
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3162
    .end local v8    # "unavailableId":Ljava/lang/String;
    move-object v4, p0

    goto :goto_b6

    .line 3147
    .end local v3    # "unavailableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    :cond_cd
    :goto_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 3165
    .end local v2    # "i":I
    :cond_d0
    return-void
.end method

.method private blacklist onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3249
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3250
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 3250
    const-string v1, "Ignoring invalid camera %s torch status 0x%x for device %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    return-void

    .line 3256
    :cond_26
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3257
    .local v0, "oldStatus":Ljava/lang/Integer;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3b

    .line 3263
    return-void

    .line 3266
    :cond_3b
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3267
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    if-ge v2, v1, :cond_6d

    .line 3268
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3269
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v4

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 3270
    goto :goto_6a

    .line 3273
    :cond_5b
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 3274
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3267
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 3276
    .end local v2    # "i":I
    :cond_6d
    return-void
.end method

.method private blacklist onTorchStrengthLevelChangedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .param p2, "newStrengthLevel"    # I

    .line 3286
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3287
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_32

    .line 3288
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3289
    .local v2, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3290
    goto :goto_2f

    .line 3293
    :cond_20
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3294
    .local v3, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3287
    .end local v2    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3297
    .end local v1    # "i":I
    :cond_32
    return-void
.end method

.method private blacklist postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2957
    .local v0, "ident":J
    :try_start_4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    .line 2959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2960
    nop

    .line 2961
    return-void

    .line 2959
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2960
    throw v2
.end method

.method private blacklist postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;

    .line 2975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2977
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2979
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2980
    nop

    .line 2981
    return-void

    .line 2979
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2980
    throw v2
.end method

.method private blacklist postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "packageId"    # Ljava/lang/String;

    .line 2965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2967
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2969
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2970
    nop

    .line 2971
    return-void

    .line 2969
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2970
    throw v2
.end method

.method private blacklist postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "newStrengthLevel"    # I

    .line 3044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3046
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 3048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3049
    nop

    .line 3050
    return-void

    .line 3048
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3049
    throw v2
.end method

.method private greylist-max-o postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 3018
    packed-switch p4, :pswitch_data_32

    .line 3031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    goto :goto_1e

    .line 3021
    .end local v0    # "ident":J
    :pswitch_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3023
    .restart local v0    # "ident":J
    :try_start_c
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_19

    .line 3026
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3027
    nop

    .line 3028
    goto :goto_2b

    .line 3026
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3027
    throw v2

    .line 3033
    :goto_1e
    :try_start_1e
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_2c

    .line 3035
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3036
    nop

    .line 3037
    nop

    .line 3040
    .end local v0    # "ident":J
    :goto_2b
    return-void

    .line 3035
    .restart local v0    # "ident":J
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3036
    throw v2

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "physicalId"    # Ljava/lang/String;
    .param p5, "status"    # I

    .line 2985
    invoke-direct {p0, p5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2988
    .local v0, "ident":J
    :try_start_a
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda6;

    invoke-direct {v2, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 2997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2998
    nop

    .line 2999
    .end local v0    # "ident":J
    goto :goto_2c

    .line 2997
    .restart local v0    # "ident":J
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2998
    throw v2

    .line 3000
    .end local v0    # "ident":J
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3002
    .restart local v0    # "ident":J
    :try_start_20
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;

    invoke-direct {v2, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2d

    .line 3011
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3012
    nop

    .line 3014
    .end local v0    # "ident":J
    :goto_2c
    return-void

    .line 3011
    .restart local v0    # "ident":J
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3012
    throw v2
.end method

.method private greylist-max-o scheduleCameraServiceReconnectionLocked()V
    .registers 6

    .line 3496
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3498
    return-void

    .line 3507
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_11 .. :try_end_1f} :catch_20

    .line 3520
    goto :goto_39

    .line 3518
    :catch_20
    move-exception v0

    .line 3519
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule camera service re-connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_39
    return-void
.end method

.method private blacklist shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z
    .registers 6
    .param p1, "currentDeviceId"    # I
    .param p2, "devicePolicy"    # I
    .param p3, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2591
    const/4 v0, 0x0

    if-nez p2, :cond_a

    invoke-static {p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v1

    if-nez v1, :cond_a

    .line 2593
    return v0

    .line 2596
    :cond_a
    invoke-static {p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v1

    if-eq p1, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private static blacklist sortCameraIds([Ljava/lang/String;)V
    .registers 2
    .param p0, "cameraIds"    # [Ljava/lang/String;

    .line 2559
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2587
    return-void
.end method

.method private greylist-max-o updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 14
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3057
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_2
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_7b

    .line 3058
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3059
    .local v7, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v1

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v2

    invoke-direct {p0, v1, v2, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3060
    goto :goto_78

    .line 3063
    :cond_22
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Integer;

    .line 3064
    .local v8, "status":Ljava/lang/Integer;
    invoke-static {v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3067
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-static {}, Landroid/hardware/camera2/CameraManager;->physicalCallbacksAreEnabledForUnavailableCamera()Z

    move-result v1

    if-eqz v1, :cond_78

    :cond_4a
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 3068
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 3069
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 3070
    .local v9, "unavailableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 3071
    .local v4, "unavailableId":Ljava/lang/String;
    invoke-static {v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3073
    .end local v4    # "unavailableId":Ljava/lang/String;
    goto :goto_5f

    .line 3057
    .end local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .end local v8    # "status":Ljava/lang/Integer;
    .end local v9    # "unavailableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_78
    :goto_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3077
    .end local v6    # "i":I
    :cond_7b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7c
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_ad

    .line 3078
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3079
    .local v2, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 3080
    goto :goto_aa

    .line 3083
    :cond_9b
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3084
    .local v3, "clientPackageId":Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    .end local v2    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .end local v3    # "clientPackageId":Ljava/lang/String;
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 3086
    .end local v1    # "i":I
    :cond_ad
    return-void
.end method

.method private greylist-max-o updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 3232
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3233
    .local v1, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v2

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3234
    goto :goto_33

    .line 3237
    :cond_20
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3238
    .local v2, "status":Ljava/lang/Integer;
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, p2, v3, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3231
    .end local v1    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .end local v2    # "status":Ljava/lang/Integer;
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3240
    .end local v0    # "i":I
    :cond_36
    return-void
.end method

.method private greylist-max-o validStatus(I)Z
    .registers 3
    .param p1, "status"    # I

    .line 2931
    packed-switch p1, :pswitch_data_8

    .line 2938
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 2936
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch -0x2
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o validTorchStatus(I)Z
    .registers 3
    .param p1, "status"    # I

    .line 2943
    packed-switch p1, :pswitch_data_8

    .line 2949
    const/4 v0, 0x0

    return v0

    .line 2947
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 2366
    return-object p0
.end method

.method public whitelist binderDied()V
    .registers 5

    .line 3531
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3532
    :try_start_3
    const-string v1, "binderDied(E): tid(%d): mDeviceStatus size %d"

    .line 3534
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3533
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3532
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3537
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_2c

    monitor-exit v0

    return-void

    .line 3539
    :cond_2c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 3546
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_37
    const/4 v2, 0x0

    if-ltz v1, :cond_4f

    .line 3547
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3548
    .local v3, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3550
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v2, :cond_4c

    .line 3551
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3546
    .end local v3    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    .line 3555
    .end local v1    # "i":I
    :cond_4f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_50
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_66

    .line 3556
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3557
    .restart local v3    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3555
    .end local v3    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 3561
    .end local v1    # "i":I
    :cond_66
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3563
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3565
    const-string v1, "binderDied(X): tid(%d): mDeviceStatus size %d"

    .line 3567
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3566
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3565
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3568
    monitor-exit v0

    .line 3569
    return-void

    .line 3568
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v1
.end method

.method public blacklist cameraIdHasConcurrentStreams(Ljava/lang/String;II)Z
    .registers 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .param p3, "devicePolicy"    # I

    .line 2800
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2801
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2802
    const/4 v2, 0x0

    if-nez p3, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, p2

    :goto_b
    invoke-direct {v1, p1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2803
    .local v1, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2809
    monitor-exit v0

    return v2

    .line 2811
    :cond_18
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 2812
    .local v4, "comb":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2813
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2815
    .end local v4    # "comb":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    :cond_33
    goto :goto_1e

    .line 2816
    :cond_34
    monitor-exit v0

    return v2

    .line 2817
    .end local v1    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public blacklist getCameraIdList(II)[Ljava/lang/String;
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I

    .line 2709
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2711
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2712
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked(II)[Ljava/lang/String;

    move-result-object v1

    .line 2713
    .local v1, "cameraIds":[Ljava/lang/String;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 2714
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2715
    return-object v1

    .line 2713
    .end local v1    # "cameraIds":[Ljava/lang/String;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist getCameraIdListNoLazy(II)[Ljava/lang/String;
    .registers 14
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I

    .line 2610
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2611
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 2615
    :cond_8
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 2647
    .local v0, "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2648
    :try_start_10
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_ce

    .line 2650
    :try_start_13
    const-string v3, "getCameraIdListNoLazy(E): tid(%d): mDeviceStatus size %d"

    .line 2652
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 2650
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2666
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v3, v0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 2667
    .local v3, "cameraStatuses":[Landroid/hardware/CameraStatus;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v4, v0}, Landroid/hardware/ICameraService;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 2668
    array-length v4, v3

    move v5, v1

    :goto_43
    if-ge v5, v4, :cond_58

    aget-object v6, v3, v5

    .line 2669
    .local v6, "cameraStatus":Landroid/hardware/CameraStatus;
    iget v7, v6, Landroid/hardware/CameraStatus;->status:I

    new-instance v8, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v9, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget v10, v6, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-direct {v8, v9, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2668
    .end local v6    # "cameraStatus":Landroid/hardware/CameraStatus;
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 2672
    :cond_58
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2673
    .local v4, "deviceCameraInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2674
    .local v5, "deviceInfosToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2679
    .local v7, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-static {v3, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraStatusesContains([Landroid/hardware/CameraStatus;Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v8

    if-nez v8, :cond_7c

    .line 2680
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2682
    .end local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :cond_7c
    goto :goto_67

    .line 2683
    :cond_7d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_81
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2684
    .restart local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-direct {p0, v1, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2685
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2686
    nop

    .end local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    goto :goto_81

    .line 2687
    :cond_97
    const-string v1, "getCameraIdListNoLazy(X): tid(%d): mDeviceStatus size %d"

    .line 2689
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 2687
    invoke-static {v1, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    :try_end_ba
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_ba} :catch_c5
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_ba} :catch_bb
    .catchall {:try_start_13 .. :try_end_ba} :catchall_ce

    .line 2696
    .end local v4    # "deviceCameraInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    .end local v5    # "deviceInfosToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    goto :goto_bc

    .line 2694
    .end local v3    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    :catch_bb
    move-exception v1

    .line 2697
    :goto_bc
    :try_start_bc
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked(II)[Ljava/lang/String;

    move-result-object v1

    .line 2698
    .local v1, "cameraIds":[Ljava/lang/String;
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_ce

    .line 2699
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2700
    return-object v1

    .line 2690
    .end local v1    # "cameraIds":[Ljava/lang/String;
    :catch_c5
    move-exception v1

    .line 2692
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_c6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "deviceId":I
    .end local p2    # "devicePolicy":I
    throw v3

    .line 2698
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "deviceId":I
    .restart local p2    # "devicePolicy":I
    :catchall_ce
    move-exception v1

    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_ce

    throw v1
.end method

.method public greylist-max-o getCameraService()Landroid/hardware/ICameraService;
    .registers 4

    .line 2377
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2378
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2379
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_15

    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_15

    .line 2380
    const-string v1, "CameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_15
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object v1

    .line 2383
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist getConcurrentCameraIds(II)Ljava/util/Set;
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2720
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2722
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2723
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractConcurrentCameraIdListLocked(II)Ljava/util/Set;

    move-result-object v1

    .line 2725
    .local v1, "concurrentStreamingCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    monitor-exit v0

    .line 2727
    return-object v1

    .line 2725
    .end local v1    # "concurrentStreamingCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I
    .registers 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p3, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2886
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2887
    if-eqz p1, :cond_2d

    .line 2891
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2b

    .line 2892
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_23

    .line 2898
    nop

    .line 2899
    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/ICameraService;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result v2
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_11} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_14
    .catchall {:try_start_d .. :try_end_11} :catchall_2b

    .line 2906
    .local v2, "torchStrength":I
    nop

    .line 2907
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_12
    monitor-exit v0

    .line 2908
    return v2

    .line 2903
    .end local v2    # "torchStrength":I
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_14
    move-exception v3

    .line 2904
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "devicePolicy":I
    throw v4

    .line 2901
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p3    # "devicePolicy":I
    :catch_1d
    move-exception v2

    .line 2902
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "devicePolicy":I
    throw v3

    .line 2893
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p3    # "devicePolicy":I
    :cond_23
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable."

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "devicePolicy":I
    throw v3

    .line 2907
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p3    # "devicePolicy":I
    :catchall_2b
    move-exception v1

    goto :goto_35

    .line 2888
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "devicePolicy":I
    throw v1

    .line 2907
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p3    # "devicePolicy":I
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_2b

    throw v1
.end method

.method public blacklist injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2481
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2482
    :try_start_3
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2b

    .line 2483
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_23

    .line 2490
    :try_start_a
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/hardware/ICameraService;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_11} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_14
    .catchall {:try_start_a .. :try_end_11} :catchall_2b

    .line 2497
    nop

    .line 2498
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_12
    monitor-exit v0

    .line 2499
    return-void

    .line 2493
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_14
    move-exception v3

    .line 2494
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v4

    .line 2491
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catch_1d
    move-exception v2

    .line 2492
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v3

    .line 2484
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :cond_23
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable."

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v3

    .line 2498
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist isConcurrentSessionConfigurationSupported(Ljava/util/Map;ILandroid/content/AttributionSourceState;I)Z
    .registers 16
    .param p2, "targetSdkVersion"    # I
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;I",
            "Landroid/content/AttributionSourceState;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2736
    .local p1, "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    if-eqz p1, :cond_ad

    .line 2740
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 2741
    .local v0, "size":I
    if-eqz v0, :cond_a5

    .line 2745
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2748
    const/4 v2, 0x0

    .line 2749
    .local v2, "subsetFound":Z
    :try_start_c
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 2750
    .local v4, "combination":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2751
    .local v6, "infos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2752
    .local v8, "cameraId":Ljava/lang/String;
    new-instance v9, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2755
    if-nez p4, :cond_3e

    .line 2756
    move v10, v5

    goto :goto_40

    .line 2757
    :cond_3e
    iget v10, p3, Landroid/content/AttributionSourceState;->deviceId:I

    :goto_40
    invoke-direct {v9, v8, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2752
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2758
    nop

    .end local v8    # "cameraId":Ljava/lang/String;
    goto :goto_2c

    .line 2759
    :cond_48
    invoke-interface {v4, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 2760
    const/4 v2, 0x1

    .line 2762
    .end local v4    # "combination":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    .end local v6    # "infos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    :cond_4f
    goto :goto_12

    .line 2763
    :cond_50
    if-nez v2, :cond_5c

    .line 2764
    const-string v3, "CameraManagerGlobal"

    const-string/jumbo v4, "isConcurrentSessionConfigurationSupported called with a subset of camera ids not returned by getConcurrentCameraIds"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    monitor-exit v1

    return v5

    .line 2768
    :cond_5c
    new-array v3, v0, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2770
    .local v3, "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    const/4 v4, 0x0

    .line 2772
    .local v4, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2773
    .local v6, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    new-instance v7, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2774
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-direct {v7, v8, v9}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;-><init>(Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;)V

    aput-object v7, v3, v4
    :try_end_86
    .catchall {:try_start_c .. :try_end_86} :catchall_a2

    .line 2775
    nop

    .end local v6    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    add-int/lit8 v4, v4, 0x1

    .line 2776
    goto :goto_67

    .line 2778
    :cond_8a
    :try_start_8a
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v5, v3, p2, p3, p4}, Landroid/hardware/ICameraService;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;ILandroid/content/AttributionSourceState;I)Z

    move-result v5
    :try_end_90
    .catch Landroid/os/ServiceSpecificException; {:try_start_8a .. :try_end_90} :catch_9c
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_90} :catch_92
    .catchall {:try_start_8a .. :try_end_90} :catchall_a2

    :try_start_90
    monitor-exit v1

    return v5

    .line 2782
    :catch_92
    move-exception v5

    .line 2784
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v6, Landroid/hardware/camera2/CameraAccessException;

    const-string v7, "Camera service is currently unavailable"

    const/4 v8, 0x2

    invoke-direct {v6, v8, v7, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "size":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .end local p2    # "targetSdkVersion":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    throw v6

    .line 2780
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "size":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .restart local p2    # "targetSdkVersion":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_9c
    move-exception v5

    .line 2781
    .local v5, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v5}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    .end local v0    # "size":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .end local p2    # "targetSdkVersion":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    throw v6

    .line 2787
    .end local v2    # "subsetFound":Z
    .end local v3    # "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v4    # "i":I
    .end local v5    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "size":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .restart local p2    # "targetSdkVersion":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catchall_a2
    move-exception v2

    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_90 .. :try_end_a4} :catchall_a2

    throw v2

    .line 2742
    :cond_a5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "camera id and session combination is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2737
    .end local v0    # "size":I
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraIdsAndSessionConfigurations was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onCameraAccessPrioritiesChanged()V
    .registers 6

    .line 3416
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3417
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3418
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_22

    .line 3419
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3420
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3422
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v4, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 3418
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3424
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_22
    monitor-exit v0

    .line 3425
    return-void

    .line 3424
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;I)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 3471
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3472
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3473
    monitor-exit v0

    .line 3474
    return-void

    .line 3473
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I

    .line 3434
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3435
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 3436
    monitor-exit v0

    .line 3437
    return-void

    .line 3436
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist onCameraOpenedInSharedMode(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "primaryClient"    # Z

    .line 3430
    return-void
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3391
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3392
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 3394
    monitor-exit v0

    .line 3395
    return-void

    .line 3394
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist onStatusChanged(ILjava/lang/String;I)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3377
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3378
    :try_start_3
    const-string/jumbo v1, "onStatusChanged(E): tid(%d): mDeviceStatus size %d"

    .line 3380
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3379
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3378
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3381
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3382
    const-string/jumbo v1, "onStatusChanged(X): tid(%d): mDeviceStatus size %d"

    .line 3384
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3383
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3382
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3385
    monitor-exit v0

    .line 3386
    return-void

    .line 3385
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public blacklist onTorchStatusChanged(ILjava/lang/String;I)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3400
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3401
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3402
    monitor-exit v0

    .line 3403
    return-void

    .line 3402
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;II)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3408
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3409
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStrengthLevelChangedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;I)V

    .line 3411
    monitor-exit v0

    .line 3412
    return-void

    .line 3411
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "hasOpenCloseListenerPermission"    # Z
    .param p4, "deviceId"    # I
    .param p5, "devicePolicy"    # I

    .line 3310
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3313
    :try_start_3
    iput-boolean p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 3314
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 3316
    invoke-static {p1, p4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;I)V

    .line 3317
    invoke-static {p1, p5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;I)V

    .line 3319
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 3321
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_1b

    .line 3322
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 3326
    :cond_1b
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_22

    .line 3327
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3329
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_22
    monitor-exit v0

    .line 3330
    return-void

    .line 3329
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V
    .registers 7
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 2339
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2340
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_22

    .line 2341
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraManagerGlobal"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    .line 2342
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2343
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandler:Landroid/os/Handler;

    .line 2346
    :cond_22
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    if-nez v1, :cond_56

    .line 2347
    new-instance v1, Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-direct {v1, p2}, Landroid/hardware/camera2/CameraManager$FoldStateListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_61

    .line 2349
    :try_start_2d
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_41} :catch_42
    .catchall {:try_start_2d .. :try_end_41} :catchall_61

    .line 2357
    goto :goto_56

    .line 2351
    :catch_42
    move-exception v1

    .line 2352
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    :try_start_44
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 2353
    const-string v2, "CameraManagerGlobal"

    const-string v3, "Failed to register device state listener!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const-string v2, "CameraManagerGlobal"

    const-string v3, "Device state dependent characteristics updates will not befunctional!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    monitor-exit v0

    return-void

    .line 2360
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_56
    :goto_56
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->addDeviceStateListener(Landroid/hardware/camera2/CameraManager$DeviceStateListener;)V

    .line 2361
    monitor-exit v0

    .line 2362
    return-void

    .line 2361
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_44 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public blacklist registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "deviceId"    # I
    .param p4, "devicePolicy"    # I

    .line 3346
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3347
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 3349
    invoke-static {p1, p3}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V

    .line 3350
    invoke-static {p1, p4}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V

    .line 3352
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 3354
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_19

    .line 3355
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 3359
    :cond_19
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_20

    .line 3360
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3362
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_20
    monitor-exit v0

    .line 3363
    return-void

    .line 3362
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist setTorchMode(Ljava/lang/String;ZLandroid/content/AttributionSourceState;I)V
    .registers 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2826
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2827
    if-eqz p1, :cond_4b

    .line 2831
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_44

    move-object v2, v0

    .line 2832
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v8, 0x2

    if-eqz v2, :cond_38

    .line 2838
    :try_start_d
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_f} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_f} :catch_1f
    .catchall {:try_start_d .. :try_end_f} :catchall_44

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .local v3, "cameraId":Ljava/lang/String;
    .local v4, "enabled":Z
    .local v6, "clientAttribution":Landroid/content/AttributionSourceState;
    .local v7, "devicePolicy":I
    :try_start_13
    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_16} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_19
    .catchall {:try_start_13 .. :try_end_16} :catchall_57

    .line 2845
    nop

    .line 2846
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_17
    monitor-exit v1

    .line 2847
    return-void

    .line 2842
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .line 2840
    :catch_1c
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 2842
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_1f
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 2843
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string p3, "Camera service is currently unavailable"

    invoke-direct {p2, v8, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p2

    .line 2840
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_2d
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 2841
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_33
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p2

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p2

    .line 2833
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :cond_38
    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable"

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p1

    .line 2846
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catchall_44
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    goto :goto_59

    .line 2828
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :cond_4b
    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraId was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p1

    .line 2846
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    :catchall_57
    move-exception v0

    move-object p1, v0

    :goto_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_17 .. :try_end_5a} :catchall_57

    throw p1
.end method

.method public blacklist turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)V
    .registers 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2855
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2856
    if-eqz p1, :cond_4b

    .line 2860
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_44

    move-object v2, v0

    .line 2861
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v8, 0x2

    if-eqz v2, :cond_38

    .line 2867
    :try_start_d
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_f} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_f} :catch_1f
    .catchall {:try_start_d .. :try_end_f} :catchall_44

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .local v3, "cameraId":Ljava/lang/String;
    .local v4, "torchStrength":I
    .local v6, "clientAttribution":Landroid/content/AttributionSourceState;
    .local v7, "devicePolicy":I
    :try_start_13
    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_16} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_19
    .catchall {:try_start_13 .. :try_end_16} :catchall_57

    .line 2878
    nop

    .line 2879
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_17
    monitor-exit v1

    .line 2880
    return-void

    .line 2875
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .line 2873
    :catch_1c
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .line 2875
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_1f
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 2876
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string p3, "Camera service is currently unavailable."

    invoke-direct {p2, v8, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p2

    .line 2873
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_2d
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 2874
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_33
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p2

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p2

    .line 2862
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :cond_38
    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable."

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p1

    .line 2879
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catchall_44
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    goto :goto_59

    .line 2857
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :cond_4b
    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraId was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p1

    .line 2879
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    :catchall_57
    move-exception v0

    move-object p1, v0

    :goto_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_17 .. :try_end_5a} :catchall_57

    throw p1
.end method

.method public greylist-max-o unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3339
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3340
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3341
    monitor-exit v0

    .line 3342
    return-void

    .line 3341
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3366
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3367
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    monitor-exit v0

    .line 3369
    return-void

    .line 3368
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
