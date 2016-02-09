.class public Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;,
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
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
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@b
    .line 81
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@d
    .line 82
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@f
    .line 83
    new-instance v0, Landroid/util/SparseArray;

    #@11
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@14
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@16
    .line 84
    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@18
    .line 85
    iput-object p4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    #@1a
    .line 86
    iput-object p5, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@1c
    .line 88
    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    #@1e
    .line 80
    return-void
.end method

.method public static connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    .locals 12
    .param p0, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p1, "cameraId"    # I

    #@0
    .prologue
    .line 327
    new-instance v4, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    #@2
    invoke-direct {v4, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;-><init>(I)V

    #@5
    .line 329
    .local v4, "init":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    new-instance v5, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@7
    invoke-direct {v5, p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;-><init>(Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    #@a
    .line 332
    .local v5, "threadCallbacks":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
    const/16 v0, 0x1388

    #@c
    invoke-virtual {v4, v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->waitForOpen(I)I

    #@f
    move-result v8

    #@10
    .line 333
    .local v8, "initErrors":I
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->getCamera()Landroid/hardware/Camera;

    #@13
    move-result-object v9

    #@14
    .line 336
    .local v9, "legacyCamera":Landroid/hardware/Camera;
    invoke-static {v8}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->throwOnError(I)V

    #@17
    .line 339
    invoke-virtual {v9}, Landroid/hardware/Camera;->disableShutterSound()Z

    #@1a
    .line 341
    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    #@1c
    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    #@1f
    .line 342
    .local v7, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    #@22
    .line 344
    const/4 v10, 0x0

    #@23
    .line 346
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v10

    #@27
    .line 353
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    invoke-static {v10, v7}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    #@2a
    move-result-object v3

    #@2b
    .line 354
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2d
    invoke-direct {v2, p1, v9, v3, v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    #@30
    .line 356
    .local v2, "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    #@32
    move v1, p1

    #@33
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;-><init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V

    #@36
    return-object v0

    #@37
    .line 347
    .end local v2    # "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v6

    #@38
    .line 348
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@3a
    .line 349
    const-string/jumbo v1, "Unable to get initial parameters"

    #@3d
    .line 348
    const/4 v11, 0x3

    #@3e
    invoke-direct {v0, v11, v1, v6}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 656
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public beginConfigure()I
    .locals 3

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 444
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v1, "Cannot begin configure, device has been closed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 445
    const/16 v0, -0x13

    #@13
    return v0

    #@14
    .line 448
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@16
    monitor-enter v1

    #@17
    .line 449
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 450
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@1e
    const-string/jumbo v2, "Cannot begin configure, configuration change already in progress."

    #@21
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 451
    const/16 v0, -0x26

    #@26
    monitor-exit v1

    #@27
    return v0

    #@28
    .line 453
    :cond_1
    const/4 v0, 0x1

    #@29
    :try_start_1
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v1

    #@2c
    .line 455
    const/4 v0, 0x0

    #@2d
    return v0

    #@2e
    .line 448
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;

    #@0
    .prologue
    .line 422
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 423
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v3, "Cannot cancel request, device has been closed."

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 424
    const/16 v2, -0x13

    #@13
    return v2

    #@14
    .line 427
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 428
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 429
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@1e
    const-string/jumbo v4, "Cannot cancel request, configuration change in progress."

    #@21
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 430
    const/16 v2, -0x26

    #@26
    monitor-exit v3

    #@27
    return v2

    #@28
    :cond_1
    monitor-exit v3

    #@29
    .line 433
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2b
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->cancelRequest(I)J

    #@2e
    move-result-wide v0

    #@2f
    .line 434
    .local v0, "lastFrame":J
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->setNumber(J)V

    #@32
    .line 435
    const/4 v2, 0x0

    #@33
    return v2

    #@34
    .line 427
    .end local v0    # "lastFrame":J
    :catchall_0
    move-exception v2

    #@35
    monitor-exit v3

    #@36
    throw v2
.end method

.method public createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    .locals 4
    .param p1, "templateId"    # I
    .param p2, "request"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@0
    .prologue
    .line 553
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 554
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v3, "Cannot create default request, device has been closed."

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 555
    const/16 v2, -0x13

    #@13
    return v2

    #@14
    .line 561
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    #@16
    invoke-static {v2, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v1

    #@1a
    .line 567
    .local v1, "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@1d
    .line 568
    const/4 v2, 0x0

    #@1e
    return v2

    #@1f
    .line 562
    .end local v1    # "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_0
    move-exception v0

    #@20
    .line 563
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@23
    const-string/jumbo v3, "createDefaultRequest - invalid templateId specified"

    #@26
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 564
    const/16 v2, -0x16

    #@2b
    return v2
.end method

.method public createInputStream(III)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    #@0
    .prologue
    .line 538
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@3
    const-string/jumbo v1, "creating input stream is not supported on legacy devices"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 539
    const/16 v0, -0x26

    #@b
    return v0
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 5
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;

    #@0
    .prologue
    const/16 v4, -0x26

    #@2
    .line 516
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@4
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 517
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@d
    const-string/jumbo v2, "Cannot create stream, device has been closed."

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 518
    const/16 v1, -0x13

    #@15
    return v1

    #@16
    .line 521
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@18
    monitor-enter v2

    #@19
    .line 522
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 523
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@20
    const-string/jumbo v3, "Cannot create stream, beginConfigure hasn\'t been called yet."

    #@23
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v2

    #@27
    .line 524
    return v4

    #@28
    .line 526
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getRotation()I

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 527
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@31
    const-string/jumbo v3, "Cannot create stream, stream rotation is not supported."

    #@34
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit v2

    #@38
    .line 528
    return v4

    #@39
    .line 530
    :cond_2
    :try_start_2
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    #@3b
    add-int/lit8 v0, v1, 0x1

    #@3d
    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    #@3f
    .line 531
    .local v0, "id":I
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@41
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    monitor-exit v2

    #@49
    .line 532
    return v0

    #@4a
    .line 521
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    #@4b
    monitor-exit v2

    #@4c
    throw v1
.end method

.method public deleteStream(I)I
    .locals 5
    .param p1, "streamId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 491
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@3
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 492
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@c
    const-string/jumbo v2, "Cannot delete stream, device has been closed."

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 493
    const/16 v1, -0x13

    #@14
    return v1

    #@15
    .line 496
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@17
    monitor-enter v2

    #@18
    .line 497
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 498
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@1f
    const-string/jumbo v3, "Cannot delete stream, beginConfigure hasn\'t been called yet."

    #@22
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 499
    const/16 v1, -0x26

    #@27
    monitor-exit v2

    #@28
    return v1

    #@29
    .line 501
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@2e
    move-result v0

    #@2f
    .line 502
    .local v0, "index":I
    if-gez v0, :cond_2

    #@31
    .line 503
    const-string/jumbo v1, "CameraDeviceUserShim"

    #@34
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "Cannot delete stream, stream id "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    const-string/jumbo v4, " doesn\'t exist."

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    .line 504
    const/16 v1, -0x16

    #@54
    monitor-exit v2

    #@55
    return v1

    #@56
    .line 506
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@58
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    monitor-exit v2

    #@5c
    .line 508
    return v3

    #@5d
    .line 496
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@5e
    monitor-exit v2

    #@5f
    throw v1
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 366
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v1, "Cannot disconnect, device has already been closed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 370
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@13
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 372
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    #@18
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    #@1b
    .line 373
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@1d
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    #@20
    .line 360
    return-void

    #@21
    .line 371
    :catchall_0
    move-exception v0

    #@22
    .line 372
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    #@24
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    #@27
    .line 373
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@29
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    #@2c
    .line 371
    throw v0
.end method

.method public endConfigure(Z)I
    .locals 7
    .param p1, "isConstrainedHighSpeed"    # Z

    #@0
    .prologue
    .line 463
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 464
    const-string/jumbo v4, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v5, "Cannot end configure, device has been closed."

    #@e
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 465
    const/16 v4, -0x13

    #@13
    return v4

    #@14
    .line 468
    :cond_0
    const/4 v2, 0x0

    #@15
    .line 469
    .local v2, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    iget-object v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@17
    monitor-enter v5

    #@18
    .line 470
    :try_start_0
    iget-boolean v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 471
    const-string/jumbo v4, "CameraDeviceUserShim"

    #@1f
    const-string/jumbo v6, "Cannot end configure, no configuration change in progress."

    #@22
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 472
    const/16 v4, -0x26

    #@27
    monitor-exit v5

    #@28
    return v4

    #@29
    .line 474
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@2e
    move-result v1

    #@2f
    .line 475
    .local v1, "numSurfaces":I
    if-lez v1, :cond_3

    #@31
    .line 476
    new-instance v3, Ljava/util/ArrayList;

    #@33
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 477
    .end local v2    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v3, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    const/4 v0, 0x0

    #@37
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@39
    .line 478
    :try_start_2
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    #@3b
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    check-cast v4, Landroid/view/Surface;

    #@41
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@44
    .line 477
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    :cond_2
    move-object v2, v3

    #@48
    .line 481
    .end local v0    # "i":I
    .end local v3    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    :cond_3
    const/4 v4, 0x0

    #@49
    :try_start_3
    iput-boolean v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    monitor-exit v5

    #@4c
    .line 483
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@4e
    invoke-virtual {v4, v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->configureOutputs(Ljava/util/List;)I

    #@51
    move-result v4

    #@52
    return v4

    #@53
    .line 469
    .end local v1    # "numSurfaces":I
    :catchall_0
    move-exception v4

    #@54
    :goto_1
    monitor-exit v5

    #@55
    throw v4

    #@56
    .restart local v0    # "i":I
    .restart local v1    # "numSurfaces":I
    .restart local v3    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    :catchall_1
    move-exception v4

    #@57
    move-object v2, v3

    #@58
    .end local v3    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v2, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    goto :goto_1
.end method

.method public flush(Landroid/hardware/camera2/utils/LongParcelable;)I
    .locals 5
    .param p1, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;

    #@0
    .prologue
    .line 606
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 607
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v3, "Cannot flush, device has been closed."

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 608
    const/16 v2, -0x13

    #@13
    return v2

    #@14
    .line 611
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@16
    monitor-enter v3

    #@17
    .line 612
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 613
    const-string/jumbo v2, "CameraDeviceUserShim"

    #@1e
    const-string/jumbo v4, "Cannot flush, configuration change in progress."

    #@21
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 614
    const/16 v2, -0x26

    #@26
    monitor-exit v3

    #@27
    return v2

    #@28
    :cond_1
    monitor-exit v3

    #@29
    .line 617
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2b
    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->flush()J

    #@2e
    move-result-wide v0

    #@2f
    .line 618
    .local v0, "lastFrame":J
    if-eqz p1, :cond_2

    #@31
    .line 619
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->setNumber(J)V

    #@34
    .line 621
    :cond_2
    const/4 v2, 0x0

    #@35
    return v2

    #@36
    .line 611
    .end local v0    # "lastFrame":J
    :catchall_0
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2
.end method

.method public getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I
    .locals 2
    .param p1, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@0
    .prologue
    .line 577
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@3
    const-string/jumbo v1, "getCameraInfo unimplemented."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 578
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getInputSurface(Landroid/view/Surface;)I
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 544
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@3
    const-string/jumbo v1, "getting input surface is not supported on legacy devices"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 545
    const/16 v0, -0x26

    #@b
    return v0
.end method

.method public prepare(I)I
    .locals 2
    .param p1, "streamId"    # I

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 629
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v1, "Cannot prepare stream, device has been closed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 630
    const/16 v0, -0x13

    #@13
    return v0

    #@14
    .line 634
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@16
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->onPrepared(I)V

    #@19
    .line 636
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .param p3, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 384
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v1, "Cannot submit request, device has been closed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 385
    const/16 v0, -0x13

    #@13
    return v0

    #@14
    .line 388
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@16
    monitor-enter v1

    #@17
    .line 389
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 390
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@1e
    const-string/jumbo v2, "Cannot submit request, configuration change in progress."

    #@21
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 391
    const/16 v0, -0x26

    #@26
    monitor-exit v1

    #@27
    return v0

    #@28
    :cond_1
    monitor-exit v1

    #@29
    .line 394
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2b
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    #@2e
    move-result v0

    #@2f
    return v0

    #@30
    .line 388
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 3
    .param p2, "streaming"    # Z
    .param p3, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
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
    .line 403
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 404
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v1, "Cannot submit request list, device has been closed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 405
    const/16 v0, -0x13

    #@13
    return v0

    #@14
    .line 408
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@16
    monitor-enter v1

    #@17
    .line 409
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 410
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@1e
    const-string/jumbo v2, "Cannot submit request, configuration change in progress."

    #@21
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 411
    const/16 v0, -0x26

    #@26
    monitor-exit v1

    #@27
    return v0

    #@28
    :cond_1
    monitor-exit v1

    #@29
    .line 414
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2b
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    #@2e
    move-result v0

    #@2f
    return v0

    #@30
    .line 408
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public tearDown(I)I
    .locals 2
    .param p1, "streamId"    # I

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 644
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v1, "Cannot tear down stream, device has been closed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 645
    const/16 v0, -0x13

    #@13
    return v0

    #@14
    .line 650
    :cond_0
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method public waitUntilIdle()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 587
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@b
    const-string/jumbo v1, "Cannot wait until idle, device has been closed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 588
    const/16 v0, -0x13

    #@13
    return v0

    #@14
    .line 591
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    #@16
    monitor-enter v1

    #@17
    .line 592
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 593
    const-string/jumbo v0, "CameraDeviceUserShim"

    #@1e
    const-string/jumbo v2, "Cannot wait until idle, configuration change in progress."

    #@21
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 594
    const/16 v0, -0x26

    #@26
    monitor-exit v1

    #@27
    return v0

    #@28
    :cond_1
    monitor-exit v1

    #@29
    .line 597
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    #@2b
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    #@2e
    .line 598
    const/4 v0, 0x0

    #@2f
    return v0

    #@30
    .line 591
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method
