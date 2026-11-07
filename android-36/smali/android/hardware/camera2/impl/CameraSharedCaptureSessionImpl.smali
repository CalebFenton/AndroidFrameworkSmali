.class public Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraSharedCaptureSession;
.source "CameraSharedCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraSharedCaptureSessionImpl"


# instance fields
.field private final blacklist mCameraDevice:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field private final blacklist mDeviceExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInitialized:Landroid/os/ConditionVariable;

.field private final blacklist mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mInitialized:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method constructor blacklist <init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "stateExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "deviceImpl"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p5, "deviceStateExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "configureSuccess"    # Z

    .line 61
    invoke-direct {p0}, Landroid/hardware/camera2/CameraSharedCaptureSession;-><init>()V

    .line 51
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mInitialized:Landroid/os/ConditionVariable;

    .line 62
    new-instance v0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;

    invoke-direct {v0, p0, p2}, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;-><init>(Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    move-object v4, v0

    .line 63
    .local v4, "wrapperCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    new-instance v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    const/4 v3, 0x0

    move v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .end local p1    # "id":I
    .end local p3    # "stateExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local p5    # "deviceStateExecutor":Ljava/util/concurrent/Executor;
    .end local p6    # "configureSuccess":Z
    .local v2, "id":I
    .local v5, "stateExecutor":Ljava/util/concurrent/Executor;
    .local v6, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .local v7, "deviceStateExecutor":Ljava/util/concurrent/Executor;
    .local v8, "configureSuccess":Z
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Z)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 65
    iput-object v6, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mCameraDevice:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 66
    iput-object v7, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mDeviceExecutor:Ljava/util/concurrent/Executor;

    .line 67
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mInitialized:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mCameraDevice:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrimaryClient()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 112
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->abortCaptures()V

    .line 113
    return-void

    .line 115
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session only supports this method for primary clients"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mCameraDevice:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrimaryClient()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 154
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0

    .line 156
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session only supports this method for primary clients"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 222
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared Capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 230
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared Capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mCameraDevice:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrimaryClient()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 165
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v0

    return v0

    .line 167
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session only supports this method for primary clients"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    .line 92
    return-void
.end method

.method public blacklist closeWithoutDraining()V
    .registers 3

    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finalizeOutputConfigurations(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 244
    .local p1, "deferredOutputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputSurface()Landroid/view/Surface;
    .registers 2

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAborting()Z
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isAborting()Z

    move-result v0

    return v0
.end method

.method public whitelist isReprocessable()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist prepare(ILandroid/view/Surface;)V
    .registers 5
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist prepare(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist replaceSessionClose()V
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V

    .line 194
    return-void
.end method

.method public whitelist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 207
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared Capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 215
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared Capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mCameraDevice:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrimaryClient()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 123
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    return v0

    .line 125
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session only supports this method for primary clients"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mCameraDevice:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrimaryClient()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 134
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v0

    return v0

    .line 136
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session only supports this method for primary clients"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startStreaming(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 73
    .local p1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 75
    if-eqz p2, :cond_19

    .line 77
    if-eqz p3, :cond_11

    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->startStreaming(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v0

    return v0

    .line 78
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No surfaces provided for streaming"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopRepeating()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mCameraDevice:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isPrimaryClient()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 143
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->stopRepeating()V

    .line 144
    return-void

    .line 146
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session only supports this method for primary clients"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopStreaming()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->stopRepeating()V

    .line 87
    return-void
.end method

.method public whitelist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            ")",
            "Landroid/hardware/camera2/CameraOfflineSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 200
    .local p1, "offlineSurfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist tearDown(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->mSessionImpl:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->tearDown(Landroid/view/Surface;)V

    .line 174
    return-void
.end method

.method public whitelist updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shared capture session do not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
