.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy(II)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2615
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCameraAccessPrioritiesChanged()V
    .registers 1

    .line 2634
    return-void
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;I)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 2640
    return-void
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I

    .line 2637
    return-void
.end method

.method public blacklist onCameraOpenedInSharedMode(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "primaryClient"    # Z

    .line 2644
    return-void
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "physicalId"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2623
    return-void
.end method

.method public blacklist onStatusChanged(ILjava/lang/String;I)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2619
    return-void
.end method

.method public blacklist onTorchStatusChanged(ILjava/lang/String;I)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2627
    return-void
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;II)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2631
    return-void
.end method
