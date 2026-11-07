.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;
.super Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeSessionHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1046
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 1089
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$2;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1099
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 3

    .line 1049
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1085
    return-void
.end method
