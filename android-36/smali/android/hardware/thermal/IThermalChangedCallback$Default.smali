.class public Landroid/hardware/thermal/IThermalChangedCallback$Default;
.super Ljava/lang/Object;
.source "IThermalChangedCallback.java"

# interfaces
.implements Landroid/hardware/thermal/IThermalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/IThermalChangedCallback;
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

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
    .registers 2
    .param p1, "threshold"    # Landroid/hardware/thermal/TemperatureThreshold;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist notifyThrottling(Landroid/hardware/thermal/Temperature;)V
    .registers 2
    .param p1, "temperature"    # Landroid/hardware/thermal/Temperature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
