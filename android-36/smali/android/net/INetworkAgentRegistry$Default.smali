.class public Landroid/net/INetworkAgentRegistry$Default;
.super Ljava/lang/Object;
.source "INetworkAgentRegistry.java"

# interfaces
.implements Landroid/net/INetworkAgentRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkAgentRegistry;
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

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendAddDscpPolicy(Landroid/net/DscpPolicy;)V
    .registers 2
    .param p1, "policy"    # Landroid/net/DscpPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist sendEpsQosSessionAvailable(ILandroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V
    .registers 4
    .param p1, "callbackId"    # I
    .param p2, "session"    # Landroid/net/QosSession;
    .param p3, "attributes"    # Landroid/telephony/data/EpsBearerQosSessionAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist sendExplicitlySelected(ZZ)V
    .registers 3
    .param p1, "explicitlySelected"    # Z
    .param p2, "acceptPartial"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist sendLingerDuration(I)V
    .registers 2
    .param p1, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist sendLinkProperties(Landroid/net/LinkProperties;)V
    .registers 2
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist sendLocalNetworkConfig(Landroid/net/connectivity/android/net/LocalNetworkConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist sendNrQosSessionAvailable(ILandroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V
    .registers 4
    .param p1, "callbackId"    # I
    .param p2, "session"    # Landroid/net/QosSession;
    .param p3, "attributes"    # Landroid/telephony/data/NrQosSessionAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist sendQosCallbackError(II)V
    .registers 3
    .param p1, "qosCallbackId"    # I
    .param p2, "exceptionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist sendQosSessionLost(ILandroid/net/QosSession;)V
    .registers 3
    .param p1, "qosCallbackId"    # I
    .param p2, "session"    # Landroid/net/QosSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist sendRemoveAllDscpPolicies()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist sendRemoveDscpPolicy(I)V
    .registers 2
    .param p1, "policyId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist sendScore(Landroid/net/NetworkScore;)V
    .registers 2
    .param p1, "score"    # Landroid/net/NetworkScore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist sendSocketKeepaliveEvent(II)V
    .registers 3
    .param p1, "slot"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist sendTeardownDelayMs(I)V
    .registers 2
    .param p1, "teardownDelayMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist sendUnderlyingNetworks(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Network;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    return-void
.end method

.method public blacklist sendUnregisterAfterReplacement(I)V
    .registers 2
    .param p1, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method
