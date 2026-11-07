.class public Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;
.super Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;
.source "IkeSpecificNetworkCallback.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "ikeNetworkUpdater"    # Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;
    .param p2, "currNetwork"    # Landroid/net/Network;
    .param p3, "currAddress"    # Ljava/net/InetAddress;
    .param p4, "currLp"    # Landroid/net/LinkProperties;
    .param p5, "currNc"    # Landroid/net/NetworkCapabilities;

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 53
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 54
    return-void

    .line 57
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCapabilitiesChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "networkCapabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->logd(Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    .line 59
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;->onCapabilitiesUpdated(Landroid/net/NetworkCapabilities;)V

    .line 60
    return-void
.end method

.method public whitelist onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 66
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 67
    return-void

    .line 70
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLinkPropertiesChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->logd(Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->isCurrentAddressLost(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 73
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;->onUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 75
    :cond_32
    return-void
.end method
