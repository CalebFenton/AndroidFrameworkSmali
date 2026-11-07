.class public Landroid/hardware/gnss/IGnssGeofence$Default;
.super Ljava/lang/Object;
.source "IGnssGeofence.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofence;
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
.method public blacklist addGeofence(IDDDIIII)V
    .registers 12
    .param p1, "geofenceId"    # I
    .param p2, "latitudeDegrees"    # D
    .param p4, "longitudeDegrees"    # D
    .param p6, "radiusMeters"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsivenessMs"    # I
    .param p11, "unknownTimerMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pauseGeofence(I)V
    .registers 2
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist removeGeofence(I)V
    .registers 2
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist resumeGeofence(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IGnssGeofenceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/gnss/IGnssGeofenceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
