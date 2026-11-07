.class Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler$2;
.super Ljava/lang/Object;
.source "CameraAdvancedExtensionSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->onFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;)V
    .registers 2
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 807
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler$2;->this$1:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 810
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler$2;->this$1:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 812
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    const-string v1, "Failed to initialize proxy service session! This can happen when trying to configure multiple concurrent extension sessions!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler$2;->this$1:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    .line 816
    return-void
.end method
