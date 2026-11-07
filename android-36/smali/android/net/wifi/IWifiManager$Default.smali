.class public Landroid/net/wifi/IWifiManager$Default;
.super Ljava/lang/Object;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
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
.method public blacklist acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockTag"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    return-void
.end method

.method public blacklist acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "lockType"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addCustomDhcpOptions(Landroid/net/wifi/WifiSsid;[BLcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    .registers 4
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "oui"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiSsid;",
            "[B",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/DhcpOption;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    .local p3, "options":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/DhcpOption;>;"
    return-void
.end method

.method public blacklist addLocalOnlyConnectionStatusListener(Landroid/net/wifi/ILocalOnlyConnectionStatusListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/ILocalOnlyConnectionStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    return-void
.end method

.method public blacklist addNetworkSuggestions(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    .local p1, "networkSuggestions":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addOnWifiUsabilityStatsListener(Landroid/net/wifi/IOnWifiUsabilityStatsListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IOnWifiUsabilityStatsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    return-void
.end method

.method public blacklist addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addOrUpdateNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiManager$AddNetworkResult;
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addQosPolicies(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/IListListener;)V
    .registers 5
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/net/wifi/IListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/QosPolicyParams;",
            ">;",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Landroid/net/wifi/IListListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    .local p1, "policyParamsList":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/QosPolicyParams;>;"
    return-void
.end method

.method public blacklist addSuggestionUserApprovalStatusListener(Landroid/net/wifi/ISuggestionUserApprovalStatusListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/ISuggestionUserApprovalStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    return-void
.end method

.method public blacklist addWifiLowLatencyLockListener(Landroid/net/wifi/IWifiLowLatencyLockListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiLowLatencyLockListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    return-void
.end method

.method public blacklist addWifiNetworkStateChangedListener(Landroid/net/wifi/IWifiNetworkStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiNetworkStateChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public blacklist addWifiStateChangedListener(Landroid/net/wifi/IWifiStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiStateChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    return-void
.end method

.method public blacklist addWifiVerboseLoggingStatusChangedListener(Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    return-void
.end method

.method public blacklist allowAutojoin(IZ)V
    .registers 3
    .param p1, "netId"    # I
    .param p2, "choice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public blacklist allowAutojoinGlobal(ZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "choice"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist allowAutojoinPasspoint(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "enableAutoJoin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 745
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist calculateSignalLevel(I)I
    .registers 3
    .param p1, "rssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearExternalPnoScanRequest()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    return-void
.end method

.method public blacklist clearOverrideCountryCode()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public blacklist clearWifiConnectedNetworkScorer()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    return-void
.end method

.method public blacklist connect(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/IActionListener;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netId"    # I
    .param p3, "listener"    # Landroid/net/wifi/IActionListener;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    return-void
.end method

.method public blacklist disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    return-void
.end method

.method public blacklist disableMscs()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    return-void
.end method

.method public blacklist disableNetwork(ILjava/lang/String;)Z
    .registers 4
    .param p1, "netId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disallowCurrentSuggestedNetwork(Landroid/net/wifi/BlockingOption;Ljava/lang/String;)V
    .registers 3
    .param p1, "option"    # Landroid/net/wifi/BlockingOption;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    return-void
.end method

.method public blacklist disconnect(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableMscs(Landroid/net/wifi/MscsParams;)V
    .registers 2
    .param p1, "mscsParams"    # Landroid/net/wifi/MscsParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    return-void
.end method

.method public blacklist enableNetwork(IZLjava/lang/String;)Z
    .registers 5
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableTdls(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "remoteIPAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    return-void
.end method

.method public blacklist enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    return-void
.end method

.method public blacklist enableTdlsWithRemoteIpAddress(Ljava/lang/String;ZLandroid/net/wifi/IBooleanListener;)V
    .registers 4
    .param p1, "remoteIPAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    return-void
.end method

.method public blacklist enableTdlsWithRemoteMacAddress(Ljava/lang/String;ZLandroid/net/wifi/IBooleanListener;)V
    .registers 4
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    return-void
.end method

.method public blacklist enableVerboseLogging(I)V
    .registers 2
    .param p1, "verbose"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    return-void
.end method

.method public blacklist factoryReset(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    return-void
.end method

.method public blacklist flushPasspointAnqpCache(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    return-void
.end method

.method public blacklist forget(ILandroid/net/wifi/IActionListener;)V
    .registers 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/IActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    return-void
.end method

.method public blacklist getAllMatchingPasspointProfilesForScanResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    .local p1, "scanResult":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAutojoinDisallowedSecurityTypes(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/IIntegerListener;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    return-void
.end method

.method public blacklist getBssidBlocklist(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/net/wifi/IMacAddressListListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/net/wifi/IMacAddressListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiSsid;",
            ">;",
            "Landroid/net/wifi/IMacAddressListListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    .local p1, "ssids":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    return-void
.end method

.method public blacklist getChannelData(Landroid/net/wifi/IListListener;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/IListListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist getConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "callerNetworksOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectionInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiInfo;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCountryCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentNetwork()Landroid/net/Network;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDhcpInfo(Ljava/lang/String;)Landroid/net/DhcpInfo;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFactoryMacAddresses()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastCallerInfoForApi(ILandroid/net/wifi/ILastCallerListener;)V
    .registers 3
    .param p1, "api"    # I
    .param p2, "listener"    # Landroid/net/wifi/ILastCallerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    return-void
.end method

.method public blacklist getLinkLayerStatsPollingInterval(Landroid/net/wifi/IIntegerListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IIntegerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    return-void
.end method

.method public blacklist getMatchingOsuProviders(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    .local p1, "scanResult":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMatchingPasspointConfigsForOsuProviders(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    .local p1, "osuProviders":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMatchingScanResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    .local p1, "networkSuggestions":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    .local p2, "scanResults":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxMloAssociationLinkCount(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/IIntegerListener;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    return-void
.end method

.method public blacklist getMaxMloStrLinkCount(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/IIntegerListener;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    return-void
.end method

.method public blacklist getMaxNumberOfChannelsPerRequest()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxSupportedConcurrentTdlsSessions(Landroid/net/wifi/IIntegerListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/IIntegerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    return-void
.end method

.method public blacklist getMloMode(Landroid/net/wifi/IIntegerListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IIntegerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    return-void
.end method

.method public blacklist getNetworkSelectionConfig(Landroid/net/wifi/IWifiNetworkSelectionConfigListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiNetworkSelectionConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist getNetworkSuggestions(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNumberOfEnabledTdlsSessions(Landroid/net/wifi/IIntegerListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/IIntegerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    return-void
.end method

.method public blacklist getOemPrivilegedWifiAdminPackages()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPasspointConfigurations(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPerSsidRoamingModes(Ljava/lang/String;Landroid/net/wifi/IMapListener;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/wifi/IMapListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    return-void
.end method

.method public blacklist getPrivilegedConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrivilegedConnectedNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/wifi/WifiConfiguration;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getScanResults(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSsidsAllowlist(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStaConcurrencyForMultiInternetMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStatsTwtSession(ILandroid/net/wifi/ITwtStatsListener;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "listener"    # Landroid/net/wifi/ITwtStatsListener;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    return-void
.end method

.method public blacklist getSupportedSimultaneousBandCombinations(Landroid/net/wifi/IWifiBandsListener;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/IWifiBandsListener;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    return-void
.end method

.method public blacklist getTwtCapabilities(Landroid/net/wifi/ITwtCapabilitiesListener;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/ITwtCapabilitiesListener;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    return-void
.end method

.method public blacklist getUsableChannels(IIILjava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .registers 7
    .param p1, "band"    # I
    .param p2, "mode"    # I
    .param p3, "filter"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiAvailableChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVerboseLoggingLevel()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWifiActivityEnergyInfoAsync(Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiApEnabledState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    .local p1, "scanResults":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiConfigsForPasspointProfiles(Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 3
    .param p1, "fqdnList"    # Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;",
            ")",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiEnabledState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initializeMulticastFiltering()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    return-void
.end method

.method public blacklist is24GHzBandSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist is5GHzBandSupported()Z
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

.method public blacklist is60GHzBandSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist is6GHzBandSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAutoWakeupEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCarrierNetworkOffloadEnabled(IZ)Z
    .registers 4
    .param p1, "subscriptionId"    # I
    .param p2, "merged"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDefaultCoexAlgorithmEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFeatureSupported(I)Z
    .registers 3
    .param p1, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMulticastEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPnoSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScanAlwaysAvailable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScanThrottleEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTdlsOperationCurrentlyAvailable(Landroid/net/wifi/IBooleanListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    return-void
.end method

.method public blacklist isThirdPartyAppEnablingWifiConfirmationDialogEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsdPublisherSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUsdSubscriberSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiPasspointEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiStandardSupported(I)Z
    .registers 3
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .registers 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyMinimumRequiredWifiSecurityLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    return-void
.end method

.method public blacklist notifyWifiSsidPolicyChanged(ILcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    .registers 3
    .param p1, "policyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiSsid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    .local p2, "ssids":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    return-void
.end method

.method public blacklist queryAutojoinGlobal(Landroid/net/wifi/IBooleanListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist queryD2dAllowedWhenInfraStaDisabled(Landroid/net/wifi/IBooleanListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 712
    return-void
.end method

.method public blacklist queryLastConfiguredTetheredApPassphraseSinceBoot(Landroid/net/wifi/IStringListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IStringListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    return-void
.end method

.method public blacklist queryPasspointIcon(JLjava/lang/String;)V
    .registers 4
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist querySendDhcpHostnameRestriction(Ljava/lang/String;Landroid/net/wifi/IIntegerListener;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/wifi/IIntegerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 685
    return-void
.end method

.method public blacklist queryWepAllowed(Landroid/net/wifi/IBooleanListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    return-void
.end method

.method public blacklist reassociate(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reconnect(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerCoexCallback(Landroid/net/wifi/ICoexCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ICoexCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist registerDriverCountryCodeChangedListener(Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    return-void
.end method

.method public blacklist registerLocalOnlyHotspotSoftApCallback(Landroid/net/wifi/ISoftApCallback;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "callback"    # Landroid/net/wifi/ISoftApCallback;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    return-void
.end method

.method public blacklist registerNetworkRequestMatchCallback(Landroid/net/wifi/INetworkRequestMatchCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/INetworkRequestMatchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    return-void
.end method

.method public blacklist registerScanResultsCallback(Landroid/net/wifi/IScanResultsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/IScanResultsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    return-void
.end method

.method public blacklist registerSoftApCallback(Landroid/net/wifi/ISoftApCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ISoftApCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    return-void
.end method

.method public blacklist registerSubsystemRestartCallback(Landroid/net/wifi/ISubsystemRestartCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ISubsystemRestartCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    return-void
.end method

.method public blacklist registerSuggestionConnectionStatusListener(Landroid/net/wifi/ISuggestionConnectionStatusListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/ISuggestionConnectionStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    return-void
.end method

.method public blacklist registerTrafficStateCallback(Landroid/net/wifi/ITrafficStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ITrafficStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    return-void
.end method

.method public blacklist releaseMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    return-void
.end method

.method public blacklist releaseWifiLock(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "lock"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeAllQosPolicies(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    return-void
.end method

.method public blacklist removeAppState(ILjava/lang/String;)V
    .registers 3
    .param p1, "targetAppUid"    # I
    .param p2, "targetApppackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    return-void
.end method

.method public blacklist removeCustomDhcpOptions(Landroid/net/wifi/WifiSsid;[B)V
    .registers 3
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "oui"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    return-void
.end method

.method public blacklist removeLocalOnlyConnectionStatusListener(Landroid/net/wifi/ILocalOnlyConnectionStatusListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/ILocalOnlyConnectionStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    return-void
.end method

.method public blacklist removeNetwork(ILjava/lang/String;)Z
    .registers 4
    .param p1, "netId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeNetworkSuggestions(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;I)I
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    .local p1, "networkSuggestions":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeNonCallerConfiguredNetworks(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOnWifiUsabilityStatsListener(Landroid/net/wifi/IOnWifiUsabilityStatsListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IOnWifiUsabilityStatsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    return-void
.end method

.method public blacklist removePasspointConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removePerSsidRoamingMode(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)V
    .registers 3
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    return-void
.end method

.method public blacklist removeQosPolicies([ILjava/lang/String;)V
    .registers 3
    .param p1, "policyIdList"    # [I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    return-void
.end method

.method public blacklist removeSuggestionUserApprovalStatusListener(Landroid/net/wifi/ISuggestionUserApprovalStatusListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/ISuggestionUserApprovalStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    return-void
.end method

.method public blacklist removeWifiLowLatencyLockListener(Landroid/net/wifi/IWifiLowLatencyLockListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiLowLatencyLockListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    return-void
.end method

.method public blacklist removeWifiNetworkStateChangedListener(Landroid/net/wifi/IWifiNetworkStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiNetworkStateChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public blacklist removeWifiStateChangedListener(Landroid/net/wifi/IWifiStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiStateChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    return-void
.end method

.method public blacklist removeWifiVerboseLoggingStatusChangedListener(Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    return-void
.end method

.method public blacklist replyToP2pInvitationReceivedDialog(IZLjava/lang/String;)V
    .registers 4
    .param p1, "dialogId"    # I
    .param p2, "accepted"    # Z
    .param p3, "optionalPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    return-void
.end method

.method public blacklist replyToSimpleDialog(II)V
    .registers 3
    .param p1, "dialogId"    # I
    .param p2, "reply"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    return-void
.end method

.method public blacklist reportCreateInterfaceImpact(Ljava/lang/String;IZLandroid/net/wifi/IInterfaceCreationInfoCallback;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "interfaceType"    # I
    .param p3, "requireNewInterface"    # Z
    .param p4, "callback"    # Landroid/net/wifi/IInterfaceCreationInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    return-void
.end method

.method public blacklist restartWifiSubsystem()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    return-void
.end method

.method public blacklist restoreBackupData([B)V
    .registers 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    return-void
.end method

.method public blacklist restoreSoftApBackupData([B)Landroid/net/wifi/SoftApConfiguration;
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist restoreSupplicantBackupData([B[B)V
    .registers 3
    .param p1, "supplicantData"    # [B
    .param p2, "ipConfigData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    return-void
.end method

.method public blacklist restoreWifiBackupData([B)V
    .registers 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    return-void
.end method

.method public blacklist retrieveBackupData()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist retrieveSoftApBackupData()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist retrieveWifiBackupData(Landroid/net/wifi/IByteArrayListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IByteArrayListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    return-void
.end method

.method public blacklist save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/IActionListener;Ljava/lang/String;)V
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/IActionListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    return-void
.end method

.method public blacklist setAutoWakeupEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    return-void
.end method

.method public blacklist setAutojoinDisallowedSecurityTypes(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "restrictions"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    return-void
.end method

.method public blacklist setCarrierNetworkOffloadEnabled(IZZ)V
    .registers 4
    .param p1, "subscriptionId"    # I
    .param p2, "merged"    # Z
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    return-void
.end method

.method public blacklist setCoexUnsafeChannels(Ljava/util/List;I)V
    .registers 3
    .param p2, "mandatoryRestrictions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/CoexUnsafeChannel;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    .local p1, "unsafeChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/CoexUnsafeChannel;>;"
    return-void
.end method

.method public blacklist setD2dAllowedWhenInfraStaDisabled(Z)V
    .registers 2
    .param p1, "isAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    return-void
.end method

.method public blacklist setDefaultCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    return-void
.end method

.method public blacklist setDeviceMobilityState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    return-void
.end method

.method public blacklist setEmergencyScanRequestInProgress(Z)V
    .registers 2
    .param p1, "inProgress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    return-void
.end method

.method public blacklist setExternalPnoScanRequest(Landroid/os/IBinder;Landroid/net/wifi/IPnoScanResultsCallback;Ljava/util/List;[ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/net/wifi/IPnoScanResultsCallback;
    .param p4, "frequencies"    # [I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/net/wifi/IPnoScanResultsCallback;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiSsid;",
            ">;[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    .local p3, "ssids":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    return-void
.end method

.method public blacklist setLinkLayerStatsPollingInterval(I)V
    .registers 2
    .param p1, "intervalMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    return-void
.end method

.method public blacklist setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist setMloMode(ILandroid/net/wifi/IBooleanListener;)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    return-void
.end method

.method public blacklist setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V
    .registers 2
    .param p1, "nsConfig"    # Landroid/net/wifi/WifiNetworkSelectionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setOneShotScreenOnConnectivityScanDelayMillis(I)V
    .registers 2
    .param p1, "delayMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist setOverrideCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public blacklist setPasspointMeteredOverride(Ljava/lang/String;I)V
    .registers 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "meteredOverride"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public blacklist setPerSsidRoamingMode(Landroid/net/wifi/WifiSsid;ILjava/lang/String;)V
    .registers 4
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "roamingMode"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    return-void
.end method

.method public blacklist setPnoScanEnabled(ZZLjava/lang/String;)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "enablePnoScanAfterWifiToggle"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    return-void
.end method

.method public blacklist setScanAlwaysAvailable(ZLjava/lang/String;)V
    .registers 3
    .param p1, "isAvailable"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public blacklist setScanThrottleEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    return-void
.end method

.method public blacklist setScreenOnScanSchedule([I[I)V
    .registers 3
    .param p1, "scanScheduleSeconds"    # [I
    .param p2, "scanType"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist setSendDhcpHostnameRestriction(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restriction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    return-void
.end method

.method public blacklist setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)Z
    .registers 4
    .param p1, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSsidsAllowlist(Ljava/lang/String;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/wifi/WifiSsid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    .local p2, "ssids":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    return-void
.end method

.method public blacklist setStaConcurrencyForMultiInternetMode(I)Z
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setThirdPartyAppEnablingWifiConfirmationDialogEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist setWepAllowed(Z)V
    .registers 2
    .param p1, "isAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    return-void
.end method

.method public blacklist setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .registers 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setWifiConnectedNetworkScorer(Landroid/os/IBinder;Landroid/net/wifi/IWifiConnectedNetworkScorer;)Z
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "scorer"    # Landroid/net/wifi/IWifiConnectedNetworkScorer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setWifiEnabled(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setWifiPasspointEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    return-void
.end method

.method public blacklist setWifiScoringEnabled(Z)Z
    .registers 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setupTwtSession(Landroid/net/wifi/twt/TwtRequest;Landroid/net/wifi/ITwtCallback;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "twtRequest"    # Landroid/net/wifi/twt/TwtRequest;
    .param p2, "callback"    # Landroid/net/wifi/ITwtCallback;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    return-void
.end method

.method public blacklist startDppAsConfiguratorInitiator(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IILandroid/net/wifi/IDppCallback;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enrolleeUri"    # Ljava/lang/String;
    .param p4, "selectedNetworkId"    # I
    .param p5, "netRole"    # I
    .param p6, "callback"    # Landroid/net/wifi/IDppCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    return-void
.end method

.method public blacklist startDppAsEnrolleeInitiator(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/IDppCallback;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "configuratorUri"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/wifi/IDppCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    return-void
.end method

.method public blacklist startDppAsEnrolleeResponder(Landroid/os/IBinder;Ljava/lang/String;ILandroid/net/wifi/IDppCallback;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "deviceInfo"    # Ljava/lang/String;
    .param p3, "curve"    # I
    .param p4, "callback"    # Landroid/net/wifi/IDppCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    return-void
.end method

.method public blacklist startLocalOnlyHotspot(Landroid/net/wifi/ILocalOnlyHotspotCallback;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration;Landroid/os/Bundle;Z)I
    .registers 8
    .param p1, "callback"    # Landroid/net/wifi/ILocalOnlyHotspotCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "customConfig"    # Landroid/net/wifi/SoftApConfiguration;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "isCalledFromSystemApi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startRestrictingAutoJoinToSubscriptionId(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    return-void
.end method

.method public blacklist startScan(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startSoftAp(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .registers 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    .registers 3
    .param p1, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p2, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    return-void
.end method

.method public blacklist startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)Z
    .registers 4
    .param p1, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startTetheredHotspotRequest(Landroid/net/TetheringManager$TetheringRequest;Landroid/net/wifi/ISoftApCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "request"    # Landroid/net/TetheringManager$TetheringRequest;
    .param p2, "callback"    # Landroid/net/wifi/ISoftApCallback;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    return-void
.end method

.method public blacklist startWatchLocalOnlyHotspot(Landroid/net/wifi/ILocalOnlyHotspotCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ILocalOnlyHotspotCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    return-void
.end method

.method public blacklist stopDppSession()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    return-void
.end method

.method public blacklist stopLocalOnlyHotspot()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    return-void
.end method

.method public blacklist stopRestrictingAutoJoinToSubscriptionId()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    return-void
.end method

.method public blacklist stopSoftAp()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopWatchLocalOnlyHotspot()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    return-void
.end method

.method public blacklist storeCapturedData(IZJJLandroid/net/wifi/IIntegerListener;)V
    .registers 8
    .param p1, "triggerType"    # I
    .param p2, "isFullCapture"    # Z
    .param p3, "triggerStartTimeMillis"    # J
    .param p5, "triggerStopTimeMillis"    # J
    .param p7, "listener"    # Landroid/net/wifi/IIntegerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    return-void
.end method

.method public blacklist teardownTwtSession(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    return-void
.end method

.method public blacklist unregisterCoexCallback(Landroid/net/wifi/ICoexCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ICoexCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method

.method public blacklist unregisterDriverCountryCodeChangedListener(Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public blacklist unregisterLocalOnlyHotspotSoftApCallback(Landroid/net/wifi/ISoftApCallback;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "callback"    # Landroid/net/wifi/ISoftApCallback;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    return-void
.end method

.method public blacklist unregisterNetworkRequestMatchCallback(Landroid/net/wifi/INetworkRequestMatchCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/INetworkRequestMatchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    return-void
.end method

.method public blacklist unregisterScanResultsCallback(Landroid/net/wifi/IScanResultsCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/IScanResultsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    return-void
.end method

.method public blacklist unregisterSoftApCallback(Landroid/net/wifi/ISoftApCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ISoftApCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    return-void
.end method

.method public blacklist unregisterSubsystemRestartCallback(Landroid/net/wifi/ISubsystemRestartCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ISubsystemRestartCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    return-void
.end method

.method public blacklist unregisterSuggestionConnectionStatusListener(Landroid/net/wifi/ISuggestionConnectionStatusListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/wifi/ISuggestionConnectionStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    return-void
.end method

.method public blacklist unregisterTrafficStateCallback(Landroid/net/wifi/ITrafficStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/wifi/ITrafficStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    return-void
.end method

.method public blacklist updateInterfaceIpState(Ljava/lang/String;I)V
    .registers 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public blacklist updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    return-void
.end method

.method public blacklist updateWifiUsabilityScore(III)V
    .registers 4
    .param p1, "seqNum"    # I
    .param p2, "score"    # I
    .param p3, "predictionHorizonSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    return-void
.end method

.method public blacklist validateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/SoftApConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    return v0
.end method
