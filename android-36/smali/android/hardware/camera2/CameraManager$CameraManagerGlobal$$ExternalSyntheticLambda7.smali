.class public final synthetic Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->lambda$postSingleUpdate$3(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    return-void
.end method
