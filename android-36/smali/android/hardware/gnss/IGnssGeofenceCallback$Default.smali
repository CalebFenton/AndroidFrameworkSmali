.class public Landroid/hardware/gnss/IGnssGeofenceCallback$Default;
.super Ljava/lang/Object;
.source "IGnssGeofenceCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofenceCallback;
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

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gnssGeofenceAddCb(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist gnssGeofencePauseCb(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist gnssGeofenceRemoveCb(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist gnssGeofenceResumeCb(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist gnssGeofenceStatusCb(ILandroid/hardware/gnss/GnssLocation;)V
    .registers 3
    .param p1, "availability"    # I
    .param p2, "lastLocation"    # Landroid/hardware/gnss/GnssLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist gnssGeofenceTransitionCb(ILandroid/hardware/gnss/GnssLocation;IJ)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/hardware/gnss/GnssLocation;
    .param p3, "transition"    # I
    .param p4, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
