.class Landroid/hardware/camera2/impl/CameraDeviceImpl$15;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic blacklist val$failure:Landroid/hardware/camera2/CaptureFailure;

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$request:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
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

    .line 2300
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->val$failure:Landroid/hardware/camera2/CaptureFailure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 2303
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2304
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$15;->val$failure:Landroid/hardware/camera2/CaptureFailure;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2307
    :cond_17
    return-void
.end method
