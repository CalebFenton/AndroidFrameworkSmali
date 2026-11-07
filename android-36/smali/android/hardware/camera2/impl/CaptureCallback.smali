.class public abstract Landroid/hardware/camera2/impl/CaptureCallback;
.super Ljava/lang/Object;
.source "CaptureCallback.java"


# instance fields
.field private blacklist mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/hardware/camera2/impl/CaptureCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 40
    iput-object p2, p0, Landroid/hardware/camera2/impl/CaptureCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public abstract blacklist onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
.end method

.method public abstract blacklist onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end method

.method public abstract blacklist onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
.end method

.method public abstract blacklist onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract blacklist onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract blacklist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
.end method

.method public abstract blacklist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
.end method

.method public abstract blacklist onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end method

.method public abstract blacklist onReadoutStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end method
