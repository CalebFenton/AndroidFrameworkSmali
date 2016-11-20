.class public Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;,
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final OPEN_CAMERA_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CameraDeviceUserShim"


# instance fields
.field private final mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

.field private final mConfigureLock:Ljava/lang/Object;

.field private mConfiguring:Z

.field private final mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

.field private mSurfaceIdCounter:I

.field private final mSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "legacyCamera"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "cameraInit"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    .param p5, "cameraCallbacks"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@b
    .line 84
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@d
    .line 85
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@f
    .line 86
    new-instance v0, Landroid/util/SparseArray;

    #@11
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@14
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@16
    .line 87
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@18
    .line 88
    iput-object p4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    #@1a
    .line 89
    iput-object p5, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@1c
    .line 91
    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    #@1e
    .line 83
    return-void
.end method

.method public static connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    .locals 12
    .param p0, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p1, "cameraId"    # I

    #@0
    .prologue
    .line 354
    new-instance v4, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    #@2
    invoke-direct {v4, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;-><init>(I)V

    #@5
    .line 356
    .local v4, "init":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    new-instance v5, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@7
    invoke-direct {v5, p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;-><init>(Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    #@a
    .line 359
    .local v5, "threadCallbacks":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
    const/16 v0, 0x1388

    #@c
    invoke-virtual {v4, v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->waitForOpen(I)I

    #@f
    move-result v8

    #@10
    .line 360
    .local v8, "initErrors":I
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->getCamera()Landroid/hardware/Camera;

    #@13
    move-result-object v9

    #@14
    .line 363
    .local v9, "legacyCamera":Landroid/hardware/Camera;
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnServiceError(I)V

    #@17
    .line 366
    invoke-virtual {v9}, Landroid/hardware/Camera;->disableShutterSound()Z

    #@1a
    .line 368
    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    #@1c
    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    #@1f
    .line 369
    .local v7, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    #@22
    .line 371
    const/4 v10, 0x0

    #@23
    .line 373
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v10

    #@27
    .line 380
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    invoke-static {v10, v7}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    #@2a
    move-result-object v3

    #@2b
    .line 381
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2d
    invoke-direct {v2, p1, v9, v3, v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    #@30
    .line 383
    .local v2, "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    #@32
    move v1, p1

    #@33
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;-><init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V

    #@36
    return-object v0

    #@37
    .line 374
    .end local v2    # "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v6

    #@38
    .line 375
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v0, Landroid/os/ServiceSpecificException;

    #@3a
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v11, "Unable to get initial parameters: "

    #@42
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v11

    #@4a
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 375
    const/16 v11, 0xa

    #@54
    invoke-direct {v0, v11, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@57
    throw v0
.end method

.method private static translateErrorsFromCamera1(I)I
    .locals 1
    .param p0, "errorCode"    # I

    #@0
    .prologue
    .line 95
    sget v0, Landroid/system/OsConstants;->EACCES:I

    #@2
    neg-int v0, v0

    #@3
    if-ne p0, v0, :cond_0

    #@5
    .line 96
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 99
    :cond_0
    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 701
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public beginConfigure()V
    .locals 4

    #@0
    .prologue
    .line 472
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 473
    const-string/jumbo v0, "Cannot begin configure, device has been closed."

    #@b
    .line 474
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 475
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 478
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1a
    monitor-enter v2

    #@1b
    .line 479
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 480
    const-string/jumbo v0, "Cannot begin configure, configuration change already in progress."

    #@22
    .line 481
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 482
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@2a
    const/16 v3, 0xa

    #@2c
    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 478
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1

    #@33
    .line 484
    :cond_1
    const/4 v1, 0x1

    #@34
    :try_start_1
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v2

    #@37
    .line 468
    return-void
.end method

.method public cancelRequest(I)J
    .locals 4
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 451
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 452
    const-string/jumbo v0, "Cannot cancel request, device has been closed."

    #@b
    .line 453
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 454
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 457
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1a
    monitor-enter v2

    #@1b
    .line 458
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 459
    const-string/jumbo v0, "Cannot cancel request, configuration change in progress."

    #@22
    .line 460
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 461
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@2a
    const/16 v3, 0xa

    #@2c
    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 457
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1

    #@33
    :cond_1
    monitor-exit v2

    #@34
    .line 464
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@36
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->cancelRequest(I)J

    #@39
    move-result-wide v2

    #@3a
    return-wide v2
.end method

.method public createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 5
    .param p1, "templateId"    # I

    #@0
    .prologue
    .line 595
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 596
    const-string/jumbo v1, "Cannot create default request, device has been closed."

    #@b
    .line 597
    .local v1, "err":Ljava/lang/String;
    const-string/jumbo v3, "CameraDeviceUserShim"

    #@e
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 598
    new-instance v3, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v4, 0x4

    #@14
    invoke-direct {v3, v4, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 604
    .end local v1    # "err":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@1a
    invoke-static {v3, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v2

    #@1e
    .line 611
    .local v2, "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    return-object v2

    #@1f
    .line 605
    .end local v2    # "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_0
    move-exception v0

    #@20
    .line 606
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "createDefaultRequest - invalid templateId specified"

    #@23
    .line 607
    .restart local v1    # "err":Ljava/lang/String;
    const-string/jumbo v3, "CameraDeviceUserShim"

    #@26
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 608
    new-instance v3, Landroid/os/ServiceSpecificException;

    #@2b
    const/4 v4, 0x3

    #@2c
    invoke-direct {v3, v4, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v3
.end method

.method public createInputStream(III)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    #@0
    .prologue
    .line 578
    const-string/jumbo v0, "Creating input stream is not supported on legacy devices"

    #@3
    .line 579
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 580
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@b
    const/16 v2, 0xa

    #@d
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@10
    throw v1
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 5
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;

    #@0
    .prologue
    .line 546
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 547
    const-string/jumbo v0, "Cannot create stream, device has been closed."

    #@b
    .line 548
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@e
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 549
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v3, 0x4

    #@14
    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 552
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 553
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 554
    const-string/jumbo v0, "Cannot create stream, beginConfigure hasn\'t been called yet."

    #@22
    .line 555
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@25
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 556
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@2a
    const/16 v4, 0xa

    #@2c
    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 552
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2

    #@33
    .line 558
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getRotation()I

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 559
    const-string/jumbo v0, "Cannot create stream, stream rotation is not supported."

    #@3c
    .line 560
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@3f
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 561
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@44
    const/4 v4, 0x3

    #@45
    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@48
    throw v2

    #@49
    .line 563
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    #@4b
    add-int/lit8 v1, v2, 0x1

    #@4d
    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    #@4f
    .line 564
    .local v1, "id":I
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@51
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    monitor-exit v3

    #@59
    .line 565
    return v1
.end method

.method public deleteStream(I)V
    .locals 5
    .param p1, "streamId"    # I

    #@0
    .prologue
    .line 519
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 520
    const-string/jumbo v0, "Cannot delete stream, device has been closed."

    #@b
    .line 521
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@e
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 522
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v3, 0x4

    #@14
    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 525
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1a
    monitor-enter v3

    #@1b
    .line 526
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 527
    const-string/jumbo v0, "Cannot delete stream, no configuration change in progress."

    #@22
    .line 528
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@25
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 529
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@2a
    const/16 v4, 0xa

    #@2c
    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 525
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2

    #@33
    .line 531
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@35
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@38
    move-result v1

    #@39
    .line 532
    .local v1, "index":I
    if-gez v1, :cond_2

    #@3b
    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Cannot delete stream, stream id "

    #@43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    const-string/jumbo v4, " doesn\'t exist."

    #@4e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    .line 534
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@59
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 535
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@5e
    const/4 v4, 0x3

    #@5f
    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@62
    throw v2

    #@63
    .line 537
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@65
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    monitor-exit v3

    #@69
    .line 515
    return-void
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 393
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v1, "Cannot disconnect, device has already been closed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 397
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@13
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 399
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    #@18
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    #@1b
    .line 400
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@1d
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    #@20
    .line 387
    return-void

    #@21
    .line 398
    :catchall_0
    move-exception v0

    #@22
    .line 399
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    #@24
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    #@27
    .line 400
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@29
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    #@2c
    .line 398
    throw v0
.end method

.method public endConfigure(Z)V
    .locals 5
    .param p1, "isConstrainedHighSpeed"    # Z

    #@0
    .prologue
    .line 493
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 494
    const-string/jumbo v0, "Cannot end configure, device has been closed."

    #@b
    .line 495
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@e
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 496
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v3, 0x4

    #@14
    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 499
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@19
    .line 500
    .local v1, "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1b
    monitor-enter v3

    #@1c
    .line 501
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 502
    const-string/jumbo v0, "Cannot end configure, no configuration change in progress."

    #@23
    .line 503
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@26
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 504
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@2b
    const/16 v4, 0xa

    #@2d
    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@30
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 500
    .end local v0    # "err":Ljava/lang/String;
    .end local v1    # "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v3

    #@33
    throw v2

    #@34
    .line 506
    .restart local v1    # "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@36
    if-eqz v2, :cond_2

    #@38
    .line 507
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    #@3d
    move-result-object v1

    #@3e
    .line 509
    .end local v1    # "surfaces":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Surface;>;"
    :cond_2
    const/4 v2, 0x0

    #@3f
    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    monitor-exit v3

    #@42
    .line 511
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@44
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->configureOutputs(Landroid/util/SparseArray;)I

    #@47
    .line 489
    return-void
.end method

.method public flush()J
    .locals 4

    #@0
    .prologue
    .line 650
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 651
    const-string/jumbo v0, "Cannot flush, device has been closed."

    #@b
    .line 652
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 653
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 656
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1a
    monitor-enter v2

    #@1b
    .line 657
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 658
    const-string/jumbo v0, "Cannot flush, configuration change in progress."

    #@22
    .line 659
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 660
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@2a
    const/16 v3, 0xa

    #@2c
    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 656
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1

    #@33
    :cond_1
    monitor-exit v2

    #@34
    .line 663
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@36
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->flush()J

    #@39
    move-result-wide v2

    #@3a
    return-wide v2
.end method

.method public getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    #@0
    .prologue
    .line 620
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@3
    const-string/jumbo v1, "getCameraInfo unimplemented."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 621
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 3

    #@0
    .prologue
    .line 585
    const-string/jumbo v0, "Getting input surface is not supported on legacy devices"

    #@3
    .line 586
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 587
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@b
    const/16 v2, 0xa

    #@d
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@10
    throw v1
.end method

.method public prepare(I)V
    .locals 3
    .param p1, "streamId"    # I

    #@0
    .prologue
    .line 670
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 671
    const-string/jumbo v0, "Cannot prepare stream, device has been closed."

    #@b
    .line 672
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 673
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 677
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@1a
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->onPrepared(I)V

    #@1d
    .line 666
    return-void
.end method

.method public prepare2(II)V
    .locals 0
    .param p1, "maxCount"    # I
    .param p2, "streamId"    # I

    #@0
    .prologue
    .line 682
    invoke-virtual {p0, p2}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->prepare(I)V

    #@3
    .line 680
    return-void
.end method

.method public setDeferredConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 3
    .param p1, "steamId"    # I
    .param p2, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;

    #@0
    .prologue
    .line 571
    const-string/jumbo v0, "Set deferred configuration is not supported on legacy devices"

    #@3
    .line 572
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 573
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@b
    const/16 v2, 0xa

    #@d
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@10
    throw v1
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z

    #@0
    .prologue
    .line 409
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 410
    const-string/jumbo v0, "Cannot submit request, device has been closed."

    #@b
    .line 411
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 412
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 415
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1a
    monitor-enter v2

    #@1b
    .line 416
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 417
    const-string/jumbo v0, "Cannot submit request, configuration change in progress."

    #@22
    .line 418
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 419
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@2a
    const/16 v3, 0xa

    #@2c
    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 415
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1

    #@33
    :cond_1
    monitor-exit v2

    #@34
    .line 422
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@36
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@39
    move-result-object v1

    #@3a
    return-object v1
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4
    .param p1, "request"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z

    #@0
    .prologue
    .line 430
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 431
    const-string/jumbo v0, "Cannot submit request list, device has been closed."

    #@b
    .line 432
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 433
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 436
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1a
    monitor-enter v2

    #@1b
    .line 437
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 438
    const-string/jumbo v0, "Cannot submit request, configuration change in progress."

    #@22
    .line 439
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 440
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@2a
    const/16 v3, 0xa

    #@2c
    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 436
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1

    #@33
    :cond_1
    monitor-exit v2

    #@34
    .line 443
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@36
    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    #@39
    move-result-object v1

    #@3a
    return-object v1
.end method

.method public tearDown(I)V
    .locals 3
    .param p1, "streamId"    # I

    #@0
    .prologue
    .line 689
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 690
    const-string/jumbo v0, "Cannot tear down stream, device has been closed."

    #@b
    .line 691
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 692
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 685
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public waitUntilIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 629
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 630
    const-string/jumbo v0, "Cannot wait until idle, device has been closed."

    #@b
    .line 631
    .local v0, "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@e
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 632
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 635
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@1a
    monitor-enter v2

    #@1b
    .line 636
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 637
    const-string/jumbo v0, "Cannot wait until idle, configuration change in progress."

    #@22
    .line 638
    .restart local v0    # "err":Ljava/lang/String;
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 639
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@2a
    const/16 v3, 0xa

    #@2c
    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@2f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 635
    .end local v0    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1

    #@33
    :cond_1
    monitor-exit v2

    #@34
    .line 642
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@36
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    #@39
    .line 625
    return-void
.end method
