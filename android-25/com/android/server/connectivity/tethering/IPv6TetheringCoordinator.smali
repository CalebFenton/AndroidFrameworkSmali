.class public Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
.super Ljava/lang/Object;
.source "IPv6TetheringCoordinator.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mActiveDownstreams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mUpstreamNetworkState:Landroid/net/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    #@8
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p1, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    #@5
    .line 54
    new-instance v0, Ljava/util/LinkedList;

    #@7
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    #@c
    .line 52
    return-void
.end method

.method private static canTetherIPv6(Landroid/net/NetworkState;)Z
    .locals 9
    .param p0, "ns"    # Landroid/net/NetworkState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 167
    if-eqz p0, :cond_4

    #@3
    iget-object v7, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@5
    if-eqz v7, :cond_4

    #@7
    .line 168
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@9
    if-eqz v7, :cond_4

    #@b
    iget-object v7, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@d
    if-eqz v7, :cond_4

    #@f
    .line 170
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@11
    invoke-virtual {v7}, Landroid/net/LinkProperties;->isProvisioned()Z

    #@14
    move-result v7

    #@15
    .line 167
    if-eqz v7, :cond_4

    #@17
    .line 172
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@19
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@1c
    move-result v7

    #@1d
    .line 167
    if-eqz v7, :cond_4

    #@1f
    .line 173
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@21
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@24
    move-result v7

    #@25
    .line 167
    if-eqz v7, :cond_4

    #@27
    .line 175
    iget-object v7, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@29
    invoke-virtual {v7, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@2c
    move-result v0

    #@2d
    .line 181
    .local v0, "canTether":Z
    :goto_0
    const/4 v5, 0x0

    #@2e
    .line 182
    .local v5, "v4default":Landroid/net/RouteInfo;
    const/4 v6, 0x0

    #@2f
    .line 183
    .local v6, "v6default":Landroid/net/RouteInfo;
    if-eqz v0, :cond_2

    #@31
    .line 184
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@33
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@36
    move-result-object v7

    #@37
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v3

    #@3b
    .end local v5    # "v4default":Landroid/net/RouteInfo;
    .end local v6    # "v6default":Landroid/net/RouteInfo;
    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_2

    #@41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Landroid/net/RouteInfo;

    #@47
    .line 185
    .local v2, "r":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isIPv4Default()Z

    #@4a
    move-result v7

    #@4b
    if-eqz v7, :cond_5

    #@4d
    .line 186
    move-object v5, v2

    #@4e
    .line 191
    :cond_1
    :goto_1
    if-eqz v5, :cond_0

    #@50
    if-eqz v6, :cond_0

    #@52
    .line 198
    .end local v2    # "r":Landroid/net/RouteInfo;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz v5, :cond_6

    #@54
    if-eqz v6, :cond_6

    #@56
    .line 199
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    if-eqz v7, :cond_6

    #@5c
    .line 200
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v4

    #@68
    .line 202
    :goto_2
    if-eqz v0, :cond_3

    #@6a
    move v1, v4

    #@6b
    .line 213
    .local v1, "outcome":Z
    :cond_3
    return v1

    #@6c
    .end local v0    # "canTether":Z
    .end local v1    # "outcome":Z
    :cond_4
    move v0, v1

    #@6d
    .line 167
    goto :goto_0

    #@6e
    .line 187
    .restart local v0    # "canTether":Z
    .restart local v2    # "r":Landroid/net/RouteInfo;
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isIPv6Default()Z

    #@71
    move-result v7

    #@72
    if-eqz v7, :cond_1

    #@74
    .line 188
    move-object v6, v2

    #@75
    .local v6, "v6default":Landroid/net/RouteInfo;
    goto :goto_1

    #@76
    .line 198
    .end local v2    # "r":Landroid/net/RouteInfo;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    .end local v6    # "v6default":Landroid/net/RouteInfo;
    :cond_6
    const/4 v4, 0x0

    #@77
    .local v4, "supportedConfiguration":Z
    goto :goto_2
.end method

.method private static getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 10
    .param p0, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    const/16 v9, 0x40

    #@2
    .line 217
    new-instance v7, Landroid/net/LinkProperties;

    #@4
    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    #@7
    .line 218
    .local v7, "v6only":Landroid/net/LinkProperties;
    if-nez p0, :cond_0

    #@9
    .line 219
    return-object v7

    #@a
    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@d
    move-result-object v8

    #@e
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@11
    .line 227
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    #@14
    move-result v8

    #@15
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setMtu(I)V

    #@18
    .line 229
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    #@1b
    move-result-object v8

    #@1c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v4

    #@20
    .local v4, "linkAddr$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_2

    #@26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Landroid/net/LinkAddress;

    #@2c
    .line 230
    .local v3, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v3}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_1

    #@32
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@35
    move-result v8

    #@36
    if-ne v8, v9, :cond_1

    #@38
    .line 231
    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 235
    .end local v3    # "linkAddr":Landroid/net/LinkAddress;
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@3f
    move-result-object v8

    #@40
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v6

    #@44
    .local v6, "routeInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_4

    #@4a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Landroid/net/RouteInfo;

    #@50
    .line 236
    .local v5, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@53
    move-result-object v0

    #@54
    .line 237
    .local v0, "destination":Landroid/net/IpPrefix;
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@57
    move-result-object v8

    #@58
    instance-of v8, v8, Ljava/net/Inet6Address;

    #@5a
    if-eqz v8, :cond_3

    #@5c
    .line 238
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@5f
    move-result v8

    #@60
    if-gt v8, v9, :cond_3

    #@62
    .line 239
    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@65
    goto :goto_1

    #@66
    .line 243
    .end local v0    # "destination":Landroid/net/IpPrefix;
    .end local v5    # "routeInfo":Landroid/net/RouteInfo;
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@69
    move-result-object v8

    #@6a
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6d
    move-result-object v2

    #@6e
    .local v2, "dnsServer$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@71
    move-result v8

    #@72
    if-eqz v8, :cond_6

    #@74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@77
    move-result-object v1

    #@78
    check-cast v1, Ljava/net/InetAddress;

    #@7a
    .line 244
    .local v1, "dnsServer":Ljava/net/InetAddress;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->isIPv6GlobalAddress(Ljava/net/InetAddress;)Z

    #@7d
    move-result v8

    #@7e
    if-eqz v8, :cond_5

    #@80
    .line 246
    invoke-virtual {v7, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@83
    goto :goto_2

    #@84
    .line 250
    .end local v1    # "dnsServer":Ljava/net/InetAddress;
    :cond_6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    #@8b
    .line 252
    return-object v7
.end method

.method private getInterfaceIPv6LinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/LinkProperties;
    .locals 5
    .param p1, "sm"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 126
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v4

    #@6
    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x2

    #@b
    if-ne v2, v3, :cond_1

    #@d
    .line 130
    return-object v4

    #@e
    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    #@10
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@16
    .line 139
    .local v0, "currentActive":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    if-eqz v0, :cond_2

    #@18
    if-ne v0, p1, :cond_2

    #@1a
    .line 141
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    #@1c
    iget-object v2, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@1e
    .line 140
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    #@21
    move-result-object v1

    #@22
    .line 142
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2

    #@2e
    .line 143
    return-object v1

    #@2f
    .line 147
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_2
    return-object v4
.end method

.method private static isIPv6GlobalAddress(Ljava/net/InetAddress;)Z
    .locals 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 258
    instance-of v1, p0, Ljava/net/Inet6Address;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 259
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 258
    :cond_0
    :goto_0
    return v0

    #@c
    .line 260
    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 261
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 262
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 263
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    const/4 v0, 0x1

    #@25
    goto :goto_0
.end method

.method private setUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 7
    .param p1, "ns"    # Landroid/net/NetworkState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 99
    if-nez p1, :cond_0

    #@3
    .line 100
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    #@5
    .line 98
    :goto_0
    return-void

    #@6
    .line 103
    :cond_0
    new-instance v0, Landroid/net/NetworkState;

    #@8
    .line 105
    new-instance v2, Landroid/net/LinkProperties;

    #@a
    iget-object v3, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@c
    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@f
    .line 106
    new-instance v3, Landroid/net/NetworkCapabilities;

    #@11
    iget-object v4, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@13
    invoke-direct {v3, v4}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@16
    .line 107
    new-instance v4, Landroid/net/Network;

    #@18
    iget-object v5, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@1a
    invoke-direct {v4, v5}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    #@1d
    move-object v5, v1

    #@1e
    move-object v6, v1

    #@1f
    .line 103
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@22
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    #@24
    goto :goto_0
.end method

.method private static stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 3
    .param p0, "sm"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 277
    const v0, 0x50071

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@8
    .line 276
    return-void
.end method

.method private stopIPv6TetheringOnAllInterfaces()V
    .locals 3

    #@0
    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "sm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@12
    .line 94
    .local v0, "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@15
    goto :goto_0

    #@16
    .line 92
    .end local v0    # "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_0
    return-void
.end method

.method private static toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 4
    .param p0, "ns"    # Landroid/net/NetworkState;

    #@0
    .prologue
    .line 267
    if-nez p0, :cond_0

    #@2
    .line 268
    const-string/jumbo v0, "NetworkState{null}"

    #@5
    return-object v0

    #@6
    .line 270
    :cond_0
    const-string/jumbo v0, "NetworkState{%s, %s, %s}"

    #@9
    const/4 v1, 0x3

    #@a
    new-array v1, v1, [Ljava/lang/Object;

    #@c
    .line 271
    iget-object v2, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    .line 272
    iget-object v2, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v2, v1, v3

    #@16
    .line 273
    iget-object v2, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@18
    const/4 v3, 0x2

    #@19
    aput-object v2, v1, v3

    #@1b
    .line 270
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method private updateIPv6TetheringInterfaces()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 118
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "sm$iterator":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@13
    .line 119
    .local v1, "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getInterfaceIPv6LinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/LinkProperties;

    #@16
    move-result-object v0

    #@17
    .line 120
    .local v0, "lp":Landroid/net/LinkProperties;
    const v3, 0x50071

    #@1a
    invoke-virtual {v1, v3, v4, v4, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@1d
    .line 117
    .end local v0    # "lp":Landroid/net/LinkProperties;
    .end local v1    # "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_0
    return-void
.end method


# virtual methods
.method public addActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 2
    .param p1, "downstream"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 61
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    #@e
    .line 62
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    #@11
    .line 57
    :cond_0
    return-void
.end method

.method public removeActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 1
    .param p1, "downstream"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@0
    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@3
    .line 68
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 69
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    #@e
    .line 66
    :cond_0
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 2
    .param p1, "ns"    # Landroid/net/NetworkState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->canTetherIPv6(Landroid/net/NetworkState;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 78
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    #@a
    .line 79
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@d
    .line 80
    return-void

    #@e
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 84
    iget-object v0, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@14
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    #@16
    iget-object v1, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@18
    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 88
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    #@21
    .line 89
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    #@24
    .line 73
    return-void

    #@25
    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    #@28
    goto :goto_0
.end method
