.class abstract Landroid/hardware/input/VirtualInputDevice;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "VirtualInputDevice"


# instance fields
.field protected final blacklist mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

.field protected final blacklist mToken:Landroid/os/IBinder;

.field protected final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/VirtualInputDeviceConfig;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/input/VirtualInputDeviceConfig;
    .param p2, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    .line 53
    iput-object p2, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 54
    iput-object p3, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing virtual input device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {v1}, Landroid/hardware/input/VirtualInputDeviceConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualInputDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_1e
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_27

    .line 76
    nop

    .line 77
    return-void

    .line 74
    :catch_27
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInputDeviceId()I
    .registers 3

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/hardware/input/VirtualInputDevice;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->getInputDeviceId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 64
    :catch_9
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/hardware/input/VirtualInputDevice;->mConfig:Landroid/hardware/input/VirtualInputDeviceConfig;

    invoke-virtual {v0}, Landroid/hardware/input/VirtualInputDeviceConfig;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
