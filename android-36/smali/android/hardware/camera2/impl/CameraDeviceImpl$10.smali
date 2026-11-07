.class Landroid/hardware/camera2/impl/CameraDeviceImpl$10;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic blacklist val$code:I

.field final synthetic blacklist val$isError:Z


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V
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

    .line 570
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-boolean p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$isError:Z

    iput p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 573
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$isError:Z

    if-eqz v0, :cond_12

    .line 574
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmDeviceCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->val$code:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    goto :goto_1d

    .line 576
    :cond_12
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmDeviceCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    .line 578
    :goto_1d
    return-void
.end method
