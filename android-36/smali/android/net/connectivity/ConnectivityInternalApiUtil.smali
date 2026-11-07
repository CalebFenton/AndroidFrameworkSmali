.class public Landroid/net/connectivity/ConnectivityInternalApiUtil;
.super Ljava/lang/Object;
.source "ConnectivityInternalApiUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildTetheringNetworkAgent(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;ILandroid/net/LinkProperties;)Landroid/net/NetworkAgent;
    .registers 18
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "transportType"    # I
    .param p4, "lp"    # Landroid/net/LinkProperties;

    .line 89
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 90
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 91
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 92
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 93
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 94
    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    .line 97
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 98
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 99
    .local v7, "caps":Landroid/net/NetworkCapabilities;
    new-instance v2, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v2}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v11

    .line 100
    .local v11, "nac":Landroid/net/NetworkAgentConfig;
    new-instance v3, Landroid/net/connectivity/ConnectivityInternalApiUtil$1;

    new-instance v2, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;

    invoke-direct {v2}, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;-><init>()V

    .line 101
    invoke-virtual {v2}, Landroid/net/connectivity/android/net/LocalNetworkConfig$Builder;->build()Landroid/net/connectivity/android/net/LocalNetworkConfig;

    move-result-object v9

    new-instance v2, Landroid/net/NetworkScore$Builder;

    invoke-direct {v2}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 102
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/net/NetworkScore$Builder;->setKeepConnectedReason(I)Landroid/net/NetworkScore$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v10

    const/4 v12, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v12}, Landroid/net/connectivity/ConnectivityInternalApiUtil$1;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 100
    return-object v3
.end method

.method public static blacklist getCompanionDeviceManagerProxyService(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 60
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getCompanionDeviceManagerProxyService()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getRoutingCoordinator(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 71
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getRoutingCoordinatorService()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method
