.class Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;

.field final synthetic blacklist val$camera:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;)V
    .registers 3
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;->val$camera:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 351
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->-$$Nest$fgetmClientStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;->val$camera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 352
    return-void
.end method
