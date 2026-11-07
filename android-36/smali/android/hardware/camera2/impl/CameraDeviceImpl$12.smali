.class Landroid/hardware/camera2/impl/CameraDeviceImpl$12;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceCompleteLocked(IJ[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$requestId:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CaptureCallbackHolder;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1428
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$requestId:I

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1431
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1437
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$requestId:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V

    .line 1441
    :cond_15
    return-void
.end method
