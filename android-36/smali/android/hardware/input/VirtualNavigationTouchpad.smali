.class public Landroid/hardware/input/VirtualNavigationTouchpad;
.super Landroid/hardware/input/VirtualInputDevice;
.source "VirtualNavigationTouchpad.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    .param p2, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/VirtualInputDevice;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .registers 1

    .line 39
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->close()V

    return-void
.end method

.method public bridge synthetic blacklist getInputDeviceId()I
    .registers 2

    .line 39
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->getInputDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist sendTouchEvent(Landroid/hardware/input/VirtualTouchEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/input/VirtualTouchEvent;

    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualNavigationTouchpad;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualNavigationTouchpad;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 56
    const-string v0, "VirtualInputDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send touch event to virtual navigation touchpad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/VirtualNavigationTouchpad;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 57
    invoke-virtual {v2}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2a

    .line 61
    :cond_28
    nop

    .line 62
    return-void

    .line 59
    :catch_2a
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 39
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
