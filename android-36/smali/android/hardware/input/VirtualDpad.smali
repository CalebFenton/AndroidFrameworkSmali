.class public Landroid/hardware/input/VirtualDpad;
.super Landroid/hardware/input/VirtualInputDevice;
.source "VirtualDpad.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mSupportedKeyCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/VirtualDpadConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 12
    .param p1, "config"    # Landroid/hardware/input/VirtualDpadConfig;
    .param p2, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/VirtualInputDevice;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 47
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 48
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 49
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 50
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 51
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 52
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/VirtualDpad;->mSupportedKeyCodes:Ljava/util/Set;

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .registers 1

    .line 40
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->close()V

    return-void
.end method

.method public bridge synthetic blacklist getInputDeviceId()I
    .registers 2

    .line 40
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->getInputDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist sendKeyEvent(Landroid/hardware/input/VirtualKeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/input/VirtualKeyEvent;

    .line 76
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualDpad;->mSupportedKeyCodes:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 82
    iget-object v0, p0, Landroid/hardware/input/VirtualDpad;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualDpad;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/IVirtualDevice;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 83
    const-string v0, "VirtualInputDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send key event to virtual dpad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/VirtualDpad;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 84
    invoke-virtual {v2}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_38
    nop

    .line 89
    return-void

    .line 77
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sent to a VirtualDpad input device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/VirtualDpad;
    .end local p1    # "event":Landroid/hardware/input/VirtualKeyEvent;
    throw v0
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5d} :catch_5d

    .line 86
    .restart local p0    # "this":Landroid/hardware/input/VirtualDpad;
    .restart local p1    # "event":Landroid/hardware/input/VirtualKeyEvent;
    :catch_5d
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 40
    invoke-super {p0}, Landroid/hardware/input/VirtualInputDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
