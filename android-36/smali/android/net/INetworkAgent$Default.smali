.class public Landroid/net/INetworkAgent$Default;
.super Ljava/lang/Object;
.source "INetworkAgent.java"

# interfaces
.implements Landroid/net/INetworkAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAddNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketData;)V
    .registers 3
    .param p1, "slot"    # I
    .param p2, "packetData"    # Landroid/net/NattKeepalivePacketData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist onAddTcpKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketData;)V
    .registers 3
    .param p1, "slot"    # I
    .param p2, "packetData"    # Landroid/net/TcpKeepalivePacketData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist onBandwidthUpdateRequested()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onDscpPolicyStatusUpdated(II)V
    .registers 3
    .param p1, "policyId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist onNetworkCreated()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist onNetworkDestroyed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist onPreventAutomaticReconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onQosCallbackUnregistered(I)V
    .registers 2
    .param p1, "qosCallbackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist onQosFilterCallbackRegistered(ILandroid/net/connectivity/android/net/QosFilterParcelable;)V
    .registers 3
    .param p1, "qosCallbackId"    # I
    .param p2, "filterParcel"    # Landroid/net/connectivity/android/net/QosFilterParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist onRegistered()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onRemoveKeepalivePacketFilter(I)V
    .registers 2
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist onSaveAcceptUnvalidated(Z)V
    .registers 2
    .param p1, "acceptUnvalidated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onSignalStrengthThresholdsUpdated([I)V
    .registers 2
    .param p1, "thresholds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist onStartNattSocketKeepalive(IILandroid/net/NattKeepalivePacketData;)V
    .registers 4
    .param p1, "slot"    # I
    .param p2, "intervalDurationMs"    # I
    .param p3, "packetData"    # Landroid/net/NattKeepalivePacketData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onStartTcpSocketKeepalive(IILandroid/net/TcpKeepalivePacketData;)V
    .registers 4
    .param p1, "slot"    # I
    .param p2, "intervalDurationMs"    # I
    .param p3, "packetData"    # Landroid/net/TcpKeepalivePacketData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onStopSocketKeepalive(I)V
    .registers 2
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist onValidationStatusChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "validationStatus"    # I
    .param p2, "captivePortalUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
