.class public Landroid/hardware/input/VirtualStylus;
.super Landroid/hardware/input/VirtualInputDevice;
.source "VirtualStylus.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/VirtualStylusConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/input/VirtualStylusConfig;
    .param p2, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/VirtualInputDevice;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .registers 1

    .line 35
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->close()V

    return-void
.end method

.method public bridge synthetic blacklist getInputDeviceId()I
    .registers 2

    .line 35
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->getInputDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist sendButtonEvent(Landroid/hardware/input/VirtualStylusButtonEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/input/VirtualStylusButtonEvent;

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualStylus;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualStylus;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 67
    const-string v0, "VirtualInputDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send button event from virtual stylus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/VirtualStylus;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 68
    invoke-virtual {v2}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2a

    .line 72
    :cond_28
    nop

    .line 73
    return-void

    .line 70
    :catch_2a
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendMotionEvent(Landroid/hardware/input/VirtualStylusMotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/input/VirtualStylusMotionEvent;

    .line 50
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualStylus;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualStylus;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 51
    const-string v0, "VirtualInputDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send motion event from virtual stylus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/VirtualStylus;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 52
    invoke-virtual {v2}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2a

    .line 56
    :cond_28
    nop

    .line 57
    return-void

    .line 54
    :catch_2a
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 35
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
