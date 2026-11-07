.class Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraSharedCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrapperCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
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

    .line 269
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 270
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 271
    return-void
.end method


# virtual methods
.method public whitelist onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 292
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 293
    return-void
.end method

.method public whitelist onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 297
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 298
    return-void
.end method

.method public whitelist onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 302
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 303
    return-void
.end method

.method public whitelist onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 281
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->-$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 282
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 283
    return-void
.end method

.method public whitelist onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 275
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;->-$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 276
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 277
    return-void
.end method

.method public whitelist onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 287
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 288
    return-void
.end method

.method public whitelist onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 307
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl$WrapperCallback;->this$0:Landroid/hardware/camera2/impl/CameraSharedCaptureSessionImpl;

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    .line 309
    return-void
.end method
