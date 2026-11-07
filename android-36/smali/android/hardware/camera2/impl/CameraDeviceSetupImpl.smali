.class public Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
.super Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
.source "CameraDeviceSetupImpl.java"


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mTargetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 54
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    .line 56
    return-void
.end method

.method public static blacklist isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 4
    .param p0, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 208
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SESSION_CONFIGURATION_QUERY_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 210
    .local v0, "queryVersion":Ljava/lang/Integer;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x22

    if-le v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method


# virtual methods
.method public whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 11
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 62
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 67
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_57

    move-object v2, v0

    .line 68
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v2, :cond_46

    .line 74
    :try_start_14
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 78
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v4

    .line 75
    invoke-interface {v2, v0, p1, v3, v4}, Landroid/hardware/ICameraService;->createDefaultRequest(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    move-object v4, v0

    .line 80
    .local v4, "defaultRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->disableZslIfNeeded(Landroid/hardware/camera2/impl/CameraMetadataNative;II)V

    .line 83
    new-instance v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILjava/lang/String;Ljava/util/Set;)V
    :try_end_38
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_38} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_38} :catch_3a
    .catchall {:try_start_14 .. :try_end_38} :catchall_57

    :try_start_38
    monitor-exit v1

    return-object v3

    .line 89
    .end local v4    # "defaultRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_3a
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .end local p1    # "templateType":I
    throw v3

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .restart local p1    # "templateType":I
    :catch_40
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .end local p1    # "templateType":I
    throw v3

    .line 69
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .restart local p1    # "templateType":I
    :cond_46
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const-string v3, "Camera service is currently unavailable."

    const/4 v4, 0x2

    invoke-direct {v0, v4, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .end local p1    # "templateType":I
    throw v0

    .line 64
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .restart local p1    # "templateType":I
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No cameras available on device"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .end local p1    # "templateType":I
    throw v0

    .line 92
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .restart local p1    # "templateType":I
    :catchall_57
    move-exception v0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 186
    instance-of v0, p1, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    .line 187
    .local v0, "other":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 189
    .end local v0    # "other":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSessionCharacteristics(Landroid/hardware/camera2/params/SessionConfiguration;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 12
    .param p1, "sessionConfig"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 128
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_71

    .line 134
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_7a

    move-object v3, v0

    .line 135
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v3, :cond_68

    .line 141
    :try_start_15
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 147
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v9
    :try_end_2d
    .catch Landroid/os/ServiceSpecificException; {:try_start_15 .. :try_end_2d} :catch_4a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2d} :catch_42
    .catchall {:try_start_15 .. :try_end_2d} :catchall_7a

    .line 142
    move-object v7, p1

    .end local p1    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .local v7, "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :try_start_2e
    invoke-interface/range {v3 .. v9}, Landroid/hardware/ICameraService;->getSessionCharacteristics(Ljava/lang/String;IILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 150
    .local p1, "metadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v3}, Landroid/hardware/camera2/CameraManager;->prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0
    :try_end_3a
    .catch Landroid/os/ServiceSpecificException; {:try_start_2e .. :try_end_3a} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3a} :catch_3c
    .catchall {:try_start_2e .. :try_end_3a} :catchall_7f

    :try_start_3a
    monitor-exit v1

    return-object v0

    .line 161
    .end local p1    # "metadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_3c
    move-exception v0

    move-object p1, v0

    goto :goto_45

    .line 152
    :catch_3f
    move-exception v0

    move-object p1, v0

    goto :goto_4d

    .line 161
    .end local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .local p1, "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :catch_42
    move-exception v0

    move-object v7, p1

    move-object p1, v0

    .line 162
    .restart local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_45
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v0

    .end local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw v0

    .line 152
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .local p1, "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :catch_4a
    move-exception v0

    move-object v7, p1

    move-object p1, v0

    .line 153
    .restart local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_4d
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    sparse-switch v0, :sswitch_data_82

    .line 159
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v0

    goto :goto_67

    .line 155
    :sswitch_57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session Characteristics Query not supported by device."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw v0

    .line 158
    .restart local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    :sswitch_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Session Configuration"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw v0

    .line 159
    :goto_67
    throw v0

    .line 136
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .local p1, "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :cond_68
    move-object v7, p1

    .end local p1    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .restart local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently unavailable"

    invoke-direct {p1, v2, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw p1

    .line 130
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .restart local p1    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :cond_71
    move-object v7, p1

    .end local p1    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .restart local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently disabled"

    invoke-direct {p1, v2, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw p1

    .line 164
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .restart local p1    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :catchall_7a
    move-exception v0

    move-object v7, p1

    move-object p1, v0

    .end local p1    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    .restart local v7    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :goto_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_3a .. :try_end_7e} :catchall_7f

    throw p1

    :catchall_7f
    move-exception v0

    move-object p1, v0

    goto :goto_7d

    :sswitch_data_82
    .sparse-switch
        0x3 -> :sswitch_5f
        0xa -> :sswitch_57
    .end sparse-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .registers 10
    .param p1, "config"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 98
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->isCameraServiceDisabled()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 103
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_56

    move-object v2, v0

    .line 104
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v2, :cond_43

    .line 110
    :try_start_14
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mTargetSdkVersion:I

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 114
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v7
    :try_end_26
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_26} :catch_3b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_26} :catch_33
    .catchall {:try_start_14 .. :try_end_26} :catchall_56

    .line 110
    move-object v5, p1

    .end local p1    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .local v5, "config":Landroid/hardware/camera2/params/SessionConfiguration;
    :try_start_27
    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->isSessionConfigurationWithParametersSupported(Ljava/lang/String;ILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Z

    move-result p1
    :try_end_2b
    .catch Landroid/os/ServiceSpecificException; {:try_start_27 .. :try_end_2b} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2b} :catch_2d
    .catchall {:try_start_27 .. :try_end_2b} :catchall_5b

    :try_start_2b
    monitor-exit v1

    return p1

    .line 118
    :catch_2d
    move-exception v0

    move-object p1, v0

    goto :goto_36

    .line 116
    :catch_30
    move-exception v0

    move-object p1, v0

    goto :goto_3e

    .line 118
    .end local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .restart local p1    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    :catch_33
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 119
    .restart local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_36
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/RemoteException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v0

    .end local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw v0

    .line 116
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .local p1, "config":Landroid/hardware/camera2/params/SessionConfiguration;
    :catch_3b
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 117
    .restart local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_3e
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v0

    .end local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw v0

    .line 105
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .local p1, "config":Landroid/hardware/camera2/params/SessionConfiguration;
    :cond_43
    move-object v5, p1

    .end local p1    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .restart local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently unavailable."

    const/4 v3, 0x2

    invoke-direct {p1, v3, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw p1

    .line 100
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .restart local p1    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    :cond_4d
    move-object v5, p1

    .end local p1    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .restart local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No cameras available on device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    throw p1

    .line 121
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;
    .restart local p1    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    :catchall_56
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .end local p1    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    .restart local v5    # "config":Landroid/hardware/camera2/params/SessionConfiguration;
    :goto_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_2b .. :try_end_5a} :catchall_5b

    throw p1

    :catchall_5b
    move-exception v0

    move-object p1, v0

    goto :goto_59
.end method

.method public whitelist openCamera(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    .line 171
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraDeviceSetup(cameraId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
