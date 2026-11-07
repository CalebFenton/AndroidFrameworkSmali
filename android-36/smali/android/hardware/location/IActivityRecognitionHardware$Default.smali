.class public Landroid/hardware/location/IActivityRecognitionHardware$Default;
.super Ljava/lang/Object;
.source "IActivityRecognitionHardware.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist disableActivityEvent(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "activityType"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableActivityEvent(Ljava/lang/String;IJ)Z
    .registers 6
    .param p1, "activityType"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist flush()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedActivities()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isActivitySupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "activityType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3
    .param p1, "sink"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method
