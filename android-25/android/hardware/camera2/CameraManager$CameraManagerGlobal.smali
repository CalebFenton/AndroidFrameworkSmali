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

.field private static final TAG:Ljava/lang/String; = "CameraManagerGlobal"

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
    .line 791
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    #@5
    .line 790
    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@7
    .line 781
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 821
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    #@3
    .line 785
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    #@6
    .line 787
    const/16 v0, 0x3e8

    #@8
    iput v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    #@a
    .line 799
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@11
    .line 803
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    .line 802
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@18
    .line 806
    new-instance v0, Landroid/os/Binder;

    #@1a
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    #@1f
    .line 809
    new-instance v0, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@24
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@26
    .line 813
    new-instance v0, Landroid/util/ArrayMap;

    #@28
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@2b
    .line 812
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@2d
    .line 815
    new-instance v0, Ljava/lang/Object;

    #@2f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@32
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@34
    .line 821
    return-void
.end method

.method private connectCameraServiceLocked()V
    .locals 6

    #@0
    .prologue
    .line 858
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    #@2
    if-eqz v4, :cond_0

    #@4
    return-void

    #@5
    .line 860
    :cond_0
    const-string/jumbo v4, "CameraManagerGlobal"

    #@8
    const-string/jumbo v5, "Connecting to camera service"

    #@b
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 862
    const-string/jumbo v4, "media.camera"

    #@11
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@14
    move-result-object v1

    #@15
    .line 863
    .local v1, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    #@17
    .line 865
    return-void

    #@18
    .line 868
    :cond_1
    const/4 v4, 0x0

    #@19
    :try_start_0
    invoke-interface {v1, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 874
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    #@1f
    move-result-object v0

    #@20
    .line 877
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    #@23
    .line 883
    :goto_0
    :try_start_2
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)V

    #@26
    .line 884
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    #@28
    .line 856
    :goto_1
    return-void

    #@29
    .line 869
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v2

    #@2a
    .line 871
    .local v2, "e":Landroid/os/RemoteException;
    return-void

    #@2b
    .line 878
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_1
    move-exception v3

    #@2c
    .line 879
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    #@2f
    goto :goto_0

    #@30
    .line 885
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :catch_2
    move-exception v3

    #@31
    .line 887
    .restart local v3    # "e":Landroid/os/ServiceSpecificException;
    new-instance v4, Ljava/lang/IllegalStateException;

    #@33
    const-string/jumbo v5, "Failed to register a camera service listener"

    #@36
    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v4

    #@3a
    .line 888
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v2

    #@3b
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .locals 1

    #@0
    .prologue
    .line 825
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2
    return-object v0
.end method

.method private handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    #@0
    .prologue
    .line 918
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@a
    throw v0

    #@b
    .line 920
    :pswitch_0
    const-string/jumbo v0, "CameraManagerGlobal"

    #@e
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 917
    return-void

    #@16
    .line 918
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 928
    packed-switch p1, :pswitch_data_0

    #@3
    .line 932
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 930
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 928
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
    .line 1024
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1025
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
    .line 1026
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v8

    #@16
    const/4 v9, 0x1

    #@17
    aput-object v8, v7, v9

    #@19
    .line 1025
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1027
    return-void

    #@21
    .line 1030
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
    .line 1032
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    #@2f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v5

    #@33
    if-ne v5, p1, :cond_1

    #@35
    .line 1038
    return-void

    #@36
    .line 1054
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
    .line 1063
    return-void

    #@47
    .line 1066
    :cond_2
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@49
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@4c
    move-result v1

    #@4d
    .line 1067
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    #@4e
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    #@50
    .line 1068
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@52
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Landroid/os/Handler;

    #@58
    .line 1069
    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    #@60
    .line 1071
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    #@63
    .line 1067
    add-int/lit8 v3, v3, 0x1

    #@65
    goto :goto_0

    #@66
    .line 1018
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
    .line 1089
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1090
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
    .line 1091
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v8

    #@16
    const/4 v9, 0x1

    #@17
    aput-object v8, v7, v9

    #@19
    .line 1090
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1092
    return-void

    #@21
    .line 1095
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
    .line 1096
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    #@2f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v5

    #@33
    if-ne v5, p1, :cond_1

    #@35
    .line 1102
    return-void

    #@36
    .line 1105
    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@3b
    move-result v1

    #@3c
    .line 1106
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    #@3d
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@3f
    .line 1107
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@41
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Landroid/os/Handler;

    #@47
    .line 1108
    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@49
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/hardware/camera2/CameraManager$TorchCallback;

    #@4f
    .line 1109
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    #@52
    .line 1106
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1083
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
    .line 982
    packed-switch p4, :pswitch_data_0

    #@3
    .line 996
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    #@5
    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    #@8
    .line 995
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@b
    .line 981
    :goto_0
    return-void

    #@c
    .line 986
    :pswitch_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    #@e
    invoke-direct {v0, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    #@11
    .line 985
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@14
    goto :goto_0

    #@15
    .line 982
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
    .line 961
    invoke-direct {p0, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 963
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    #@8
    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    #@b
    .line 962
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 960
    :goto_0
    return-void

    #@f
    .line 971
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    #@11
    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    #@14
    .line 970
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
    .line 1196
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 1197
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/os/Handler;

    #@11
    .line 1211
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;

    #@13
    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    #@16
    .line 1225
    const-wide/16 v2, 0x3e8

    #@18
    .line 1210
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1b
    .line 1193
    return-void

    #@1c
    .line 1198
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
    .line 1199
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
    .line 1202
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
    .line 1011
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
    .line 1012
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    .line 1013
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/Integer;

    #@19
    .line 1014
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v3

    #@1d
    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    #@20
    .line 1011
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1010
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
    .line 1076
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
    .line 1077
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    .line 1078
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/Integer;

    #@19
    .line 1079
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v3

    #@1d
    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    #@20
    .line 1076
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1075
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
    .line 937
    packed-switch p1, :pswitch_data_0

    #@3
    .line 944
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 942
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 937
    nop

    #@8
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private validTorchStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 949
    packed-switch p1, :pswitch_data_0

    #@3
    .line 955
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 953
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 949
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
    .line 830
    return-object p0
.end method

.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 1236
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1238
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
    .line 1240
    :cond_0
    const/4 v2, 0x0

    #@a
    :try_start_1
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    #@c
    .line 1245
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
    .line 1246
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/String;

    #@1d
    .line 1247
    .local v0, "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    #@1e
    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    #@21
    .line 1245
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1249
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
    .line 1250
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/lang/String;

    #@35
    .line 1251
    .restart local v0    # "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    #@36
    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    #@39
    .line 1249
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 1255
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    monitor-exit v3

    #@40
    .line 1235
    return-void

    #@41
    .line 1236
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
    .line 841
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 842
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    #@6
    .line 843
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 844
    const-string/jumbo v0, "CameraManagerGlobal"

    #@d
    const-string/jumbo v2, "Camera service is unavailable"

    #@10
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 846
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0

    #@17
    .line 841
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
    .line 1177
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1178
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
    .line 1176
    return-void

    #@c
    .line 1177
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
    .line 1184
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1185
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1183
    return-void

    #@8
    .line 1184
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
    .line 1121
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1122
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    #@6
    .line 1124
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/Handler;

    #@e
    .line 1126
    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@10
    .line 1127
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    #@13
    .line 1131
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    #@15
    if-nez v1, :cond_1

    #@17
    .line 1132
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_1
    monitor-exit v2

    #@1b
    .line 1120
    return-void

    #@1c
    .line 1121
    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1150
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1151
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    #@6
    .line 1153
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/Handler;

    #@e
    .line 1155
    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    #@10
    .line 1156
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    #@13
    .line 1160
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    #@15
    if-nez v1, :cond_1

    #@17
    .line 1161
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_1
    monitor-exit v2

    #@1b
    .line 1149
    return-void

    #@1c
    .line 1150
    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 894
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 896
    if-nez p1, :cond_0

    #@5
    .line 897
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "cameraId was null"

    #@a
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 894
    :catchall_0
    move-exception v3

    #@f
    monitor-exit v4

    #@10
    throw v3

    #@11
    .line 900
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@14
    move-result-object v0

    #@15
    .line 901
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    #@17
    .line 902
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    #@19
    .line 903
    const-string/jumbo v5, "Camera service is currently unavailable"

    #@1c
    .line 902
    const/4 v6, 0x2

    #@1d
    invoke-direct {v3, v6, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@20
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 907
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    #@23
    invoke-interface {v0, p1, p2, v3}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    :goto_0
    monitor-exit v4

    #@27
    .line 893
    return-void

    #@28
    .line 910
    :catch_0
    move-exception v1

    #@29
    .line 911
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    #@2b
    .line 912
    const-string/jumbo v5, "Camera service is currently unavailable"

    #@2e
    .line 911
    const/4 v6, 0x2

    #@2f
    invoke-direct {v3, v6, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@32
    throw v3

    #@33
    .line 908
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@34
    .line 909
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    goto :goto_0
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    #@0
    .prologue
    .line 1144
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1145
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1143
    return-void

    #@a
    .line 1144
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
    .line 1167
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1168
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1166
    return-void

    #@a
    .line 1167
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
