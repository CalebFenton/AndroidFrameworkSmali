.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    #@6
    .line 70
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@d
    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v0

    #@10
    .line 77
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v0

    #@13
    .line 75
    return-void

    #@14
    .line 76
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 607
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    #@2
    if-nez v9, :cond_5

    #@4
    .line 608
    const/4 v8, 0x0

    #@5
    .line 609
    .local v8, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@8
    move-result-object v9

    #@9
    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@c
    move-result-object v0

    #@d
    .line 610
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    new-instance v1, Ljava/util/ArrayList;

    #@f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 613
    .local v1, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@14
    .line 614
    return-object v1

    #@15
    .line 618
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/ICameraService;->getNumberOfCameras()I
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v8

    #@19
    .line 626
    new-instance v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@1b
    invoke-direct {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@1e
    .line 627
    .local v6, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v5, 0x0

    #@1f
    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_4

    #@21
    .line 630
    const/4 v7, 0x0

    #@22
    .line 632
    .local v7, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v0, v5, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    #@25
    .line 633
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@28
    move-result v9

    #@29
    if-nez v9, :cond_2

    #@2b
    .line 634
    const/4 v7, 0x1

    #@2c
    .line 654
    :cond_1
    :goto_1
    if-eqz v7, :cond_3

    #@2e
    .line 655
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 627
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 621
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v7    # "isDeviceSupported":Z
    :catch_0
    move-exception v3

    #@39
    .line 623
    .local v3, "e":Landroid/os/RemoteException;
    return-object v1

    #@3a
    .line 619
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@3b
    .line 620
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@3e
    move-result-object v9

    #@3f
    throw v9

    #@40
    .line 636
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .restart local v5    # "i":I
    .restart local v6    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v7    # "isDeviceSupported":Z
    :cond_2
    :try_start_2
    new-instance v9, Ljava/lang/AssertionError;

    #@42
    const-string/jumbo v10, "Expected to get non-empty characteristics"

    #@45
    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@48
    throw v9
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    #@49
    .line 638
    :catch_2
    move-exception v4

    #@4a
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    #@4b
    .line 648
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    #@4c
    .line 650
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@4f
    .line 651
    return-object v1

    #@50
    .line 641
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v2

    #@51
    .line 645
    .restart local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@54
    move-result v9

    #@55
    const/4 v10, 0x2

    #@56
    if-eq v9, v10, :cond_1

    #@58
    .line 646
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@5b
    move-result-object v9

    #@5c
    throw v9

    #@5d
    .line 657
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_3
    const-string/jumbo v9, "CameraManager"

    #@60
    new-instance v10, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v11, "Error querying camera device "

    #@68
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v10

    #@6c
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v10

    #@70
    const-string/jumbo v11, " for listing."

    #@73
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v10

    #@77
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v10

    #@7b
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    goto :goto_2

    #@7f
    .line 661
    .end local v7    # "isDeviceSupported":Z
    :cond_4
    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    #@81
    .line 663
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v8    # "numCameras":I
    :cond_5
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    #@83
    return-object v9
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice;
    .locals 19
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    #@3
    move-result-object v11

    #@4
    .line 291
    .local v11, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v12, 0x0

    #@5
    .line 294
    .local v12, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@9
    move-object/from16 v17, v0

    #@b
    monitor-enter v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    #@c
    .line 296
    const/4 v9, 0x0

    #@d
    .line 299
    .local v9, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_1
    new-instance v13, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@f
    move-object/from16 v0, p1

    #@11
    move-object/from16 v1, p2

    #@13
    move-object/from16 v2, p3

    #@15
    invoke-direct {v13, v0, v1, v2, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    #@18
    .line 305
    .local v13, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    new-instance v8, Landroid/hardware/camera2/utils/BinderHolder;

    #@1a
    invoke-direct {v8}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    #@1d
    .line 307
    .local v8, "holder":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    #@20
    move-result-object v4

    #@21
    .line 308
    .local v4, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    move-result v5

    #@25
    .line 310
    .local v5, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 312
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@32
    move-result-object v3

    #@33
    .line 313
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    if-nez v3, :cond_0

    #@35
    .line 314
    new-instance v6, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@37
    .line 316
    const-string/jumbo v7, "Camera service is currently unavailable"

    #@3a
    .line 315
    const/16 v18, 0x2

    #@3c
    .line 314
    move/from16 v0, v18

    #@3e
    invoke-direct {v6, v0, v7}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    #@41
    throw v6
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    .line 326
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v14

    #@43
    .line 327
    .local v14, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@46
    move-result v6

    #@47
    const/16 v7, 0x3e8

    #@49
    if-ne v6, v7, :cond_3

    #@4b
    .line 328
    new-instance v6, Ljava/lang/AssertionError;

    #@4d
    const-string/jumbo v7, "Should\'ve gone down the shim path"

    #@50
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@53
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    .line 294
    .end local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "id":I
    .end local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_0
    move-exception v6

    #@55
    :try_start_4
    monitor-exit v17

    #@56
    throw v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    #@57
    .line 365
    .end local v12    # "device":Landroid/hardware/camera2/CameraDevice;
    :catch_1
    move-exception v16

    #@58
    .line 366
    .local v16, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5a
    new-instance v7, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v17, "Expected cameraId to be numeric, but it was: "

    #@62
    move-object/from16 v0, v17

    #@64
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v6

    #@76
    .line 319
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "id":I
    .restart local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .restart local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v12    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    #@78
    iget-object v6, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    #@7a
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    const/4 v7, -0x1

    #@7f
    .line 318
    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    #@82
    .line 320
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/BinderHolder;->getBinder()Landroid/os/IBinder;

    #@85
    move-result-object v6

    #@86
    invoke-static {v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_5
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@89
    move-result-object v9

    #@8a
    .line 361
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v13, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@8d
    .line 362
    move-object v12, v13

    #@8e
    .local v12, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_7
    monitor-exit v17
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    #@8f
    .line 371
    return-object v12

    #@90
    .line 323
    .restart local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v12, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_8
    const-string/jumbo v6, "CameraManager"

    #@93
    const-string/jumbo v7, "Using legacy camera HAL."

    #@96
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 324
    invoke-static {v4, v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_8
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@9c
    move-result-object v9

    #@9d
    .local v9, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    #@9e
    .line 349
    .local v9, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_2
    move-exception v15

    #@9f
    .line 351
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_9
    new-instance v10, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@a1
    .line 353
    const-string/jumbo v6, "Camera service is currently unavailable"

    #@a4
    .line 352
    const/4 v7, 0x2

    #@a5
    .line 351
    invoke-direct {v10, v7, v6, v15}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@a8
    .line 354
    .local v10, "ce":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v13, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V

    #@ab
    .line 355
    invoke-virtual {v10}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@ae
    move-result-object v6

    #@af
    throw v6

    #@b0
    .line 329
    .end local v10    # "ce":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_3
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@b3
    move-result v6

    #@b4
    const/4 v7, 0x4

    #@b5
    if-eq v6, v7, :cond_4

    #@b7
    .line 330
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@ba
    move-result v6

    #@bb
    const/4 v7, 0x5

    #@bc
    if-ne v6, v7, :cond_6

    #@be
    .line 337
    :cond_4
    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V

    #@c1
    .line 339
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@c4
    move-result v6

    #@c5
    const/4 v7, 0x1

    #@c6
    if-eq v6, v7, :cond_5

    #@c8
    .line 340
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@cb
    move-result v6

    #@cc
    const/4 v7, 0x2

    #@cd
    if-ne v6, v7, :cond_7

    #@cf
    .line 343
    :cond_5
    :goto_1
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@d2
    move-result-object v6

    #@d3
    throw v6

    #@d4
    .line 331
    :cond_6
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@d7
    move-result v6

    #@d8
    const/4 v7, 0x1

    #@d9
    if-eq v6, v7, :cond_4

    #@db
    .line 332
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@de
    move-result v6

    #@df
    const/4 v7, 0x2

    #@e0
    if-eq v6, v7, :cond_4

    #@e2
    .line 333
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@e5
    move-result v6

    #@e6
    const/4 v7, 0x3

    #@e7
    if-eq v6, v7, :cond_4

    #@e9
    .line 347
    throw v14

    #@ea
    .line 341
    :cond_7
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@ed
    move-result v6

    #@ee
    const/4 v7, 0x4

    #@ef
    if-ne v6, v7, :cond_1

    #@f1
    goto :goto_1

    #@f2
    .line 368
    .end local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "id":I
    .end local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v12    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_3
    move-exception v14

    #@f3
    .line 369
    .restart local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@f6
    move-result-object v6

    #@f7
    throw v6
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 673
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 684
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4
    move-result v3

    #@5
    .line 695
    .local v3, "id":I
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@c
    move-result-object v0

    #@d
    .line 697
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    #@f
    return v8

    #@10
    .line 699
    :cond_0
    invoke-interface {v0, v3, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)I

    #@13
    move-result v4

    #@14
    .line 701
    .local v4, "res":I
    if-eqz v4, :cond_1

    #@16
    .line 702
    new-instance v5, Ljava/lang/AssertionError;

    #@18
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v7, "Unexpected value "

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2f
    throw v5
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@30
    .line 705
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v4    # "res":I
    :catch_0
    move-exception v1

    #@31
    .line 706
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    #@34
    move-result v5

    #@35
    const/16 v6, 0x3e8

    #@37
    if-eq v5, v6, :cond_2

    #@39
    .line 707
    throw v1

    #@3a
    .line 704
    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v4    # "res":I
    :cond_1
    const/4 v5, 0x1

    #@3b
    return v5

    #@3c
    .line 710
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v4    # "res":I
    :catch_1
    move-exception v2

    #@3d
    .line 713
    :cond_2
    return v8
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    const/4 v1, 0x0

    #@1
    .line 218
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v10, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    .line 219
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    #@7
    move-result-object v9

    #@8
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v9

    #@c
    if-nez v9, :cond_0

    #@e
    .line 220
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v11, "Camera id %s does not match any currently connected camera device"

    #@13
    const/4 v12, 0x1

    #@14
    new-array v12, v12, [Ljava/lang/Object;

    #@16
    .line 221
    const/4 v13, 0x0

    #@17
    aput-object p1, v12, v13

    #@19
    .line 220
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 218
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catchall_0
    move-exception v9

    #@22
    monitor-exit v10

    #@23
    throw v9

    #@24
    .line 224
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@27
    move-result-object v9

    #@28
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v4

    #@2c
    .line 231
    .local v4, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@33
    move-result-object v0

    #@34
    .line 232
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    #@36
    .line 233
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    #@38
    .line 234
    const-string/jumbo v11, "Camera service is currently unavailable"

    #@3b
    .line 233
    const/4 v12, 0x2

    #@3c
    invoke-direct {v9, v12, v11}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@3f
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 237
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    #@43
    move-result v9

    #@44
    if-nez v9, :cond_2

    #@46
    .line 240
    const/4 v9, 0x1

    #@47
    new-array v7, v9, [Ljava/lang/String;

    #@49
    .line 242
    .local v7, "outParameters":[Ljava/lang/String;
    invoke-interface {v0, v4, v7}, Landroid/hardware/ICameraService;->getLegacyParameters(I[Ljava/lang/String;)I

    #@4c
    .line 243
    const/4 v9, 0x0

    #@4d
    aget-object v8, v7, v9

    #@4f
    .line 245
    .local v8, "parameters":Ljava/lang/String;
    new-instance v5, Landroid/hardware/CameraInfo;

    #@51
    invoke-direct {v5}, Landroid/hardware/CameraInfo;-><init>()V

    #@54
    .line 246
    .local v5, "info":Landroid/hardware/CameraInfo;
    invoke-interface {v0, v4, v5}, Landroid/hardware/ICameraService;->getCameraInfo(ILandroid/hardware/CameraInfo;)I

    #@57
    .line 248
    invoke-static {v8, v5}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    move-result-object v1

    #@5b
    .end local v5    # "info":Landroid/hardware/CameraInfo;
    .end local v7    # "outParameters":[Ljava/lang/String;
    .end local v8    # "parameters":Ljava/lang/String;
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_0
    monitor-exit v10

    #@5c
    .line 265
    return-object v1

    #@5d
    .line 251
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2
    :try_start_3
    new-instance v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@5f
    invoke-direct {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@62
    .line 253
    .local v6, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {v0, v4, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    #@65
    .line 255
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics;

    #@67
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-direct {v1, v6}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    #@6b
    .line 259
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_0
    move-exception v3

    #@6c
    .line 261
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    #@6e
    .line 262
    const-string/jumbo v11, "Camera service is currently unavailable"

    #@71
    .line 261
    const/4 v12, 0x2

    #@72
    invoke-direct {v9, v12, v11, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@75
    throw v9

    #@76
    .line 257
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@77
    .line 258
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    #@7a
    move-result-object v9

    #@7b
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 96
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    #@6
    move-result-object v0

    #@7
    const/4 v2, 0x0

    #@8
    new-array v2, v2, [Ljava/lang/String;

    #@a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 93
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 441
    if-nez p1, :cond_0

    #@2
    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "cameraId was null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 443
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "callback was null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 445
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 446
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 447
    new-instance p3, Landroid/os/Handler;

    #@20
    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    #@23
    .line 454
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice;

    #@26
    .line 439
    return-void

    #@27
    .line 449
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    .line 450
    const-string/jumbo v1, "Handler argument is null, but no looper exists in the calling thread"

    #@2c
    .line 449
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 129
    if-nez p2, :cond_1

    #@2
    .line 130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    .line 131
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@8
    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    .line 133
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    #@d
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 135
    :cond_0
    new-instance p2, Landroid/os/Handler;

    #@13
    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@16
    .line 138
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    #@1d
    .line 128
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 176
    if-nez p2, :cond_1

    #@2
    .line 177
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    .line 178
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@8
    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    .line 180
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    #@d
    .line 179
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 182
    :cond_0
    new-instance p2, Landroid/os/Handler;

    #@13
    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@16
    .line 184
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    #@1d
    .line 175
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 498
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    #@7
    .line 497
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    #@0
    .prologue
    .line 150
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    #@7
    .line 149
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    #@0
    .prologue
    .line 196
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    #@7
    .line 195
    return-void
.end method
