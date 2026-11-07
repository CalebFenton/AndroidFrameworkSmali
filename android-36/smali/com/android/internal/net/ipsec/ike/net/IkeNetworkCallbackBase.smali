.class public abstract Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "IkeNetworkCallbackBase.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist mCurrAddress:Ljava/net/InetAddress;

.field protected blacklist mCurrLp:Landroid/net/LinkProperties;

.field protected blacklist mCurrNc:Landroid/net/NetworkCapabilities;

.field protected blacklist mCurrNetwork:Landroid/net/Network;

.field protected final blacklist mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "ikeNetworkUpdater"    # Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;
    .param p2, "currNetwork"    # Landroid/net/Network;
    .param p3, "currAddress"    # Ljava/net/InetAddress;
    .param p4, "currLp"    # Landroid/net/LinkProperties;
    .param p5, "currNc"    # Landroid/net/NetworkCapabilities;

    .line 46
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;

    .line 48
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrNetwork:Landroid/net/Network;

    .line 49
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrLp:Landroid/net/LinkProperties;

    .line 50
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrNc:Landroid/net/NetworkCapabilities;

    .line 51
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrAddress:Ljava/net/InetAddress;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public blacklist getNetwork()Landroid/net/Network;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrNetwork:Landroid/net/Network;

    return-object v0
.end method

.method protected blacklist isCurrentAddressLost(Landroid/net/LinkProperties;)Z
    .registers 7
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 66
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrAddress:Ljava/net/InetAddress;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 67
    return v1

    .line 73
    :cond_6
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 74
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 75
    const/4 v0, 0x0

    return v0

    .line 77
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    :cond_28
    goto :goto_e

    .line 79
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkPropertiesChanged indicates current address "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lost on current Network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrNetwork:Landroid/net/Network;

    .line 83
    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->logd(Ljava/lang/String;)V

    .line 84
    return v1
.end method

.method protected blacklist logWtf(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 123
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 57
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 58
    return-void

    .line 61
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLost invoked for current Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->logd(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mIkeNetworkUpdater:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;->onUnderlyingNetworkDied()V

    .line 63
    return-void
.end method

.method public blacklist setAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 113
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrAddress:Ljava/net/InetAddress;

    .line 114
    return-void
.end method

.method public blacklist setNetwork(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "nc"    # Landroid/net/NetworkCapabilities;

    .line 94
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrNetwork:Landroid/net/Network;

    .line 95
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrLp:Landroid/net/LinkProperties;

    .line 96
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrNc:Landroid/net/NetworkCapabilities;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->mCurrAddress:Ljava/net/InetAddress;

    .line 98
    return-void
.end method
