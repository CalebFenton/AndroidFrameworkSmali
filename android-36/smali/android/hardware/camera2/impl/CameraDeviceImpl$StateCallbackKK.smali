.class public abstract Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallbackKK"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1933
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onActive(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 1949
    return-void
.end method

.method public greylist-max-o onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 1957
    return-void
.end method

.method public greylist-max-o onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 1966
    return-void
.end method

.method public greylist-max-o onRequestQueueEmpty()V
    .registers 1

    .line 1974
    return-void
.end method

.method public greylist-max-o onSurfacePrepared(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1982
    return-void
.end method

.method public greylist-max-o onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 1940
    return-void
.end method
