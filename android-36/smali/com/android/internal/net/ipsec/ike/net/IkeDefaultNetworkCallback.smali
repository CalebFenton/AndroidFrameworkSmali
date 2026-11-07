.class public Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;
.super Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;
.source "IkeDefaultNetworkCallback.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "ikeNetworkUpdater"    # Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;
    .param p2, "currNetwork"    # Landroid/net/Network;
    .param p3, "currAddress"    # Ljava/net/InetAddress;
    .param p4, "currLp"    # Landroid/net/LinkProperties;
    .param p5, "currNc"    # Landroid/net/NetworkCapabilities;

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 51
    return-void
.end method

.method private blacklist isCallbackForNewNetwork()Z
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist isReadyForUpdate()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist resetNetwork()V
    .registers 2

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    .line 126
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    .line 127
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    .line 128
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrAddress:Ljava/net/InetAddress;

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 60
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->logd(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->resetNetwork()V

    .line 63
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    .line 65
    :cond_23
    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCapabilitiesChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->logd(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 77
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->resetNetwork()V

    .line 78
    const-string v0, "onCapabilitiesChanged for new network, without onAvailable being called first"

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->logWtf(Ljava/lang/String;)V

    .line 79
    return-void

    .line 82
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->isCallbackForNewNetwork()Z

    move-result v0

    .line 83
    .local v0, "isNcChangedForNewNetwork":Z
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    .line 84
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->isReadyForUpdate()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 85
    if-eqz v0, :cond_57

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application default Network changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->logd(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;->onUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    goto :goto_5e

    .line 90
    :cond_57
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    invoke-interface {v1, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;->onCapabilitiesUpdated(Landroid/net/NetworkCapabilities;)V

    .line 93
    :cond_5e
    :goto_5e
    return-void
.end method

.method public whitelist onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLinkPropertiesChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->logd(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 105
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->resetNetwork()V

    .line 106
    const-string v0, "onLinkPropertiesChanged for new network, without onAvailable being called first"

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->logWtf(Ljava/lang/String;)V

    .line 109
    return-void

    .line 112
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->isCallbackForNewNetwork()Z

    move-result v0

    .line 113
    .local v0, "isLpChangedForNewNetwork":Z
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    .line 114
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->isReadyForUpdate()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 115
    if-eqz v0, :cond_57

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application default Network changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->logd(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;->onUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    goto :goto_68

    .line 118
    :cond_57
    invoke-virtual {p0, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->isCurrentAddressLost(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 119
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNetwork:Landroid/net/Network;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrLp:Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;->mCurrNc:Landroid/net/NetworkCapabilities;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;->onUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 122
    :cond_68
    :goto_68
    return-void
.end method
