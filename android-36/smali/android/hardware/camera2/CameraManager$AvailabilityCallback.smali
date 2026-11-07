.class public abstract Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AvailabilityCallback"
.end annotation


# instance fields
.field private blacklist mDeviceId:I

.field private blacklist mDevicePolicy:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mDevicePolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mDeviceId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;I)V
    .registers 2

    iput p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mDevicePolicy:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCameraAccessPrioritiesChanged()V
    .registers 1

    .line 1867
    return-void
.end method

.method public whitelist onCameraAvailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1827
    return-void
.end method

.method public whitelist onCameraClosed(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2031
    return-void
.end method

.method public whitelist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "packageId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2015
    return-void
.end method

.method public whitelist onCameraUnavailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1842
    return-void
.end method

.method public whitelist onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 1932
    return-void
.end method

.method public whitelist onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 1996
    return-void
.end method
