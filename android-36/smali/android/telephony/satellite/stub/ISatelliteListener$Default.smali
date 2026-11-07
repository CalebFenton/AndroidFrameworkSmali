.class public Landroid/telephony/satellite/stub/ISatelliteListener$Default;
.super Ljava/lang/Object;
.source "ISatelliteListener.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatelliteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatelliteListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onNtnSignalStrengthChanged(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    .registers 2
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/stub/NtnSignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist onPendingDatagrams()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .registers 2
    .param p1, "causeCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/stub/SatelliteCapabilities;)V
    .registers 2
    .param p1, "capabilities"    # Landroid/telephony/satellite/stub/SatelliteCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onSatelliteDatagramReceived(Landroid/telephony/satellite/stub/SatelliteDatagram;I)V
    .registers 3
    .param p1, "datagram"    # Landroid/telephony/satellite/stub/SatelliteDatagram;
    .param p2, "pendingCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist onSatellitePositionChanged(Landroid/telephony/satellite/stub/PointingInfo;)V
    .registers 2
    .param p1, "pointingInfo"    # Landroid/telephony/satellite/stub/PointingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onSatelliteSupportedStateChanged(Z)V
    .registers 2
    .param p1, "supported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .registers 2
    .param p1, "isAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method
