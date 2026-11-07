.class Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;
.super Ljava/lang/Object;
.source "CameraOfflineSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->checkAndFireSequenceComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field final synthetic blacklist val$requestId:I

.field final synthetic blacklist val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILandroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V
    .registers 5
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 608
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput p3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->val$requestId:I

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 611
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 612
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->val$requestId:I

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;->val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 613
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastFrameNumber()J

    move-result-wide v3

    .line 612
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 615
    :cond_17
    return-void
.end method
