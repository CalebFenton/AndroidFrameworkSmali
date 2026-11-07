.class Landroid/hardware/camera2/impl/CameraDeviceImpl$13;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$requestId:I

.field final synthetic blacklist val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V
    .registers 5
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
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

    .line 2026
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->val$requestId:I

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 2029
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2036
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->val$requestId:I

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$13;->val$requestLastFrameNumbers:Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 2039
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastFrameNumber()J

    move-result-wide v3

    .line 2036
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V

    .line 2041
    :cond_1b
    return-void
.end method
