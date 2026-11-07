.class Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;
.super Ljava/lang/Object;
.source "CameraOfflineSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->setRemoteSession(Landroid/hardware/camera2/ICameraOfflineSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 732
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 735
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 736
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmOfflineCallback(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;->onReady(Landroid/hardware/camera2/CameraOfflineSession;)V

    .line 738
    :cond_13
    return-void
.end method
