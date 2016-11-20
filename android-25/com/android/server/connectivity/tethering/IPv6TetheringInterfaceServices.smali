.class Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;
.super Ljava/lang/Object;
.source "IPv6TetheringInterfaceServices.java"


# static fields
.field private static final LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

.field private static final RFC7421_IP_PREFIX_LENGTH:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHwAddr:[B

.field private final mIfName:Ljava/lang/String;

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 49
    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@8
    .line 50
    new-instance v0, Landroid/net/IpPrefix;

    #@a
    const-string/jumbo v1, "fe80::/64"

    #@d
    invoke-direct {v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    #@10
    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    #@12
    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/INetworkManagementService;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "nms"    # Landroid/os/INetworkManagementService;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@5
    .line 64
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    #@7
    .line 62
    return-void
.end method

.method private configureLocalDns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 197
    .local p1, "deprecatedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    .local p2, "newDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    #@3
    move-result-object v5

    #@4
    .line 198
    .local v5, "netd":Landroid/net/INetd;
    if-nez v5, :cond_1

    #@6
    .line 199
    if-eqz p2, :cond_0

    #@8
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    #@b
    .line 200
    :cond_0
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v7, "No netd service instance available; not setting local IPv6 addresses"

    #@10
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 201
    return-void

    #@14
    .line 205
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    #@17
    move-result v6

    #@18
    if-nez v6, :cond_2

    #@1a
    .line 206
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v2

    #@1e
    .local v2, "dns$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_2

    #@24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/net/Inet6Address;

    #@2a
    .line 207
    .local v1, "dns":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 209
    .local v3, "dnsString":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@30
    const/16 v7, 0x40

    #@32
    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 210
    :catch_0
    move-exception v4

    #@37
    .line 211
    .local v4, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@39
    new-instance v7, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v8, "Failed to remove local dns IP: "

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    goto :goto_0

    #@51
    .line 217
    .end local v1    # "dns":Ljava/net/Inet6Address;
    .end local v2    # "dns$iterator":Ljava/util/Iterator;
    .end local v3    # "dnsString":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p2, :cond_3

    #@53
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    #@56
    move-result v6

    #@57
    if-eqz v6, :cond_5

    #@59
    .line 235
    :cond_3
    :try_start_1
    invoke-interface {v5}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@5c
    .line 196
    :cond_4
    :goto_1
    return-void

    #@5d
    .line 218
    :cond_5
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Ljava/util/HashSet;

    #@63
    .line 219
    .local v0, "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@65
    if-eqz v6, :cond_6

    #@67
    .line 220
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@69
    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@6b
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    #@6e
    .line 223
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@71
    move-result-object v2

    #@72
    .restart local v2    # "dns$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@75
    move-result v6

    #@76
    if-eqz v6, :cond_3

    #@78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7b
    move-result-object v1

    #@7c
    check-cast v1, Ljava/net/Inet6Address;

    #@7e
    .line 224
    .restart local v1    # "dns":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    .line 226
    .restart local v3    # "dnsString":Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@84
    const/16 v7, 0x40

    #@86
    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@89
    goto :goto_2

    #@8a
    .line 227
    :catch_1
    move-exception v4

    #@8b
    .line 228
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@8d
    new-instance v7, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v8, "Failed to add local dns IP: "

    #@95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v7

    #@9d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v7

    #@a1
    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a4
    .line 229
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@a7
    goto :goto_2

    #@a8
    .line 236
    .end local v0    # "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    .end local v1    # "dns":Ljava/net/Inet6Address;
    .end local v2    # "dns$iterator":Ljava/util/Iterator;
    .end local v3    # "dnsString":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    #@a9
    .line 237
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@ab
    const-string/jumbo v7, "Failed to update local DNS caching server"

    #@ae
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b1
    .line 238
    if-eqz p2, :cond_4

    #@b3
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    #@b6
    goto :goto_1
.end method

.method private configureLocalRoutes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 150
    .local p1, "deprecatedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    .local p2, "newPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;

    #@9
    move-result-object v4

    #@a
    .line 153
    .local v4, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    #@c
    invoke-interface {v5, v4}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    #@f
    move-result v2

    #@10
    .line 154
    .local v2, "removalFailures":I
    if-lez v2, :cond_0

    #@12
    .line 155
    sget-object v5, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v6, "Failed to remove %d IPv6 routes from local table."

    #@17
    const/4 v7, 0x1

    #@18
    new-array v7, v7, [Ljava/lang/Object;

    #@1a
    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v8

    #@1e
    const/4 v9, 0x0

    #@1f
    aput-object v8, v7, v9

    #@21
    .line 155
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 164
    .end local v2    # "removalFailures":I
    .end local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    #@2a
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 148
    :cond_1
    :goto_1
    return-void

    #@31
    .line 158
    .restart local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :catch_0
    move-exception v1

    #@32
    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@34
    const-string/jumbo v6, "Failed to remove IPv6 routes from local table: "

    #@37
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0

    #@3b
    .line 165
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/util/HashSet;

    #@41
    .line 166
    .local v0, "addedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@43
    if-eqz v5, :cond_3

    #@45
    .line 167
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@47
    iget-object v5, v5, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@49
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    #@4c
    .line 170
    :cond_3
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@4e
    if-eqz v5, :cond_4

    #@50
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@52
    iget-object v5, v5, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@54
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_5

    #@5a
    .line 177
    :cond_4
    sget-object v5, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    #@5c
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5f
    .line 180
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    #@62
    move-result v5

    #@63
    if-nez v5, :cond_1

    #@65
    .line 181
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;

    #@68
    move-result-object v3

    #@69
    .line 187
    .local v3, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_1
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    #@6b
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@6d
    invoke-interface {v5, v6, v3}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@70
    goto :goto_1

    #@71
    .line 188
    :catch_1
    move-exception v1

    #@72
    .line 189
    .restart local v1    # "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@74
    const-string/jumbo v6, "Failed to add IPv6 routes to local table: "

    #@77
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    goto :goto_1
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .locals 6
    .param p0, "localPrefix"    # Landroid/net/IpPrefix;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 271
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    #@4
    move-result-object v0

    #@5
    .line 272
    .local v0, "dnsBytes":[B
    array-length v2, v0

    #@6
    add-int/lit8 v2, v2, -0x1

    #@8
    const/4 v3, 0x1

    #@9
    aput-byte v3, v0, v2

    #@b
    .line 274
    const/4 v2, 0x0

    #@c
    const/4 v3, 0x0

    #@d
    :try_start_0
    invoke-static {v2, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 275
    :catch_0
    move-exception v1

    #@13
    .line 276
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Failed to construct Inet6Address from: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 277
    return-object v5
.end method

.method private getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 262
    .local p1, "prefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 263
    .local v2, "localRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "ipp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/net/IpPrefix;

    #@15
    .line 264
    .local v0, "ipp":Landroid/net/IpPrefix;
    new-instance v3, Landroid/net/RouteInfo;

    #@17
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-direct {v3, v0, v5, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@1d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_0

    #@21
    .line 266
    .end local v0    # "ipp":Landroid/net/IpPrefix;
    :cond_0
    return-object v2
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 4
    .param p1, "newParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 243
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 245
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@7
    invoke-static {v1, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@a
    move-result-object v0

    #@b
    .line 247
    .local v0, "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@d
    .line 248
    if-eqz p1, :cond_2

    #@f
    iget-object v1, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@11
    .line 247
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->configureLocalRoutes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    #@14
    .line 250
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@16
    .line 251
    if-eqz p1, :cond_0

    #@18
    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@1a
    .line 250
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->configureLocalDns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    #@1d
    .line 253
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    #@1f
    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    #@22
    .line 256
    .end local v0    # "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    :cond_1
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@24
    .line 242
    return-void

    #@25
    .restart local v0    # "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    :cond_2
    move-object v1, v2

    #@26
    .line 248
    goto :goto_0
.end method


# virtual methods
.method public start()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@3
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 77
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@b
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    #@11
    .line 84
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@13
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    #@16
    move-result v1

    #@17
    .line 85
    .local v1, "ifindex":I
    new-instance v2, Landroid/net/ip/RouterAdvertisementDaemon;

    #@19
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@1b
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B

    #@1d
    invoke-direct {v2, v3, v1, v4}, Landroid/net/ip/RouterAdvertisementDaemon;-><init>(Ljava/lang/String;I[B)V

    #@20
    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    #@22
    .line 86
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    #@24
    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_0

    #@2a
    .line 87
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    #@2d
    .line 88
    return v5

    #@2e
    .line 70
    .end local v1    # "ifindex":I
    :catch_0
    move-exception v0

    #@2f
    .line 71
    .local v0, "e":Ljava/net/SocketException;
    sget-object v2, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Failed to find NetworkInterface for "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    .line 72
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    #@4d
    .line 73
    return v5

    #@4e
    .line 78
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    #@4f
    .line 79
    .restart local v0    # "e":Ljava/net/SocketException;
    sget-object v2, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "Failed to find hardware address for "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    .line 80
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    #@6d
    .line 81
    return v5

    #@6e
    .line 91
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "ifindex":I
    :cond_0
    const/4 v2, 0x1

    #@6f
    return v2
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@3
    .line 96
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B

    #@5
    .line 97
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    #@8
    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    #@e
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    #@11
    .line 101
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    #@13
    .line 94
    :cond_0
    return-void
.end method

.method public updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "v6only"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 112
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    #@2
    if-nez v5, :cond_0

    #@4
    return-void

    #@5
    .line 115
    :cond_0
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    #@7
    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 116
    return-void

    #@e
    .line 119
    :cond_1
    const/4 v3, 0x0

    #@f
    .line 121
    .local v3, "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p1, :cond_3

    #@11
    .line 122
    new-instance v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@13
    .end local v3    # "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    invoke-direct {v3}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    #@16
    .line 123
    .local v3, "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    #@19
    move-result v5

    #@1a
    iput v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    #@1c
    .line 124
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@1f
    move-result v5

    #@20
    iput-boolean v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    #@22
    .line 126
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    #@25
    move-result-object v5

    #@26
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v2

    #@2a
    .local v2, "linkAddr$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_3

    #@30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/net/LinkAddress;

    #@36
    .line 127
    .local v1, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@39
    move-result v5

    #@3a
    const/16 v6, 0x40

    #@3c
    if-ne v5, v6, :cond_2

    #@3e
    .line 129
    new-instance v4, Landroid/net/IpPrefix;

    #@40
    .line 130
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@47
    move-result v6

    #@48
    .line 129
    invoke-direct {v4, v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@4b
    .line 131
    .local v4, "prefix":Landroid/net/IpPrefix;
    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@4d
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@50
    .line 133
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    #@53
    move-result-object v0

    #@54
    .line 134
    .local v0, "dnsServer":Ljava/net/Inet6Address;
    if-eqz v0, :cond_2

    #@56
    .line 135
    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@58
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_0

    #@5c
    .line 142
    .end local v0    # "dnsServer":Ljava/net/Inet6Address;
    .end local v1    # "linkAddr":Landroid/net/LinkAddress;
    .end local v2    # "linkAddr$iterator":Ljava/util/Iterator;
    .end local v3    # "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .end local v4    # "prefix":Landroid/net/IpPrefix;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    #@5f
    .line 143
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    #@61
    .line 111
    return-void
.end method
