.class public final synthetic Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

.field public final synthetic blacklist f$1:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->$r8$lambda$sq0SbahpvFumJtSrqHOIYx2Zkys(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
