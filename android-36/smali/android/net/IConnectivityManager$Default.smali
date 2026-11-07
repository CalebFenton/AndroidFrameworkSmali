.class public Landroid/net/IConnectivityManager$Default;
.super Ljava/lang/Object;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
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

    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    return-void
.end method

.method public blacklist factoryReset()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    return-void
.end method

.method public blacklist getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveNetwork()Landroid/net/Network;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveNetworkForUid(IZ)Landroid/net/Network;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllNetworkState()[Landroid/net/NetworkState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllNetworkStateSnapshots()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkStateSnapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllNetworks()[Landroid/net/Network;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCaptivePortalServerUrl()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCompanionDeviceManagerProxyService()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectionOwnerUid(Landroid/net/connectivity/android/net/ConnectionInfo;)I
    .registers 3
    .param p1, "connectionInfo"    # Landroid/net/connectivity/android/net/ConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultNetworkCapabilitiesForUser(ILjava/lang/String;Ljava/lang/String;)[Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultRequest()Landroid/net/NetworkRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnabledConnectivityManagerFeatures()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getFirewallChainEnabled(I)Z
    .registers 3
    .param p1, "chain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastTetherError(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .registers 3
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultipathPreference(Landroid/net/Network;)I
    .registers 3
    .param p1, "Network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNetworkCapabilities(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkForType(I)Landroid/net/Network;
    .registers 3
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 3
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkWatchlistConfigHash()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 3
    .param p1, "nework"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRedactedLinkPropertiesForPackage(Landroid/net/LinkProperties;ILjava/lang/String;Ljava/lang/String;)Landroid/net/LinkProperties;
    .registers 6
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRedactedNetworkCapabilitiesForPackage(Landroid/net/NetworkCapabilities;ILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "uid"    # I
    .param p3, "callingPackageName"    # Ljava/lang/String;
    .param p4, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRestoreDefaultNetworkDelay(I)I
    .registers 3
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRestrictBackgroundStatusByCaller()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRoutingCoordinatorService()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportedKeepalives()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTetherableIfaces()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTetheredIfaces()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidFirewallRule(II)I
    .registers 4
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isActiveNetworkMetered()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isConnectivityServiceFeatureEnabledForTesting(Ljava/lang/String;)Z
    .registers 3
    .param p1, "featureFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDefaultNetworkActive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNetworkSupported(I)Z
    .registers 3
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)Landroid/net/NetworkRequest;
    .registers 9
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "callbackFlags"    # I
    .param p5, "callingPackageName"    # Ljava/lang/String;
    .param p6, "callingAttributionTag"    # Ljava/lang/String;
    .param p7, "declaredMethodsFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist offerNetwork(ILandroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Landroid/net/connectivity/android/net/INetworkOfferCallback;)V
    .registers 5
    .param p1, "providerId"    # I
    .param p2, "score"    # Landroid/net/NetworkScore;
    .param p3, "caps"    # Landroid/net/NetworkCapabilities;
    .param p4, "callback"    # Landroid/net/connectivity/android/net/INetworkOfferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    return-void
.end method

.method public blacklist pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "callingPackageName"    # Ljava/lang/String;
    .param p4, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    return-void
.end method

.method public blacklist pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkRequest;
    .registers 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "callingPackageName"    # Ljava/lang/String;
    .param p4, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;Landroid/net/NetworkRequest;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"    # Landroid/net/IConnectivityDiagnosticsCallback;
    .param p2, "request"    # Landroid/net/NetworkRequest;
    .param p3, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    return-void
.end method

.method public blacklist registerNetworkActivityListener(Landroid/net/connectivity/android/net/INetworkActivityListener;)V
    .registers 2
    .param p1, "l"    # Landroid/net/connectivity/android/net/INetworkActivityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    return-void
.end method

.method public blacklist registerNetworkAgent(Landroid/net/INetworkAgent;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/NetworkScore;Landroid/net/connectivity/android/net/LocalNetworkConfig;Landroid/net/NetworkAgentConfig;I)Landroid/net/connectivity/android/net/NetworkAndAgentRegistryParcelable;
    .registers 10
    .param p1, "na"    # Landroid/net/INetworkAgent;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "score"    # Landroid/net/NetworkScore;
    .param p6, "localNetworkConfig"    # Landroid/net/connectivity/android/net/LocalNetworkConfig;
    .param p7, "config"    # Landroid/net/NetworkAgentConfig;
    .param p8, "factorySerialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerNetworkProvider(Landroid/os/Messenger;Ljava/lang/String;)I
    .registers 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerQosSocketCallback(Landroid/net/QosSocketInfo;Landroid/net/connectivity/android/net/IQosCallback;)V
    .registers 3
    .param p1, "socketInfo"    # Landroid/net/QosSocketInfo;
    .param p2, "callback"    # Landroid/net/connectivity/android/net/IQosCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    return-void
.end method

.method public blacklist releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .registers 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    return-void
.end method

.method public blacklist releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    return-void
.end method

.method public blacklist replaceFirewallChain(I[I)V
    .registers 3
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    return-void
.end method

.method public blacklist reportInetCondition(II)V
    .registers 3
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public blacklist reportNetworkConnectivity(Landroid/net/Network;Z)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist requestBandwidthUpdate(Landroid/net/Network;)Z
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestNetwork(ILandroid/net/NetworkCapabilities;ILandroid/os/Messenger;ILandroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)Landroid/net/NetworkRequest;
    .registers 13
    .param p1, "uid"    # I
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "reqType"    # I
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "timeoutSec"    # I
    .param p6, "binder"    # Landroid/os/IBinder;
    .param p7, "legacy"    # I
    .param p8, "callbackFlags"    # I
    .param p9, "callingPackageName"    # Ljava/lang/String;
    .param p10, "callingAttributionTag"    # Ljava/lang/String;
    .param p11, "declaredMethodsFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist requestRouteToHostAddress(I[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B
    .param p3, "callingPackageName"    # Ljava/lang/String;
    .param p4, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public blacklist setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public blacklist setAirplaneMode(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    return-void
.end method

.method public blacklist setAvoidUnvalidated(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    return-void
.end method

.method public blacklist setDataSaverEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    return-void
.end method

.method public blacklist setFirewallChainEnabled(IZ)V
    .registers 3
    .param p1, "chain"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    return-void
.end method

.method public blacklist setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 2
    .param p1, "p"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist setLegacyLockdownVpnEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    return-void
.end method

.method public blacklist setOemNetworkPreference(Landroid/net/OemNetworkPreferences;Landroid/net/connectivity/android/net/IOnCompleteListener;)V
    .registers 3
    .param p1, "preference"    # Landroid/net/OemNetworkPreferences;
    .param p2, "listener"    # Landroid/net/connectivity/android/net/IOnCompleteListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    return-void
.end method

.method public blacklist setProfileNetworkPreferences(Landroid/os/UserHandle;Ljava/util/List;Landroid/net/connectivity/android/net/IOnCompleteListener;)V
    .registers 4
    .param p1, "profile"    # Landroid/os/UserHandle;
    .param p3, "listener"    # Landroid/net/connectivity/android/net/IOnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/net/ProfileNetworkPreference;",
            ">;",
            "Landroid/net/connectivity/android/net/IOnCompleteListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    .local p2, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/net/ProfileNetworkPreference;>;"
    return-void
.end method

.method public blacklist setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public blacklist setRequireVpnForUids(Z[Landroid/net/UidRange;)V
    .registers 3
    .param p1, "requireVpn"    # Z
    .param p2, "ranges"    # [Landroid/net/UidRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public blacklist setTestAllowBadWifiUntil(J)V
    .registers 3
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method public blacklist setTestLowTcpPollingTimerForKeepalive(J)V
    .registers 3
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    return-void
.end method

.method public blacklist setUidFirewallRule(III)V
    .registers 4
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    return-void
.end method

.method public blacklist setVpnNetworkPreference(Ljava/lang/String;[Landroid/net/UidRange;)V
    .registers 3
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "ranges"    # [Landroid/net/UidRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    return-void
.end method

.method public blacklist shouldAvoidBadWifi()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist simulateDataStall(IJLandroid/net/Network;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "detectionMethod"    # I
    .param p2, "timestampMillis"    # J
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "extras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    return-void
.end method

.method public blacklist startCaptivePortalApp(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    return-void
.end method

.method public blacklist startCaptivePortalAppInternal(Landroid/net/Network;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "appExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    return-void
.end method

.method public blacklist startNattKeepalive(Landroid/net/Network;ILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "cb"    # Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    .param p4, "srcAddr"    # Ljava/lang/String;
    .param p5, "srcPort"    # I
    .param p6, "dstAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    return-void
.end method

.method public blacklist startNattKeepaliveWithFd(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;IILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;)V
    .registers 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "resourceId"    # I
    .param p4, "intervalSeconds"    # I
    .param p5, "cb"    # Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    .param p6, "srcAddr"    # Ljava/lang/String;
    .param p7, "dstAddr"    # Ljava/lang/String;
    .param p8, "automaticOnOffKeepalives"    # Z
    .param p9, "underpinnedNetwork"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    return-void
.end method

.method public blacklist startOrGetTestNetworkService()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist startTcpKeepalive(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;ILandroid/net/connectivity/android/net/ISocketKeepaliveCallback;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "intervalSeconds"    # I
    .param p4, "cb"    # Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    return-void
.end method

.method public blacklist stopKeepalive(Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;)V
    .registers 2
    .param p1, "cb"    # Landroid/net/connectivity/android/net/ISocketKeepaliveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    return-void
.end method

.method public blacklist systemReady()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    return-void
.end method

.method public blacklist unofferNetwork(Landroid/net/connectivity/android/net/INetworkOfferCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/android/net/INetworkOfferCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    return-void
.end method

.method public blacklist unregisterConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/IConnectivityDiagnosticsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    return-void
.end method

.method public blacklist unregisterNetworkActivityListener(Landroid/net/connectivity/android/net/INetworkActivityListener;)V
    .registers 2
    .param p1, "l"    # Landroid/net/connectivity/android/net/INetworkActivityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    return-void
.end method

.method public blacklist unregisterNetworkProvider(Landroid/os/Messenger;)V
    .registers 2
    .param p1, "messenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public blacklist unregisterQosCallback(Landroid/net/connectivity/android/net/IQosCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/android/net/IQosCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    return-void
.end method
