.class public Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Default;
.super Ljava/lang/Object;
.source "IWifiAwareDiscoverySessionCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
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

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBootstrappingVerificationConfirmed(IZI)V
    .registers 4
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist onMatch(I[B[BI[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 9
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "peerCipherSuite"    # I
    .param p5, "scid"    # [B
    .param p6, "pairingAlias"    # Ljava/lang/String;
    .param p7, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p8, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist onMatchExpired(I)V
    .registers 2
    .param p1, "peerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist onMatchWithDistance(I[B[BII[BLjava/lang/String;Landroid/net/wifi/aware/AwarePairingConfig;[Landroid/net/wifi/OuiKeyedData;)V
    .registers 10
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "distanceMm"    # I
    .param p5, "peerCipherSuite"    # I
    .param p6, "scid"    # [B
    .param p7, "pairingAlias"    # Ljava/lang/String;
    .param p8, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p9, "vendorData"    # [Landroid/net/wifi/OuiKeyedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist onMessageReceived(I[B)V
    .registers 3
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist onMessageSendFail(II)V
    .registers 3
    .param p1, "messageId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist onMessageSendSuccess(I)V
    .registers 2
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist onPairingSetupConfirmed(IZLjava/lang/String;)V
    .registers 4
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist onPairingSetupRequestReceived(II)V
    .registers 3
    .param p1, "peerId"    # I
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist onPairingVerificationConfirmed(IZLjava/lang/String;)V
    .registers 4
    .param p1, "peerId"    # I
    .param p2, "accept"    # Z
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist onRangingResultsReceived(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    .local p1, "rangingResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    return-void
.end method

.method public blacklist onSessionConfigFail(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onSessionConfigSuccess()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onSessionResumeFail(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onSessionResumeSucceeded()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist onSessionStarted(I)V
    .registers 2
    .param p1, "discoverySessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onSessionSuspendFail(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onSessionSuspendSucceeded()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onSessionTerminated(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
