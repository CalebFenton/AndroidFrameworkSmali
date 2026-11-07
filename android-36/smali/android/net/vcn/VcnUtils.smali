.class public Landroid/net/vcn/VcnUtils;
.super Ljava/lang/Object;
.source "VcnUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSubIdFromVcnCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)I
    .registers 6
    .param p0, "connectivityMgr"    # Landroid/net/ConnectivityManager;
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 62
    nop

    .line 63
    invoke-static {p0, p1}, Landroid/net/vcn/VcnUtils;->getVcnUnderlyingCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 65
    .local v0, "underlyingCaps":Landroid/net/NetworkCapabilities;
    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 66
    return v1

    .line 69
    :cond_9
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    .line 70
    .local v2, "underlyingNetworkSpecifier":Landroid/net/NetworkSpecifier;
    instance-of v3, v2, Landroid/net/TelephonyNetworkSpecifier;

    if-nez v3, :cond_12

    .line 71
    return v1

    .line 74
    :cond_12
    move-object v1, v2

    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v1

    return v1
.end method

.method private static blacklist getVcnUnderlyingCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 4
    .param p0, "connectivityMgr"    # Landroid/net/ConnectivityManager;
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 82
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 83
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    instance-of v0, v0, Landroid/net/vcn/VcnTransportInfo;

    if-nez v0, :cond_10

    goto :goto_23

    .line 90
    :cond_10
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "underlyingNws":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    if-nez v0, :cond_17

    .line 92
    return-object v1

    .line 95
    :cond_17
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    return-object v1

    .line 84
    .end local v0    # "underlyingNws":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    :cond_23
    :goto_23
    return-object v1
.end method

.method public static blacklist getWifiInfoFromVcnCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;
    .registers 6
    .param p0, "connectivityMgr"    # Landroid/net/ConnectivityManager;
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 43
    nop

    .line 44
    invoke-static {p0, p1}, Landroid/net/vcn/VcnUtils;->getVcnUnderlyingCaps(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 46
    .local v0, "underlyingCaps":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 47
    return-object v1

    .line 50
    :cond_9
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v2

    .line 51
    .local v2, "underlyingTransportInfo":Landroid/net/TransportInfo;
    instance-of v3, v2, Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_12

    .line 52
    return-object v1

    .line 55
    :cond_12
    move-object v1, v2

    check-cast v1, Landroid/net/wifi/WifiInfo;

    return-object v1
.end method
