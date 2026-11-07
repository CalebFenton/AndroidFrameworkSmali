.class Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;
.super Ljava/lang/Object;
.source "CameraInjectionSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->-$$Nest$fgetmInjectionStatusCallback(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    .line 135
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;->onInjectionSucceeded(Landroid/hardware/camera2/CameraInjectionSession;)V

    .line 136
    return-void
.end method
