.class public final synthetic Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->lambda$postSingleCameraOpenedUpdate$0(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
