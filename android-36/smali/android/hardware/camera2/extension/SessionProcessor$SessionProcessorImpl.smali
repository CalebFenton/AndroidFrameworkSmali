.class final Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;
.super Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;
.source "SessionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/SessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionProcessorImpl"
.end annotation


# instance fields
.field blacklist mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field blacklist mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field blacklist mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

.field private blacklist mVendorId:J

.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/SessionProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/extension/SessionProcessor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;-><init>()V

    .line 347
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/SessionProcessor;Landroid/hardware/camera2/extension/SessionProcessor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;-><init>(Landroid/hardware/camera2/extension/SessionProcessor;)V

    return-void
.end method


# virtual methods
.method public blacklist deInitSession(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/SessionProcessor;->deInitSession(Landroid/os/IBinder;)V

    .line 382
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_16

    .line 383
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 385
    :cond_16
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_27

    .line 386
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 388
    :cond_27
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_38

    .line 389
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 391
    :cond_38
    return-void
.end method

.method public blacklist getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initSession(Landroid/os/IBinder;Ljava/lang/String;Ljava/util/Map;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p4, "previewSurface"    # Landroid/hardware/camera2/extension/OutputSurface;
    .param p5, "imageCaptureSurface"    # Landroid/hardware/camera2/extension/OutputSurface;
    .param p6, "postviewSurface"    # Landroid/hardware/camera2/extension/OutputSurface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            "Landroid/hardware/camera2/extension/OutputSurface;",
            ")",
            "Landroid/hardware/camera2/extension/CameraSessionConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    .local p3, "charsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    iput-object p4, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPreviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    .line 358
    iput-object p6, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mPostviewSurface:Landroid/hardware/camera2/extension/OutputSurface;

    .line 359
    iput-object p5, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mImageCaptureSurface:Landroid/hardware/camera2/extension/OutputSurface;

    .line 360
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v3, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v3, p3}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v4, p4}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    new-instance v5, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {v5, p5}, Landroid/hardware/camera2/extension/CameraOutputSurface;-><init>(Landroid/hardware/camera2/extension/OutputSurface;)V

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "cameraId":Ljava/lang/String;
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "cameraId":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/extension/SessionProcessor;->initSession(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;)Landroid/hardware/camera2/extension/ExtensionConfiguration;

    move-result-object p1

    .line 364
    .local p1, "config":Landroid/hardware/camera2/extension/ExtensionConfiguration;
    if-eqz p1, :cond_49

    .line 368
    const-class p2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 369
    .local p2, "thisClass":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 371
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    nop

    .line 372
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    .line 373
    .local v3, "vendorKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    if-eqz v3, :cond_44

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 374
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    .line 376
    :cond_44
    invoke-virtual {p1}, Landroid/hardware/camera2/extension/ExtensionConfiguration;->getCameraSessionConfig()Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object v4

    return-object v4

    .line 365
    .end local v0    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    .end local v3    # "vendorKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    .end local p2    # "thisClass":Ljava/lang/Object;
    :cond_49
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid extension configuration"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist onCaptureSessionEnd()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 406
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->finishCameraOperation()V

    .line 408
    :cond_11
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->onCaptureSessionEnd()V

    .line 409
    return-void
.end method

.method public blacklist onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;Ljava/lang/String;)V
    .registers 7
    .param p1, "requestProcessor"    # Landroid/hardware/camera2/extension/IRequestProcessorImpl;
    .param p2, "statsKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 397
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/extension/CameraUsageTracker;->startCameraOperation()V

    .line 399
    :cond_11
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/extension/RequestProcessor;

    iget-wide v2, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/camera2/extension/RequestProcessor;-><init>(Landroid/hardware/camera2/extension/IRequestProcessorImpl;J)V

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/extension/SessionProcessor;->onCaptureSessionStart(Landroid/hardware/camera2/extension/RequestProcessor;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public blacklist setParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 3
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/SessionProcessor;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 434
    return-void
.end method

.method public blacklist startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;Z)I
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/extension/ICaptureCallback;
    .param p2, "isPostviewRequested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    .line 427
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p1, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    .line 426
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startMultiFrameCapture(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result v0

    return v0
.end method

.method public blacklist startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/extension/ICaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    .line 414
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p1, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startRepeating(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result v0

    return v0
.end method

.method public blacklist startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .registers 8
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/extension/ICaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    .line 440
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;

    iget-wide v3, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->mVendorId:J

    invoke-direct {v2, p2, v3, v4}, Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;-><init>(Landroid/hardware/camera2/extension/ICaptureCallback;J)V

    .line 439
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/extension/SessionProcessor;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I

    move-result v0

    return v0
.end method

.method public blacklist stopRepeating()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;->this$0:Landroid/hardware/camera2/extension/SessionProcessor;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->stopRepeating()V

    .line 421
    return-void
.end method
