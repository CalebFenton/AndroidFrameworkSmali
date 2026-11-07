.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$2;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->onFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;)V
    .registers 2
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1089
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$2;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1092
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$2;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1093
    const-string v0, "CameraExtensionSessionImpl"

    const-string v1, "Failed to initialize proxy service session! This can happen when trying to configure multiple concurrent extension sessions!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$2;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1097
    return-void
.end method
