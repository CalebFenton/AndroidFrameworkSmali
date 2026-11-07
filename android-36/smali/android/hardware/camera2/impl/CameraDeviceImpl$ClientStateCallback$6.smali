.class Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;

.field final synthetic blacklist val$camera:Landroid/hardware/camera2/CameraDevice;

.field final synthetic blacklist val$error:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;I)V
    .registers 4
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;
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

    .line 403
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;->val$camera:Landroid/hardware/camera2/CameraDevice;

    iput p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 406
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->-$$Nest$fgetmClientStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;->val$camera:Landroid/hardware/camera2/CameraDevice;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;->val$error:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 407
    return-void
.end method
