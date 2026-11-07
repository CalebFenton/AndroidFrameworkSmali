.class public Landroid/hardware/thermal/IThermal$Default;
.super Ljava/lang/Object;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/IThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/IThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist forecastSkinTemperature(I)F
    .registers 3
    .param p1, "forecastSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 73
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTemperatures()[Landroid/hardware/thermal/Temperature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerCoolingDeviceChangedCallbackWithType(Landroid/hardware/thermal/ICoolingDeviceChangedCallback;I)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/thermal/ICoolingDeviceChangedCallback;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/thermal/IThermalChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist registerThermalChangedCallbackWithType(Landroid/hardware/thermal/IThermalChangedCallback;I)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/thermal/IThermalChangedCallback;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist unregisterCoolingDeviceChangedCallback(Landroid/hardware/thermal/ICoolingDeviceChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/thermal/ICoolingDeviceChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist unregisterThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/thermal/IThermalChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method
