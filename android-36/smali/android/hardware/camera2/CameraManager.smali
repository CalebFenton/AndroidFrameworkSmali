.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$FoldStateListener;,
        Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o API_VERSION_1:I = 0x1

.field private static final greylist-max-o API_VERSION_2:I = 0x2

.field private static final blacklist CAMERA_OPEN_CLOSE_LISTENER_PERMISSION:Ljava/lang/String; = "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

.field private static final greylist-max-o CAMERA_TYPE_ALL:I = 0x1

.field private static final greylist-max-o CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final blacklist ENABLE_PHYSICAL_CAMERA_CALLBACK_FOR_UNAVAILABLE_LOGICAL_CAMERA:J = 0xe909d6aL

.field public static final blacklist LANDSCAPE_TO_PORTRAIT_PROP:Ljava/lang/String; = "camera.enable_landscape_to_portrait"

.field public static final blacklist OVERRIDE_CAMERA_LANDSCAPE_TO_PORTRAIT:J = 0xef10e60L

.field public static final blacklist ROTATION_OVERRIDE_NONE:I = 0x0

.field public static final blacklist ROTATION_OVERRIDE_OVERRIDE_TO_PORTRAIT:I = 0x1

.field public static final blacklist ROTATION_OVERRIDE_ROTATION_ONLY:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManager"

.field private static final blacklist USE_CALLING_PID:I = -0x1

.field private static final greylist-max-o USE_CALLING_UID:I = -0x1


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final blacklist mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mHasOpenCloseListenerPermission:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 153
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    .line 157
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_17
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 240
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

    .line 241
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_24

    const/4 v0, 0x1

    :cond_24
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private blacklist getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 13
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "rotationOverride"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_65

    .line 774
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 775
    :try_start_8
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_5c

    move-object v3, v0

    .line 776
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    const/4 v9, 0x2

    if-eqz v3, :cond_52

    .line 781
    :try_start_14
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 784
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 786
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 787
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v8
    :try_end_26
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_26} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_26} :catch_3d
    .catchall {:try_start_14 .. :try_end_26} :catchall_5c

    .line 782
    move-object v4, p1

    move v6, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "rotationOverride":I
    .local v4, "cameraId":Ljava/lang/String;
    .local v6, "rotationOverride":I
    :try_start_28
    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;IILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 788
    .local p1, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v4, p1, v3}, Landroid/hardware/camera2/CameraManager;->prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2
    :try_end_30
    .catch Landroid/os/ServiceSpecificException; {:try_start_28 .. :try_end_30} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_30} :catch_37
    .catchall {:try_start_28 .. :try_end_30} :catchall_62

    move-object v1, p2

    .line 795
    .end local p1    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    nop

    .line 796
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_62

    .line 797
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 798
    return-object v1

    .line 791
    .restart local v3    # "cameraService":Landroid/hardware/ICameraService;
    :catch_37
    move-exception v0

    move-object p1, v0

    goto :goto_41

    .line 789
    :catch_3a
    move-exception v0

    move-object p1, v0

    goto :goto_4d

    .line 791
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :catch_3d
    move-exception v0

    move-object v4, p1

    move v6, p2

    move-object p1, v0

    .line 793
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_41
    :try_start_41
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently unavailable"

    invoke-direct {p2, v9, v0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    throw p2

    .line 789
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :catch_49
    move-exception v0

    move-object v4, p1

    move v6, p2

    move-object p1, v0

    .line 790
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_4d
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p2

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    throw p2

    .line 777
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :cond_52
    move-object v4, p1

    move v6, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable"

    invoke-direct {p1, v9, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    throw p1

    .line 796
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :catchall_5c
    move-exception v0

    move-object v4, p1

    move v6, p2

    move-object p1, v0

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    :goto_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_41 .. :try_end_61} :catchall_62

    throw p1

    :catchall_62
    move-exception v0

    move-object p1, v0

    goto :goto_60

    .line 772
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :cond_65
    move-object v4, p1

    move v6, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No cameras available on device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 931
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist getDisplaySize()Landroid/util/Size;
    .registers 9

    .line 610
    const-string v0, "CameraManager"

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 613
    .local v1, "ret":Landroid/util/Size;
    :try_start_8
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v4, "display"

    .line 614
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 615
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 616
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_31

    .line 617
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 618
    .local v4, "sz":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 619
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 620
    .local v5, "width":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 622
    .local v6, "height":I
    if-le v6, v5, :cond_2a

    .line 623
    move v6, v5

    .line 624
    iget v7, v4, Landroid/graphics/Point;->y:I

    move v5, v7

    .line 627
    :cond_2a
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 628
    .end local v1    # "ret":Landroid/util/Size;
    .end local v4    # "sz":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .local v7, "ret":Landroid/util/Size;
    move-object v1, v7

    goto :goto_36

    .line 629
    .end local v7    # "ret":Landroid/util/Size;
    .restart local v1    # "ret":Landroid/util/Size;
    :cond_31
    const-string v4, "Invalid default display!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_37

    .line 633
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    :goto_36
    goto :goto_4e

    .line 631
    :catch_37
    move-exception v2

    .line 632
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplaySize Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4e
    return-object v1
.end method

.method private blacklist getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;
    .registers 15
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "cameraService"    # Landroid/hardware/ICameraService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/ICameraService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 653
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 656
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 658
    .local v1, "multiResolutionStreamConfigurations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    .line 663
    .local v2, "multiResolutionStreamSupported":Ljava/lang/Boolean;
    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_30

    move-object v5, p3

    goto/16 :goto_98

    .line 671
    :cond_30
    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v3

    .line 672
    .local v3, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 673
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 675
    .local v0, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v0, :cond_4d

    .line 676
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :cond_4d
    return-object v1

    .line 681
    .end local v0    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_4e
    :try_start_4e
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v6, v4

    .line 682
    .local v6, "physicalCameraId":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object v9

    .line 684
    .local v9, "clientAttribution":Landroid/content/AttributionSourceState;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 687
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_6c} :catch_87

    .line 685
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p3

    .end local p3    # "cameraService":Landroid/hardware/ICameraService;
    .local v5, "cameraService":Landroid/hardware/ICameraService;
    :try_start_6f
    invoke-interface/range {v5 .. v10}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;IILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p3

    .line 691
    .local p3, "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 694
    .local v4, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v4, :cond_80

    .line 695
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_80} :catch_82

    .line 697
    .end local v4    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v6    # "physicalCameraId":Ljava/lang/String;
    .end local v9    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_80
    move-object p3, v5

    goto :goto_52

    .line 698
    :catch_82
    move-exception v0

    move-object p3, v0

    goto :goto_8a

    .line 703
    .end local v5    # "cameraService":Landroid/hardware/ICameraService;
    .local p3, "cameraService":Landroid/hardware/ICameraService;
    :cond_85
    move-object v5, p3

    .line 705
    .end local p3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v5    # "cameraService":Landroid/hardware/ICameraService;
    return-object v1

    .line 698
    .end local v5    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p3    # "cameraService":Landroid/hardware/ICameraService;
    :catch_87
    move-exception v0

    move-object v5, p3

    move-object p3, v0

    .line 699
    .restart local v5    # "cameraService":Landroid/hardware/ICameraService;
    .local p3, "e":Landroid/os/RemoteException;
    :goto_8a
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x4

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v0, v4, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 702
    .local v0, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    throw v4

    .line 663
    .end local v0    # "sse":Landroid/os/ServiceSpecificException;
    .end local v3    # "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "cameraService":Landroid/hardware/ICameraService;
    .local p3, "cameraService":Landroid/hardware/ICameraService;
    :cond_97
    move-object v5, p3

    .line 664
    .end local p3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v5    # "cameraService":Landroid/hardware/ICameraService;
    :goto_98
    return-object v1
.end method

.method public static blacklist getRotationOverride(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1673
    const/4 v0, 0x0

    .line 1674
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1676
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p0, :cond_c

    .line 1677
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1678
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1681
    :cond_c
    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static blacklist getRotationOverride(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1691
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAMERA_COMPAT_SIMULATE_REQUESTED_ORIENTATION:Landroid/window/DesktopModeFlags;

    .line 1692
    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1693
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/CameraManager;->getRotationOverrideInternal(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1695
    :cond_13
    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraManager;->shouldOverrideToPortrait(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1696
    const/4 v0, 0x1

    goto :goto_1c

    .line 1697
    :cond_1b
    const/4 v0, 0x0

    .line 1695
    :goto_1c
    return v0
.end method

.method private static blacklist getRotationOverrideForCompatFreeform(I)I
    .registers 3
    .param p0, "freeformCameraCompatMode"    # I

    .line 1757
    const/4 v0, 0x5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_9

    if-ne p0, v1, :cond_7

    goto :goto_9

    .line 1763
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 1761
    :cond_9
    :goto_9
    return v1
.end method

.method public static blacklist getRotationOverrideInternal(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1708
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sLandscapeToPortrait:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1709
    return v1

    .line 1714
    :cond_6
    if-eqz p0, :cond_52

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_52

    .line 1715
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1716
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_52

    .line 1717
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 1718
    .local v3, "appTask":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    .line 1719
    .local v4, "taskInfo":Landroid/app/TaskInfo;
    iget-object v5, v4, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v5, v5, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget v5, v5, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 1721
    .local v5, "freeformCameraCompatMode":I
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->isInCameraCompatMode(I)Z

    move-result v6

    if-eqz v6, :cond_51

    iget-object v6, v4, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_51

    iget-object v6, v4, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1723
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1725
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->getRotationOverrideForCompatFreeform(I)I

    move-result v1

    return v1

    .line 1727
    .end local v3    # "appTask":Landroid/app/ActivityManager$AppTask;
    .end local v4    # "taskInfo":Landroid/app/TaskInfo;
    .end local v5    # "freeformCameraCompatMode":I
    :cond_51
    goto :goto_20

    .line 1731
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_52
    const/4 v0, 0x1

    if-eqz p1, :cond_68

    if-eqz p2, :cond_68

    .line 1735
    :try_start_57
    const-string v2, "android.camera.PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT"

    .line 1733
    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v2

    .line 1735
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_61} :catch_67

    if-eqz v2, :cond_65

    .line 1736
    move v1, v0

    goto :goto_66

    .line 1737
    :cond_65
    nop

    .line 1733
    :goto_66
    return v1

    .line 1738
    :catch_67
    move-exception v2

    .line 1743
    :cond_68
    const-wide/32 v2, 0xef10e60

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1744
    move v1, v0

    goto :goto_74

    .line 1745
    :cond_73
    nop

    .line 1743
    :goto_74
    return v1
.end method

.method public static blacklist isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .registers 3
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 2127
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 2129
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-nez v1, :cond_c

    return v0

    .line 2131
    :cond_c
    invoke-interface {v1, p0}, Landroid/hardware/ICameraService;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_11

    return v0

    .line 2132
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_11
    move-exception v1

    .line 2135
    return v0
.end method

.method private static blacklist isInCameraCompatMode(I)Z
    .registers 2
    .param p0, "freeformCameraCompatMode"    # I

    .line 1750
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)Landroid/hardware/camera2/CameraDevice;
    .registers 29
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "oomScoreOffset"    # I
    .param p5, "rotationOverride"    # I
    .param p6, "sharedMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1100
    move-object/from16 v5, p0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 1101
    .local v4, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v10, 0x0

    .line 1102
    .local v10, "device":Landroid/hardware/camera2/CameraDevice;
    iget-object v11, v5, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1103
    const/4 v12, 0x0

    .line 1104
    .local v12, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    const/4 v0, 0x0

    .line 1105
    .local v0, "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    :try_start_c
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraDeviceSetup()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1106
    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1107
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object v1

    move-object v0, v1

    move-object v8, v0

    goto :goto_20

    .line 1110
    :cond_1f
    move-object v8, v0

    .end local v0    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .local v8, "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    :goto_20
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v5, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1117
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v7, v5, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraManager;ILandroid/content/Context;Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Z)V

    move-object v1, v0

    .line 1119
    .local v1, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v14
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_cd

    .line 1122
    .local v14, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    const/4 v2, 0x4

    :try_start_3d
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v13

    .line 1123
    .local v13, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v13, :cond_6b

    .line 1129
    nop

    .line 1130
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(Z)Landroid/content/AttributionSourceState;

    move-result-object v19

    .line 1131
    .local v19, "clientAttribution":Landroid/content/AttributionSourceState;
    iget-object v0, v5, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1136
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v5, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1139
    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v20

    .line 1132
    move-object/from16 v15, p1

    move/from16 v16, p4

    move/from16 v18, p5

    move/from16 v21, p6

    move/from16 v17, v0

    invoke-interface/range {v13 .. v21}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;IIILandroid/content/AttributionSourceState;IZ)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v0

    move-object v12, v0

    .line 1170
    .end local v13    # "cameraService":Landroid/hardware/ICameraService;
    .end local v19    # "clientAttribution":Landroid/content/AttributionSourceState;
    :goto_6a
    goto :goto_ba

    .line 1124
    .restart local v13    # "cameraService":Landroid/hardware/ICameraService;
    :cond_6b
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v0, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v0
    :try_end_73
    .catch Landroid/os/ServiceSpecificException; {:try_start_3d .. :try_end_73} :catch_83
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_73} :catch_73
    .catchall {:try_start_3d .. :try_end_73} :catchall_cd

    .line 1163
    .end local v13    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :catch_73
    move-exception v0

    .line 1165
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_74
    new-instance v3, Landroid/os/ServiceSpecificException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v3, v2, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 1168
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 1169
    invoke-static {v3}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v2

    .line 1140
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :catch_83
    move-exception v0

    .line 1141
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v6, 0x9

    if-eq v3, v6, :cond_c5

    .line 1143
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v6, 0x6

    const/4 v7, 0x7

    if-eq v3, v7, :cond_aa

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v9, 0x8

    if-eq v3, v9, :cond_aa

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v3, v6, :cond_aa

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v3, v2, :cond_aa

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v9, 0xa

    if-ne v3, v9, :cond_a5

    goto :goto_aa

    .line 1161
    :cond_a5
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v2

    .line 1151
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :cond_aa
    :goto_aa
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 1153
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v3, v6, :cond_c0

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v3, v2, :cond_c0

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v2, v7, :cond_c0

    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_6a

    .line 1177
    :goto_ba
    invoke-virtual {v1, v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 1178
    move-object v10, v1

    .line 1179
    .end local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    monitor-exit v11

    .line 1181
    return-object v10

    .line 1157
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :cond_c0
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v2

    .line 1142
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :cond_c5
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Should\'ve gone down the shim path"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v2

    .line 1179
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :catchall_cd
    move-exception v0

    monitor-exit v11
    :try_end_cf
    .catchall {:try_start_74 .. :try_end_cf} :catchall_cd

    throw v0
.end method

.method public static blacklist physicalCallbacksAreEnabledForUnavailableCamera()Z
    .registers 2

    .line 1795
    const-wide/32 v0, 0xe909d6a

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static blacklist reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;
    .registers 6
    .param p0, "extStats"    # Landroid/hardware/CameraExtensionSessionStats;

    .line 2250
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 2251
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const-string v1, ""

    const-string v2, "CameraManager"

    if-nez v0, :cond_14

    .line 2252
    const-string v3, "CameraService not available. Not reporting extension stats."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    return-object v1

    .line 2256
    :cond_14
    :try_start_14
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_18} :catch_19

    return-object v1

    .line 2257
    :catch_19
    move-exception v3

    .line 2258
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to report extension session stats to cameraservice."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2260
    .end local v3    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public static blacklist shouldOverrideToPortrait(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1773
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sLandscapeToPortrait:Z

    if-nez v0, :cond_6

    .line 1774
    const/4 v0, 0x0

    return v0

    .line 1777
    :cond_6
    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    .line 1779
    :try_start_a
    const-string v0, "android.camera.PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 1781
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_15

    .line 1779
    return v0

    .line 1782
    :catch_15
    move-exception v0

    .line 1787
    :cond_16
    const-wide/32 v0, 0xef10e60

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraCharacteristics(Ljava/lang/String;Z)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "overrideToPortrait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 761
    nop

    .line 762
    if-eqz p2, :cond_5

    .line 763
    const/4 v0, 0x1

    goto :goto_6

    .line 764
    :cond_5
    const/4 v0, 0x0

    .line 761
    :goto_6
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCameraDeviceSetup(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 917
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->isCameraDeviceSetupSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 922
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object v0

    return-object v0

    .line 918
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDeviceSetup is not supported for Camera ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 861
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 862
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v1

    .line 863
    .local v1, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    new-instance v2, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2
.end method

.method public whitelist getCameraIdList()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 327
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraIdListNoLazy()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 345
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraService()Landroid/hardware/ICameraService;
    .registers 2

    .line 2227
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getClientAttribution()Landroid/content/AttributionSourceState;
    .registers 3

    .line 1071
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getClientAttribution(IZ)Landroid/content/AttributionSourceState;
    .registers 7
    .param p1, "deviceIdOverride"    # I
    .param p2, "useContextAttributionSource"    # Z

    .line 1031
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1032
    .local v0, "contextAttributionSource":Landroid/content/AttributionSource;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_d

    .line 1033
    invoke-virtual {v0, p1}, Landroid/content/AttributionSource;->withDeviceId(I)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1035
    :cond_d
    nop

    .line 1036
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 1038
    .local v2, "contextAttributionSourceState":Landroid/content/AttributionSourceState;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->dataDeliveryPermissionChecks()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz p2, :cond_1b

    .line 1039
    return-object v2

    .line 1041
    :cond_1b
    new-instance v3, Landroid/content/AttributionSourceState;

    invoke-direct {v3}, Landroid/content/AttributionSourceState;-><init>()V

    .line 1043
    .local v3, "clientAttribution":Landroid/content/AttributionSourceState;
    iput v1, v3, Landroid/content/AttributionSourceState;->uid:I

    .line 1044
    iput v1, v3, Landroid/content/AttributionSourceState;->pid:I

    .line 1045
    iget v1, v2, Landroid/content/AttributionSourceState;->deviceId:I

    iput v1, v3, Landroid/content/AttributionSourceState;->deviceId:I

    .line 1046
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 1047
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 1048
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    iput-object v1, v3, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 1049
    return-object v3
.end method

.method public blacklist getClientAttribution(Z)Landroid/content/AttributionSourceState;
    .registers 3
    .param p1, "useContextAttributionSource"    # Z

    .line 1062
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConcurrentCameraIds()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 400
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getConcurrentCameraIds(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDevicePolicyFromContext(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 596
    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 597
    return v1

    .line 600
    :cond_8
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_16

    .line 601
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 603
    :cond_16
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_1b

    .line 604
    goto :goto_26

    .line 605
    :cond_1b
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result v1

    .line 603
    :goto_26
    return v1
.end method

.method public blacklist getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;
    .registers 7
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 873
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 875
    .local v0, "physicalIdsToChars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    .line 876
    .local v1, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 877
    .local v3, "physicalCameraId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 878
    .local v4, "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .end local v3    # "physicalCameraId":Ljava/lang/String;
    .end local v4    # "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_d

    .line 880
    :cond_21
    return-object v0
.end method

.method public whitelist getTorchStrengthLevel(Ljava/lang/String;)I
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1659
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_17

    .line 1662
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1665
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1666
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1663
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result v0

    .line 1662
    return v0

    .line 1660
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "internalCamId"    # Ljava/lang/String;
    .param p3, "externalCamId"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2170
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_46

    .line 2173
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 2174
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_3d

    .line 2178
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2180
    :try_start_11
    new-instance v2, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {v2, p5, p4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;-><init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V

    .line 2182
    .local v2, "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    nop

    .line 2183
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    move-result-object v3

    .line 2184
    .local v3, "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-interface {v0, p1, p2, p3, v3}, Landroid/hardware/ICameraService;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v4

    .line 2186
    .local v4, "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    :try_end_22
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_22} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_27
    .catchall {:try_start_11 .. :try_end_22} :catchall_25

    .line 2195
    .end local v2    # "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .end local v3    # "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v4    # "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    nop

    .line 2196
    :try_start_23
    monitor-exit v1

    .line 2197
    return-void

    .line 2196
    :catchall_25
    move-exception v2

    goto :goto_3b

    .line 2189
    :catch_27
    move-exception v2

    .line 2191
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    const-string v4, "Camera service is currently unavailable"

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 2194
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "internalCamId":Ljava/lang/String;
    .end local p3    # "externalCamId":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    throw v4

    .line 2187
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "internalCamId":Ljava/lang/String;
    .restart local p3    # "externalCamId":Ljava/lang/String;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    :catch_35
    move-exception v2

    .line 2188
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "internalCamId":Ljava/lang/String;
    .end local p3    # "externalCamId":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    throw v3

    .line 2196
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "internalCamId":Ljava/lang/String;
    .restart local p3    # "externalCamId":Ljava/lang/String;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_25

    throw v2

    .line 2175
    :cond_3d
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2171
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2219
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 2220
    return-void
.end method

.method public whitelist isCameraDeviceSetupSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 964
    if-eqz p1, :cond_4c

    .line 968
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_2d

    .line 969
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 970
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 969
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 970
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 975
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 976
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    return v1

    .line 971
    .end local v0    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not available on device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Camera ID was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isCameraDeviceSharingSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1002
    if-eqz p1, :cond_55

    .line 1006
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_36

    .line 1007
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1008
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1007
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1008
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1013
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 1014
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_OUTPUT_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1015
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1016
    .local v1, "sharedOutputConfiguration":[J
    if-eqz v1, :cond_34

    const/4 v2, 0x1

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    return v2

    .line 1009
    .end local v0    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "sharedOutputConfiguration":[J
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not available on device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Camera ID was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isCameraServiceDisabled()Z
    .registers 2

    .line 2236
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    return v0
.end method

.method public whitelist isConcurrentSessionConfigurationSupported(Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 438
    .local p1, "cameraIdAndSessionConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 442
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v3

    .line 439
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isConcurrentSessionConfigurationSupported(Ljava/util/Map;ILandroid/content/AttributionSourceState;I)Z

    move-result v0

    .line 438
    return v0
.end method

.method public whitelist openCamera(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 13
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "oomScoreOffset"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1467
    if-eqz p3, :cond_1f

    .line 1470
    if-ltz p2, :cond_14

    .line 1474
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1475
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    .line 1474
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v4, p3

    move-object v3, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "oomScoreOffset":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v2, "cameraId":Ljava/lang/String;
    .local v3, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "oomScoreOffset":I
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1476
    return-void

    .line 1471
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "oomScoreOffset":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "oomScoreOffset":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    :cond_14
    move-object v2, p1

    move v5, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "oomScoreOffset":I
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v5    # "oomScoreOffset":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "oomScoreOffset < 0, cannot increase priority of camera client"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1468
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v5    # "oomScoreOffset":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "oomScoreOffset":I
    :cond_1f
    move-object v2, p1

    move v5, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "oomScoreOffset":I
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v5    # "oomScoreOffset":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .registers 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1266
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1267
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v5

    .line 1266
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v1, "cameraId":Ljava/lang/String;
    .local v2, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1268
    return-void
.end method

.method public whitelist openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1349
    if-eqz p2, :cond_12

    .line 1352
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1353
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    .line 1352
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v2, "cameraId":Ljava/lang/String;
    .local v3, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1354
    return-void

    .line 1350
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    :cond_12
    move-object v2, p1

    move-object v4, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist openCamera(Ljava/lang/String;ZLandroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "overrideToPortrait"    # Z
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1303
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1305
    if-eqz p2, :cond_9

    .line 1306
    const/4 v0, 0x1

    move v5, v0

    goto :goto_b

    .line 1307
    :cond_9
    const/4 v0, 0x0

    move v5, v0

    :goto_b
    nop

    .line 1303
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p4    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v1, "cameraId":Ljava/lang/String;
    .local v2, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1308
    return-void
.end method

.method public blacklist openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "oomScoreOffset"    # I
    .param p5, "rotationOverride"    # I
    .param p6, "sharedMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1506
    if-eqz p1, :cond_1c

    .line 1508
    if-eqz p2, :cond_14

    .line 1511
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_c

    .line 1515
    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)Landroid/hardware/camera2/CameraDevice;

    .line 1517
    return-void

    .line 1512
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1509
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openSharedCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1397
    if-eqz p2, :cond_34

    .line 1400
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->isCameraDeviceSharingSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1404
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1405
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    .line 1404
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v2, "cameraId":Ljava/lang/String;
    .local v3, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1406
    return-void

    .line 1401
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    :cond_18
    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CameraDevice sharing is not supported for Camera ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1398
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    :cond_34
    move-object v2, p1

    move-object v4, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "metadata"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "cameraService"    # Landroid/hardware/ICameraService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 818
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setCameraId(I)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 823
    goto :goto_2c

    .line 840
    :catchall_b
    move-exception v1

    goto :goto_5f

    .line 821
    :catch_d
    move-exception v1

    .line 822
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_e
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse camera Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_2c
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 827
    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v3

    .line 826
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraIdHasConcurrentStreams(Ljava/lang/String;II)Z

    move-result v1

    .line 828
    .local v1, "hasConcurrentStreams":Z
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setHasMandatoryConcurrentStreams(Z)V

    .line 830
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getDisplaySize()Landroid/util/Size;

    move-result-object v2

    .line 831
    .local v2, "displaySize":Landroid/util/Size;
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setDisplaySize(Landroid/util/Size;)V

    .line 833
    nop

    .line 834
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;

    move-result-object v3

    .line 835
    .local v3, "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_58

    .line 836
    invoke-virtual {p2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setMultiResolutionStreamConfigurationMap(Ljava/util/Map;)V

    .line 839
    :cond_58
    new-instance v4, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v4, p2}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    monitor-exit v0

    return-object v4

    .line 840
    .end local v1    # "hasConcurrentStreams":Z
    .end local v2    # "displaySize":Landroid/util/Size;
    .end local v3    # "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_e .. :try_end_60} :catchall_b

    throw v1
.end method

.method public whitelist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 475
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 476
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 477
    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v5

    .line 475
    move-object v1, p1

    .end local p1    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .local v1, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V

    .line 478
    return-void
.end method

.method public whitelist registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 512
    if-eqz p1, :cond_1a

    .line 515
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 516
    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 517
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v5

    .line 515
    move-object v2, p1

    move-object v1, p2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .local v1, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V

    .line 518
    return-void

    .line 513
    .end local v1    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    :cond_1a
    move-object v2, p1

    move-object v1, p2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .restart local v1    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 4
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 309
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    .line 310
    return-void
.end method

.method public whitelist registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 555
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 556
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 557
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v3

    .line 555
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V

    .line 558
    return-void
.end method

.method public whitelist registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 575
    if-eqz p1, :cond_16

    .line 578
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 579
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 578
    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V

    .line 580
    return-void

    .line 576
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTorchMode(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1560
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_16

    .line 1563
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1567
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1568
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1564
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;ZLandroid/content/AttributionSourceState;I)V

    .line 1569
    return-void

    .line 1561
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1628
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_16

    .line 1631
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1635
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1636
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1632
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)V

    .line 1637
    return-void

    .line 1629
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 529
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 530
    return-void
.end method

.method public whitelist unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 591
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 592
    return-void
.end method
