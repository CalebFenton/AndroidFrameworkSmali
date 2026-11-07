.class public abstract Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "CameraConstrainedHighSpeedCaptureSession.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method
