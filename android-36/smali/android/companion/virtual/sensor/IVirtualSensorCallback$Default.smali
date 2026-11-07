.class public Landroid/companion/virtual/sensor/IVirtualSensorCallback$Default;
.super Ljava/lang/Object;
.source "IVirtualSensorCallback.java"

# interfaces
.implements Landroid/companion/virtual/sensor/IVirtualSensorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/IVirtualSensorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    .registers 5
    .param p1, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p2, "enabled"    # Z
    .param p3, "samplingPeriodMicros"    # I
    .param p4, "batchReportLatencyMicros"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .registers 5
    .param p1, "channelHandle"    # I
    .param p2, "sensor"    # Landroid/companion/virtual/sensor/VirtualSensor;
    .param p3, "rateLevel"    # I
    .param p4, "reportToken"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    .registers 3
    .param p1, "channelHandle"    # I
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist onDirectChannelDestroyed(I)V
    .registers 2
    .param p1, "channelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method
