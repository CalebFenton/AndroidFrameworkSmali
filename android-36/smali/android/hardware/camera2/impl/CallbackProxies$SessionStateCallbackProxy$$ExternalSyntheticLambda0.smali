.class public final synthetic Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic blacklist f$2:Landroid/view/Surface;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;->f$2:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda0;->f$2:Landroid/view/Surface;

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->$r8$lambda$6h7km37R0IWtKK2XntIRyXpQj9o(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method
