.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

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
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    #@6
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@d
    .line 78
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v0

    #@10
    .line 79
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v0

    #@13
    .line 77
    return-void

    #@14
    .line 78
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 11
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
    .line 680
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    #@2
    if-nez v8, :cond_6

    #@4
    .line 681
    const/4 v7, 0x0

    #@5
    .line 682
    .local v7, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@8
    move-result-object v8

    #@9
    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@c
    move-result-object v0

    #@d
    .line 683
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    new-instance v1, Ljava/util/ArrayList;

    #@f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 686
    .local v1, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@14
    .line 687
    return-object v1

    #@15
    .line 691
    :cond_0
    const/4 v8, 0x1

    #@16
    :try_start_0
    invoke-interface {v0, v8}, Landroid/hardware/ICameraService;->getNumberOfCameras(I)I
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v7

    #@1a
    .line 699
    :goto_0
    const/4 v4, 0x0

    #@1b
    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_5

    #@1d
    .line 702
    const/4 v6, 0x0

    #@1e
    .line 704
    .local v6, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v0, v4}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@21
    move-result-object v5

    #@22
    .line 705
    .local v5, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@25
    move-result v8

    #@26
    if-nez v8, :cond_2

    #@28
    .line 706
    const/4 v6, 0x1

    #@29
    .line 725
    .end local v5    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_1
    :goto_2
    if-eqz v6, :cond_4

    #@2b
    .line 726
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 699
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_1

    #@35
    .line 694
    .end local v4    # "i":I
    .end local v6    # "isDeviceSupported":Z
    :catch_0
    move-exception v2

    #@36
    .line 696
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1

    #@37
    .line 692
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    #@38
    .line 693
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    #@3b
    goto :goto_0

    #@3c
    .line 708
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    .restart local v4    # "i":I
    .restart local v5    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v6    # "isDeviceSupported":Z
    :cond_2
    :try_start_2
    new-instance v8, Ljava/lang/AssertionError;

    #@3e
    const-string/jumbo v9, "Expected to get non-empty characteristics"

    #@41
    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@44
    throw v8
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    #@45
    .line 710
    .end local v5    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_2
    move-exception v3

    #@46
    .line 715
    .restart local v3    # "e":Landroid/os/ServiceSpecificException;
    iget v8, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    #@48
    const/4 v9, 0x4

    #@49
    if-ne v8, v9, :cond_3

    #@4b
    .line 716
    iget v8, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    #@4d
    const/4 v9, 0x3

    #@4e
    if-eq v8, v9, :cond_1

    #@50
    .line 717
    :cond_3
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    #@53
    goto :goto_2

    #@54
    .line 719
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v2

    #@55
    .line 721
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@58
    .line 722
    return-object v1

    #@59
    .line 728
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v8, "CameraManager"

    #@5c
    new-instance v9, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v10, "Error querying camera device "

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    const-string/jumbo v10, " for listing."

    #@6f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    goto :goto_3

    #@7b
    .line 732
    .end local v6    # "isDeviceSupported":Z
    :cond_5
    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    #@7d
    .line 734
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v7    # "numCameras":I
    :cond_6
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    #@7f
    return-object v8
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;
    .locals 18
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "uid"    # I
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
    move-result-object v6

    #@4
    .line 291
    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v7, 0x0

    #@5
    .line 293
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    #@7
    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v15

    #@a
    .line 295
    const/4 v5, 0x0

    #@b
    .line 298
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    #@d
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, p2

    #@11
    move-object/from16 v2, p3

    #@13
    invoke-direct {v8, v0, v1, v2, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    #@16
    .line 304
    .local v8, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v3

    #@1a
    .line 308
    .local v3, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result v12

    #@1e
    .line 315
    .local v12, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    #@21
    move-result v14

    #@22
    if-eqz v14, :cond_2

    #@24
    .line 317
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@27
    move-result-object v14

    #@28
    invoke-virtual {v14}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@2b
    move-result-object v4

    #@2c
    .line 318
    .local v4, "cameraService":Landroid/hardware/ICameraService;
    if-nez v4, :cond_0

    #@2e
    .line 319
    new-instance v14, Landroid/os/ServiceSpecificException;

    #@30
    .line 321
    const-string/jumbo v16, "Camera service is currently unavailable"

    #@33
    .line 320
    const/16 v17, 0x4

    #@35
    .line 319
    move/from16 v0, v17

    #@37
    move-object/from16 v1, v16

    #@39
    invoke-direct {v14, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@3c
    throw v14
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    .line 330
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v10

    #@3e
    .line 331
    .local v10, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    #@40
    const/16 v16, 0x9

    #@42
    move/from16 v0, v16

    #@44
    if-ne v14, v0, :cond_3

    #@46
    .line 332
    new-instance v14, Ljava/lang/AssertionError;

    #@48
    const-string/jumbo v16, "Should\'ve gone down the shim path"

    #@4b
    move-object/from16 v0, v16

    #@4d
    invoke-direct {v14, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@50
    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    .line 293
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v10    # "e":Landroid/os/ServiceSpecificException;
    .end local v12    # "id":I
    :catchall_0
    move-exception v14

    #@52
    monitor-exit v15

    #@53
    throw v14

    #@54
    .line 309
    .restart local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catch_1
    move-exception v11

    #@55
    .line 310
    .local v11, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@57
    new-instance v16, Ljava/lang/StringBuilder;

    #@59
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v17, "Expected cameraId to be numeric, but it was: "

    #@5f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v16

    #@63
    move-object/from16 v0, v16

    #@65
    move-object/from16 v1, p1

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v16

    #@6b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v16

    #@6f
    move-object/from16 v0, v16

    #@71
    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@75
    .line 324
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v12    # "id":I
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    #@77
    iget-object v14, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    #@79
    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7c
    move-result-object v14

    #@7d
    .line 323
    move/from16 v0, p4

    #@7f
    invoke-interface {v4, v3, v12, v14, v0}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@82
    move-result-object v5

    #@83
    .line 367
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v8, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@86
    .line 368
    move-object v7, v8

    #@87
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    monitor-exit v15

    #@88
    .line 371
    return-object v8

    #@89
    .line 327
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_7
    const-string/jumbo v14, "CameraManager"

    #@8c
    const-string/jumbo v16, "Using legacy camera HAL."

    #@8f
    move-object/from16 v0, v16

    #@91
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 328
    invoke-static {v3, v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@97
    move-result-object v5

    #@98
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    #@99
    .line 353
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_2
    move-exception v9

    #@9a
    .line 355
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_8
    new-instance v13, Landroid/os/ServiceSpecificException;

    #@9c
    .line 357
    const-string/jumbo v14, "Camera service is currently unavailable"

    #@9f
    .line 356
    const/16 v16, 0x4

    #@a1
    .line 355
    move/from16 v0, v16

    #@a3
    invoke-direct {v13, v0, v14}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@a6
    .line 358
    .local v13, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v8, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    #@a9
    .line 359
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    #@ac
    goto :goto_0

    #@ad
    .line 333
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v10    # "e":Landroid/os/ServiceSpecificException;
    :cond_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    #@af
    const/16 v16, 0x7

    #@b1
    move/from16 v0, v16

    #@b3
    if-eq v14, v0, :cond_4

    #@b5
    .line 334
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    #@b7
    const/16 v16, 0x8

    #@b9
    move/from16 v0, v16

    #@bb
    if-ne v14, v0, :cond_6

    #@bd
    .line 341
    :cond_4
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    #@c0
    .line 343
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    #@c2
    const/16 v16, 0x6

    #@c4
    move/from16 v0, v16

    #@c6
    if-eq v14, v0, :cond_5

    #@c8
    .line 344
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    #@ca
    const/16 v16, 0x4

    #@cc
    move/from16 v0, v16

    #@ce
    if-ne v14, v0, :cond_7

    #@d0
    .line 347
    :cond_5
    :goto_1
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    #@d3
    goto :goto_0

    #@d4
    .line 335
    :cond_6
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    #@d6
    const/16 v16, 0x6

    #@d8
    move/from16 v0, v16

    #@da
    if-eq v14, v0, :cond_4

    #@dc
    .line 336
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    #@de
    const/16 v16, 0x4

    #@e0
    move/from16 v0, v16

    #@e2
    if-eq v14, v0, :cond_4

    #@e4
    .line 337
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    #@e6
    const/16 v16, 0xa

    #@e8
    move/from16 v0, v16

    #@ea
    if-eq v14, v0, :cond_4

    #@ec
    .line 351
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    #@ef
    goto :goto_0

    #@f0
    .line 345
    :cond_7
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@f2
    const/16 v16, 0x7

    #@f4
    move/from16 v0, v16

    #@f6
    if-ne v14, v0, :cond_1

    #@f8
    goto :goto_1
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 744
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 755
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4
    move-result v2

    #@5
    .line 766
    .local v2, "id":I
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@c
    move-result-object v0

    #@d
    .line 768
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    #@f
    return v4

    #@10
    .line 770
    :cond_0
    invoke-interface {v0, v2, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v3

    #@14
    return v3

    #@15
    .line 771
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    #@16
    .line 774
    .local v1, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 631
    instance-of v3, p0, Landroid/os/ServiceSpecificException;

    #@2
    if-eqz v3, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 632
    check-cast v0, Landroid/os/ServiceSpecificException;

    #@7
    .line 633
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v2, 0x3

    #@8
    .line 634
    .local v2, "reason":I
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    #@a
    packed-switch v3, :pswitch_data_0

    #@d
    .line 658
    :pswitch_0
    const/4 v2, 0x3

    #@e
    .line 660
    :goto_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    #@10
    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-direct {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@17
    throw v3

    #@18
    .line 636
    :pswitch_1
    const/4 v2, 0x2

    #@19
    .line 637
    goto :goto_0

    #@1a
    .line 639
    :pswitch_2
    const/4 v2, 0x1

    #@1b
    .line 640
    goto :goto_0

    #@1c
    .line 642
    :pswitch_3
    const/4 v2, 0x4

    #@1d
    .line 643
    goto :goto_0

    #@1e
    .line 645
    :pswitch_4
    const/4 v2, 0x5

    #@1f
    .line 646
    goto :goto_0

    #@20
    .line 648
    :pswitch_5
    const/16 v2, 0x3e8

    #@22
    .line 649
    goto :goto_0

    #@23
    .line 652
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@25
    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v3

    #@2d
    .line 654
    :pswitch_7
    new-instance v3, Ljava/lang/SecurityException;

    #@2f
    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@36
    throw v3

    #@37
    .line 661
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "reason":I
    :cond_0
    instance-of v3, p0, Landroid/os/DeadObjectException;

    #@39
    if-eqz v3, :cond_1

    #@3b
    .line 662
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    #@3d
    .line 663
    const-string/jumbo v4, "Camera service has died unexpectedly"

    #@40
    .line 662
    const/4 v5, 0x2

    #@41
    invoke-direct {v3, v5, v4, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v3

    #@45
    .line 665
    :cond_1
    instance-of v3, p0, Landroid/os/RemoteException;

    #@47
    if-eqz v3, :cond_2

    #@49
    .line 666
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@4b
    const-string/jumbo v4, "An unknown RemoteException was thrown which should never happen."

    #@4e
    invoke-direct {v3, v4, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@51
    throw v3

    #@52
    .line 668
    :cond_2
    instance-of v3, p0, Ljava/lang/RuntimeException;

    #@54
    if-eqz v3, :cond_3

    #@56
    move-object v1, p0

    #@57
    .line 669
    check-cast v1, Ljava/lang/RuntimeException;

    #@59
    .line 670
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    #@5a
    .line 630
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void

    #@5b
    .line 634
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
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
    .line 218
    const/4 v1, 0x0

    #@1
    .line 220
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v10, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    .line 221
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
    .line 222
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v11, "Camera id %s does not match any currently connected camera device"

    #@13
    const/4 v12, 0x1

    #@14
    new-array v12, v12, [Ljava/lang/Object;

    #@16
    .line 223
    const/4 v13, 0x0

    #@17
    aput-object p1, v12, v13

    #@19
    .line 222
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
    .line 220
    :catchall_0
    move-exception v9

    #@22
    monitor-exit v10

    #@23
    throw v9

    #@24
    .line 226
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@27
    move-result v5

    #@28
    .line 233
    .local v5, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@2b
    move-result-object v9

    #@2c
    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    #@2f
    move-result-object v0

    #@30
    .line 234
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    #@32
    .line 235
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    #@34
    .line 236
    const-string/jumbo v11, "Camera service is currently unavailable"

    #@37
    .line 235
    const/4 v12, 0x2

    #@38
    invoke-direct {v9, v12, v11}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@3b
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 239
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    #@3f
    move-result v9

    #@40
    if-nez v9, :cond_2

    #@42
    .line 242
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    .line 244
    .local v8, "parameters":Ljava/lang/String;
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    #@49
    move-result-object v6

    #@4a
    .line 246
    .local v6, "info":Landroid/hardware/CameraInfo;
    invoke-static {v8, v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    move-result-object v1

    #@4e
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "info":Landroid/hardware/CameraInfo;
    .end local v8    # "parameters":Ljava/lang/String;
    :goto_0
    monitor-exit v10

    #@4f
    .line 261
    return-object v1

    #@50
    .line 249
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2
    :try_start_3
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@53
    move-result-object v7

    #@54
    .line 251
    .local v7, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    #@56
    invoke-direct {v2, v7}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@59
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v1, v2

    #@5a
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    #@5b
    .line 255
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v3

    #@5c
    .line 257
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    #@5e
    .line 258
    const-string/jumbo v11, "Camera service is currently unavailable"

    #@61
    .line 257
    const/4 v12, 0x2

    #@62
    invoke-direct {v9, v12, v11, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@65
    throw v9

    #@66
    .line 253
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    #@67
    .line 254
    .local v4, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6a
    goto :goto_0
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
    .line 95
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 98
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
    .line 95
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 1
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
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V

    #@4
    .line 439
    return-void
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 464
    if-nez p1, :cond_0

    #@2
    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "cameraId was null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 466
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "callback was null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 468
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 469
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 470
    new-instance p3, Landroid/os/Handler;

    #@20
    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    #@23
    .line 477
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;

    #@26
    .line 462
    return-void

    #@27
    .line 472
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    .line 473
    const-string/jumbo v1, "Handler argument is null, but no looper exists in the calling thread"

    #@2c
    .line 472
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
    .line 131
    if-nez p2, :cond_1

    #@2
    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    .line 133
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@8
    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    .line 135
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    #@d
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 137
    :cond_0
    new-instance p2, Landroid/os/Handler;

    #@13
    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@16
    .line 140
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    #@1d
    .line 130
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 178
    if-nez p2, :cond_1

    #@2
    .line 179
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    .line 180
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@8
    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    .line 182
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    #@d
    .line 181
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 184
    :cond_0
    new-instance p2, Landroid/os/Handler;

    #@13
    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@16
    .line 186
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    #@1d
    .line 177
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
    .line 521
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    #@7
    .line 520
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    #@0
    .prologue
    .line 152
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    #@7
    .line 151
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    #@0
    .prologue
    .line 198
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    #@7
    .line 197
    return-void
.end method
