.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialRequestHandler"
.end annotation


# instance fields
.field private final blacklist mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V
    .registers 3
    .param p2, "imageCallback"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1379
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 1380
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 1381
    return-void
.end method


# virtual methods
.method public whitelist onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 1400
    const-string v0, "CameraExtensionSessionImpl"

    const-string v1, "Initial capture request failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1402
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 1392
    const-string v0, "CameraExtensionSessionImpl"

    const-string v1, "Initial capture request aborted!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1394
    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 15
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 1408
    const/4 v1, 0x1

    .line 1409
    .local v1, "status":Z
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1415
    :try_start_6
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-static {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    :try_end_21
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_21} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_21} :catch_24
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    .line 1421
    goto :goto_2d

    .line 1423
    :catchall_22
    move-exception v0

    goto :goto_36

    .line 1418
    :catch_24
    move-exception v0

    .line 1419
    .local v0, "e":Landroid/util/AndroidException;
    :try_start_25
    const-string v3, "CameraExtensionSessionImpl"

    const-string v4, "Failed to start the internal repeating request!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/4 v1, 0x0

    .line 1423
    .end local v0    # "e":Landroid/util/AndroidException;
    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    .line 1425
    if-nez v1, :cond_35

    .line 1426
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1428
    :cond_35
    return-void

    .line 1423
    :goto_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_22

    throw v0
.end method

.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 12
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 1386
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl-IA;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V

    .line 1387
    return-void
.end method
