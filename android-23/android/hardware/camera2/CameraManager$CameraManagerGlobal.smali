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


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final STATUS_ENUMERATING:I = 0x2

.field public static final STATUS_NOT_AVAILABLE:I = -0x80000000

.field public static final STATUS_NOT_PRESENT:I = 0x0

.field public static final STATUS_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field public static final TORCH_STATUS_AVAILABLE_OFF:I = 0x1

.field public static final TORCH_STATUS_AVAILABLE_ON:I = 0x2

.field public static final TORCH_STATUS_NOT_AVAILABLE:I

.field private static final gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# instance fields
.field private final CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final DEBUG:Z

.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraService:Landroid/hardware/ICameraService;

.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchClientBinder:Landroid/os/Binder;

.field private final mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 730
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    #@5
    .line 729
    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@7
    .line 720
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 786
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    #@3
    .line 724
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    #@6
    .line 726
    const/16 v0, 0x3e8

    #@8
    iput v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    #@a
    .line 753
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@11
    .line 757
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    .line 756
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@18
    .line 771
    new-instance v0, Landroid/os/Binder;

    #@1a
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    #@1f
    .line 774
    new-instance v0, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@24
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@26
    .line 778
    new-instance v0, Landroid/util/ArrayMap;

    #@28
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@2b
    .line 777
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@2d
    .line 780
    new-instance v0, Ljava/lang/Object;

    #@2f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@32
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@34
    .line 786
    return-void
.end method

.method private connectCameraServiceLocked()V
    .locals 8

    #@0
    .prologue
    .line 823
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    #@2
    if-eqz v5, :cond_0

    #@4
    return-void

    #@5
    .line 825
    :cond_0
    const-string/jumbo v5, "CameraManagerGlobal"

    #@8
    const-string/jumbo v6, "Connecting to camera service"

    #@b
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 827
    const-string/jumbo v5, "media.camera"

    #@11
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@14
    move-result-object v1

    #@15
    .line 828
    .local v1, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    #@17
    .line 830
    return-void

    #@18
    .line 833
    :cond_1
    const/4 v5, 0x0

    #@19
    :try_start_0
    invoke-interface {v1, p0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 839
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    #@1f
    move-result-object v2

    #@20
    .line 846
    .local v2, "cameraServiceRaw":Landroid/hardware/ICameraService;
    invoke-static {v2}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/hardware/ICameraService;

    #@26
    .line 850
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    #@29
    move-result v5

    #@2a
    .line 849
    invoke-static {v5}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;->throwOnError(I)V
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@2d
    .line 856
    :goto_0
    :try_start_2
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)I

    #@30
    .line 857
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    #@32
    .line 821
    :goto_1
    return-void

    #@33
    .line 834
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v2    # "cameraServiceRaw":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v4

    #@34
    .line 836
    .local v4, "e":Landroid/os/RemoteException;
    return-void

    #@35
    .line 851
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v2    # "cameraServiceRaw":Landroid/hardware/ICameraService;
    :catch_1
    move-exception v3

    #@36
    .line 852
    .local v3, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    const-string/jumbo v5, "Failed to set up vendor tags"

    #@39
    invoke-direct {p0, v3, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/hardware/camera2/utils/CameraRuntimeException;Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 858
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_2
    move-exception v3

    #@3e
    .line 860
    .restart local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@40
    const-string/jumbo v6, "Failed to register a camera service listener"

    #@43
    .line 861
    invoke-virtual {v3}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@46
    move-result-object v7

    #@47
    .line 860
    invoke-direct {v5, v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    throw v5

    #@4b
    .line 862
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_3
    move-exception v4

    #@4c
    .restart local v4    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .locals 1

    #@0
    .prologue
    .line 790
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2
    return-object v0
.end method

.method private handleRecoverableSetupErrors(Landroid/hardware/camera2/utils/CameraRuntimeException;Ljava/lang/String;)V
    .locals 5
    .param p1, "e"    # Landroid/hardware/camera2/utils/CameraRuntimeException;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 899
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@3
    move-result v1

    #@4
    .line 900
    .local v1, "problem":I
    packed-switch v1, :pswitch_data_0

    #@7
    .line 906
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, p2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v2

    #@11
    .line 902
    :pswitch_0
    invoke-static {v1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 903
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v2, "CameraManagerGlobal"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, ": "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 898
    return-void

    #@34
    .line 900
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 911
    packed-switch p1, :pswitch_data_0

    #@3
    .line 915
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 913
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 911
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onStatusChangedLocked(ILjava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1007
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1008
    const-string/jumbo v5, "CameraManagerGlobal"

    #@9
    const-string/jumbo v6, "Ignoring invalid device %s status 0x%x"

    #@c
    const/4 v7, 0x2

    #@d
    new-array v7, v7, [Ljava/lang/Object;

    #@f
    const/4 v8, 0x0

    #@10
    aput-object p2, v7, v8

    #@12
    .line 1009
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v8

    #@16
    const/4 v9, 0x1

    #@17
    aput-object v8, v7, v9

    #@19
    .line 1008
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1010
    return-void

    #@21
    .line 1013
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Ljava/lang/Integer;

    #@2d
    .line 1015
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    #@2f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v5

    #@33
    if-ne v5, p1, :cond_1

    #@35
    .line 1021
    return-void

    #@36
    .line 1037
    :cond_1
    if-eqz v4, :cond_2

    #@38
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    #@3b
    move-result v5

    #@3c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@3f
    move-result v6

    #@40
    invoke-direct {p0, v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    #@43
    move-result v6

    #@44
    if-ne v5, v6, :cond_2

    #@46
    .line 1046
    return-void

    #@47
    .line 1049
    :cond_2
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@49
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@4c
    move-result v1

    #@4d
    .line 1050
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    #@4e
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    #@50
    .line 1051
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@52
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Landroid/os/Handler;

    #@58
    .line 1052
    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    #@60
    .line 1054
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    #@63
    .line 1050
    add-int/lit8 v3, v3, 0x1

    #@65
    goto :goto_0

    #@66
    .line 1001
    .end local v0    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_3
    return-void
.end method

.method private onTorchStatusChangedLocked(ILjava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1072
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1073
    const-string/jumbo v5, "CameraManagerGlobal"

    #@9
    const-string/jumbo v6, "Ignoring invalid device %s torch status 0x%x"

    #@c
    const/4 v7, 0x2

    #@d
    new-array v7, v7, [Ljava/lang/Object;

    #@f
    const/4 v8, 0x0

    #@10
    aput-object p2, v7, v8

    #@12
    .line 1074
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v8

    #@16
    const/4 v9, 0x1

    #@17
    aput-object v8, v7, v9

    #@19
    .line 1073
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1075
    return-void

    #@21
    .line 1078
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Ljava/lang/Integer;

    #@2d
    .line 1079
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    #@2f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v5

    #@33
    if-ne v5, p1, :cond_1

    #@35
    .line 1085
    return-void

    #@36
    .line 1088
    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@3b
    move-result v1

    #@3c
    .line 1089
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    #@3d
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@3f
    .line 1090
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@41
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Landroid/os/Handler;

    #@47
    .line 1091
    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@49
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/hardware/camera2/CameraManager$TorchCallback;

    #@4f
    .line 1092
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    #@52
    .line 1089
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1066
    .end local v0    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_2
    return-void
.end method

.method private postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    #@0
    .prologue
    .line 965
    packed-switch p4, :pswitch_data_0

    #@3
    .line 979
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    #@5
    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    #@8
    .line 978
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@b
    .line 964
    :goto_0
    return-void

    #@c
    .line 969
    :pswitch_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    #@e
    invoke-direct {v0, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    #@11
    .line 968
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@14
    goto :goto_0

    #@15
    .line 965
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    #@0
    .prologue
    .line 944
    invoke-direct {p0, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 946
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    #@8
    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    #@b
    .line 945
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 943
    :goto_0
    return-void

    #@f
    .line 954
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    #@11
    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    #@14
    .line 953
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@17
    goto :goto_0
.end method

.method private scheduleCameraServiceReconnectionLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1169
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 1170
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/os/Handler;

    #@11
    .line 1184
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;

    #@13
    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    #@16
    .line 1198
    const-wide/16 v2, 0x3e8

    #@18
    .line 1183
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1b
    .line 1166
    return-void

    #@1c
    .line 1171
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@21
    move-result v1

    #@22
    if-lez v1, :cond_1

    #@24
    .line 1172
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@26
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/os/Handler;

    #@2c
    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0

    #@2d
    .line 1175
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method private updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 994
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_0

    #@9
    .line 995
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    .line 996
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/Integer;

    #@19
    .line 997
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v3

    #@1d
    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    #@20
    .line 994
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 993
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1059
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_0

    #@9
    .line 1060
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    .line 1061
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/Integer;

    #@19
    .line 1062
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v3

    #@1d
    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    #@20
    .line 1059
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1058
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 920
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 927
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 925
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 920
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private validTorchStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 932
    packed-switch p1, :pswitch_data_0

    #@3
    .line 938
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 936
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 932
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 795
    return-object p0
.end method

.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 1209
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1211
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v2, :cond_0

    #@7
    monitor-exit v3

    #@8
    return-void

    #@9
    .line 1213
    :cond_0
    const/4 v2, 0x0

    #@a
    :try_start_1
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    #@c
    .line 1218
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@12
    move-result v2

    #@13
    if-ge v1, v2, :cond_1

    #@15
    .line 1219
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/String;

    #@1d
    .line 1220
    .local v0, "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    #@1e
    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    #@21
    .line 1218
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1222
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@25
    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@2a
    move-result v2

    #@2b
    if-ge v1, v2, :cond_2

    #@2d
    .line 1223
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/lang/String;

    #@35
    .line 1224
    .restart local v0    # "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    #@36
    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    #@39
    .line 1222
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 1227
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    monitor-exit v3

    #@40
    .line 1208
    return-void

    #@41
    .line 1209
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@42
    monitor-exit v3

    #@43
    throw v2
.end method

.method public getCameraService()Landroid/hardware/ICameraService;
    .locals 3

    #@0
    .prologue
    .line 806
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 807
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    #@6
    .line 808
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 809
    const-string/jumbo v0, "CameraManagerGlobal"

    #@d
    const-string/jumbo v2, "Camera service is unavailable"

    #@10
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 811
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0

    #@17
    .line 806
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public onStatusChanged(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1150
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1151
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 1149
    return-void

    #@c
    .line 1150
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public onTorchStatusChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1158
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1156
    return-void

    #@8
    .line 1157
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1104
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1105
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    #@6
    .line 1107
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/Handler;

    #@e
    .line 1109
    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@10
    .line 1110
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 1103
    return-void

    #@15
    .line 1104
    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1128
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1129
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    #@6
    .line 1131
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/Handler;

    #@e
    .line 1133
    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@10
    .line 1134
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 1127
    return-void

    #@15
    .line 1128
    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 868
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 870
    if-nez p1, :cond_0

    #@5
    .line 871
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v7, "cameraId was null"

    #@a
    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 868
    :catchall_0
    move-exception v5

    #@f
    monitor-exit v6

    #@10
    throw v5

    #@11
    .line 874
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@14
    move-result-object v0

    #@15
    .line 875
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    #@17
    .line 876
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    #@19
    .line 877
    const-string/jumbo v7, "Camera service is currently unavailable"

    #@1c
    .line 876
    const/4 v8, 0x2

    #@1d
    invoke-direct {v5, v8, v7}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@20
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 881
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    #@23
    invoke-interface {v0, p1, p2, v5}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)I
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    move-result v4

    #@27
    .local v4, "status":I
    monitor-exit v6

    #@28
    .line 867
    return-void

    #@29
    .line 891
    .end local v4    # "status":I
    :catch_0
    move-exception v2

    #@2a
    .line 892
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    #@2c
    .line 893
    const-string/jumbo v7, "Camera service is currently unavailable"

    #@2f
    .line 892
    const/4 v8, 0x2

    #@30
    invoke-direct {v5, v8, v7}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@33
    throw v5

    #@34
    .line 882
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@35
    .line 883
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@38
    move-result v3

    #@39
    .line 884
    .local v3, "problem":I
    packed-switch v3, :pswitch_data_0

    #@3c
    .line 889
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@3f
    move-result-object v5

    #@40
    throw v5

    #@41
    .line 886
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@43
    .line 887
    const-string/jumbo v7, "the camera device doesn\'t have a flash unit."

    #@46
    .line 886
    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    .line 884
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    #@0
    .prologue
    .line 1122
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1123
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1121
    return-void

    #@a
    .line 1122
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    #@0
    .prologue
    .line 1140
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1141
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1139
    return-void

    #@a
    .line 1140
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
