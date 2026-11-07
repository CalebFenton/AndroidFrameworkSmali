.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final greylist-max-o TRANSACTION_acquireMulticastLock:I = 0x43

.field static final greylist-max-o TRANSACTION_acquireWifiLock:I = 0x3e

.field static final blacklist TRANSACTION_addCustomDhcpOptions:I = 0xb0

.field static final blacklist TRANSACTION_addLocalOnlyConnectionStatusListener:I = 0x89

.field static final blacklist TRANSACTION_addNetworkSuggestions:I = 0x78

.field static final blacklist TRANSACTION_addOnWifiUsabilityStatsListener:I = 0x72

.field static final greylist-max-o TRANSACTION_addOrUpdateNetwork:I = 0x10

.field static final blacklist TRANSACTION_addOrUpdateNetworkPrivileged:I = 0x11

.field static final greylist-max-o TRANSACTION_addOrUpdatePasspointConfiguration:I = 0x12

.field static final blacklist TRANSACTION_addQosPolicies:I = 0xb4

.field static final blacklist TRANSACTION_addSuggestionUserApprovalStatusListener:I = 0xa0

.field static final blacklist TRANSACTION_addWifiLowLatencyLockListener:I = 0xbb

.field static final blacklist TRANSACTION_addWifiNetworkStateChangedListener:I = 0x30

.field static final blacklist TRANSACTION_addWifiStateChangedListener:I = 0x2c

.field static final blacklist TRANSACTION_addWifiVerboseLoggingStatusChangedListener:I = 0x70

.field static final blacklist TRANSACTION_allowAutojoin:I = 0x1e

.field static final blacklist TRANSACTION_allowAutojoinGlobal:I = 0x1c

.field static final blacklist TRANSACTION_allowAutojoinPasspoint:I = 0x1f

.field static final blacklist TRANSACTION_calculateSignalLevel:I = 0x8b

.field static final blacklist TRANSACTION_clearExternalPnoScanRequest:I = 0x91

.field static final blacklist TRANSACTION_clearOverrideCountryCode:I = 0x34

.field static final blacklist TRANSACTION_clearWifiConnectedNetworkScorer:I = 0x8e

.field static final blacklist TRANSACTION_connect:I = 0x82

.field static final greylist-max-o TRANSACTION_disableEphemeralNetwork:I = 0x65

.field static final blacklist TRANSACTION_disableMscs:I = 0xc3

.field static final greylist-max-o TRANSACTION_disableNetwork:I = 0x1b

.field static final blacklist TRANSACTION_disallowCurrentSuggestedNetwork:I = 0xd4

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x26

.field static final blacklist TRANSACTION_enableMscs:I = 0xc2

.field static final greylist-max-o TRANSACTION_enableNetwork:I = 0x1a

.field static final greylist-max-o TRANSACTION_enableTdls:I = 0x5b

.field static final greylist-max-o TRANSACTION_enableTdlsWithMacAddress:I = 0x5d

.field static final blacklist TRANSACTION_enableTdlsWithRemoteIpAddress:I = 0x5c

.field static final blacklist TRANSACTION_enableTdlsWithRemoteMacAddress:I = 0x5e

.field static final greylist-max-o TRANSACTION_enableVerboseLogging:I = 0x63

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x66

.field static final blacklist TRANSACTION_flushPasspointAnqpCache:I = 0xa5

.field static final blacklist TRANSACTION_forget:I = 0x84

.field static final blacklist TRANSACTION_getAllMatchingPasspointProfilesForScanResults:I = 0x96

.field static final blacklist TRANSACTION_getAutojoinDisallowedSecurityTypes:I = 0xd3

.field static final blacklist TRANSACTION_getBssidBlocklist:I = 0x25

.field static final blacklist TRANSACTION_getChannelData:I = 0x24

.field static final greylist-max-o TRANSACTION_getConfiguredNetworks:I = 0x9

.field static final greylist-max-o TRANSACTION_getConnectionInfo:I = 0x29

.field static final greylist-max-o TRANSACTION_getCountryCode:I = 0x32

.field static final greylist-max-o TRANSACTION_getCurrentNetwork:I = 0x67

.field static final greylist-max-o TRANSACTION_getCurrentNetworkWpsNfcConfigurationToken:I = 0x62

.field static final greylist-max-o TRANSACTION_getDhcpInfo:I = 0x3b

.field static final blacklist TRANSACTION_getFactoryMacAddresses:I = 0x7b

.field static final blacklist TRANSACTION_getLastCallerInfoForApi:I = 0x92

.field static final blacklist TRANSACTION_getLinkLayerStatsPollingInterval:I = 0xb8

.field static final greylist-max-o TRANSACTION_getMatchingOsuProviders:I = 0xe

.field static final blacklist TRANSACTION_getMatchingPasspointConfigsForOsuProviders:I = 0xf

.field static final blacklist TRANSACTION_getMatchingScanResults:I = 0x93

.field static final blacklist TRANSACTION_getMaxMloAssociationLinkCount:I = 0xbd

.field static final blacklist TRANSACTION_getMaxMloStrLinkCount:I = 0xbe

.field static final blacklist TRANSACTION_getMaxNumberOfChannelsPerRequest:I = 0xb3

.field static final blacklist TRANSACTION_getMaxSupportedConcurrentTdlsSessions:I = 0x60

.field static final blacklist TRANSACTION_getMloMode:I = 0xba

.field static final blacklist TRANSACTION_getNetworkSelectionConfig:I = 0x4

.field static final blacklist TRANSACTION_getNetworkSuggestions:I = 0x7a

.field static final blacklist TRANSACTION_getNumberOfEnabledTdlsSessions:I = 0x61

.field static final blacklist TRANSACTION_getOemPrivilegedWifiAdminPackages:I = 0xad

.field static final greylist-max-o TRANSACTION_getPasspointConfigurations:I = 0x14

.field static final blacklist TRANSACTION_getPerSsidRoamingModes:I = 0xc8

.field static final greylist-max-o TRANSACTION_getPrivilegedConfiguredNetworks:I = 0xa

.field static final blacklist TRANSACTION_getPrivilegedConnectedNetwork:I = 0xb

.field static final greylist-max-r TRANSACTION_getScanResults:I = 0x23

.field static final blacklist TRANSACTION_getSoftApConfiguration:I = 0x57

.field static final blacklist TRANSACTION_getSsidsAllowlist:I = 0xd

.field static final blacklist TRANSACTION_getStaConcurrencyForMultiInternetMode:I = 0xa9

.field static final blacklist TRANSACTION_getStatsTwtSession:I = 0xcb

.field static final blacklist TRANSACTION_getSupportedSimultaneousBandCombinations:I = 0xbf

.field static final blacklist TRANSACTION_getTwtCapabilities:I = 0xc9

.field static final blacklist TRANSACTION_getUsableChannels:I = 0xa6

.field static final greylist-max-o TRANSACTION_getVerboseLoggingLevel:I = 0x64

.field static final blacklist TRANSACTION_getWifiActivityEnergyInfoAsync:I = 0x2

.field static final greylist-max-o TRANSACTION_getWifiApConfiguration:I = 0x56

.field static final greylist-max-o TRANSACTION_getWifiApEnabledState:I = 0x55

.field static final blacklist TRANSACTION_getWifiConfigForMatchedNetworkSuggestionsSharedWithUser:I = 0x8c

.field static final blacklist TRANSACTION_getWifiConfigsForPasspointProfiles:I = 0x15

.field static final greylist-max-o TRANSACTION_getWifiEnabledState:I = 0x2b

.field static final greylist-max-o TRANSACTION_initializeMulticastFiltering:I = 0x41

.field static final blacklist TRANSACTION_is24GHzBandSupported:I = 0x36

.field static final blacklist TRANSACTION_is5GHzBandSupported:I = 0x37

.field static final blacklist TRANSACTION_is60GHzBandSupported:I = 0x39

.field static final blacklist TRANSACTION_is6GHzBandSupported:I = 0x38

.field static final blacklist TRANSACTION_isAutoWakeupEnabled:I = 0x98

.field static final blacklist TRANSACTION_isCarrierNetworkOffloadEnabled:I = 0x9c

.field static final blacklist TRANSACTION_isDefaultCoexAlgorithmEnabled:I = 0x46

.field static final blacklist TRANSACTION_isFeatureSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_isMulticastEnabled:I = 0x42

.field static final blacklist TRANSACTION_isPnoSupported:I = 0xd1

.field static final greylist-max-o TRANSACTION_isScanAlwaysAvailable:I = 0x3d

.field static final blacklist TRANSACTION_isScanThrottleEnabled:I = 0x95

.field static final blacklist TRANSACTION_isTdlsOperationCurrentlyAvailable:I = 0x5f

.field static final blacklist TRANSACTION_isThirdPartyAppEnablingWifiConfirmationDialogEnabled:I = 0x6

.field static final blacklist TRANSACTION_isUsdPublisherSupported:I = 0xd7

.field static final blacklist TRANSACTION_isUsdSubscriberSupported:I = 0xd6

.field static final blacklist TRANSACTION_isWifiPasspointEnabled:I = 0xa7

.field static final blacklist TRANSACTION_isWifiStandardSupported:I = 0x3a

.field static final greylist-max-o TRANSACTION_matchProviderWithCurrentNetwork:I = 0x17

.field static final blacklist TRANSACTION_notifyMinimumRequiredWifiSecurityLevelChanged:I = 0xab

.field static final blacklist TRANSACTION_notifyWifiSsidPolicyChanged:I = 0xac

.field static final blacklist TRANSACTION_queryAutojoinGlobal:I = 0x1d

.field static final blacklist TRANSACTION_queryD2dAllowedWhenInfraStaDisabled:I = 0xce

.field static final blacklist TRANSACTION_queryLastConfiguredTetheredApPassphraseSinceBoot:I = 0x58

.field static final greylist-max-o TRANSACTION_queryPasspointIcon:I = 0x16

.field static final blacklist TRANSACTION_querySendDhcpHostnameRestriction:I = 0xc5

.field static final blacklist TRANSACTION_queryWepAllowed:I = 0xc1

.field static final greylist-max-o TRANSACTION_reassociate:I = 0x28

.field static final greylist-max-o TRANSACTION_reconnect:I = 0x27

.field static final blacklist TRANSACTION_registerCoexCallback:I = 0x48

.field static final blacklist TRANSACTION_registerDriverCountryCodeChangedListener:I = 0x2e

.field static final blacklist TRANSACTION_registerLocalOnlyHotspotSoftApCallback:I = 0x51

.field static final blacklist TRANSACTION_registerNetworkRequestMatchCallback:I = 0x76

.field static final blacklist TRANSACTION_registerScanResultsCallback:I = 0x85

.field static final greylist-max-o TRANSACTION_registerSoftApCallback:I = 0x6e

.field static final blacklist TRANSACTION_registerSubsystemRestartCallback:I = 0x9d

.field static final blacklist TRANSACTION_registerSuggestionConnectionStatusListener:I = 0x87

.field static final blacklist TRANSACTION_registerTrafficStateCallback:I = 0x74

.field static final greylist-max-o TRANSACTION_releaseMulticastLock:I = 0x44

.field static final greylist-max-o TRANSACTION_releaseWifiLock:I = 0x40

.field static final blacklist TRANSACTION_removeAllQosPolicies:I = 0xb6

.field static final blacklist TRANSACTION_removeAppState:I = 0xa3

.field static final blacklist TRANSACTION_removeCustomDhcpOptions:I = 0xb1

.field static final blacklist TRANSACTION_removeLocalOnlyConnectionStatusListener:I = 0x8a

.field static final greylist-max-o TRANSACTION_removeNetwork:I = 0x18

.field static final blacklist TRANSACTION_removeNetworkSuggestions:I = 0x79

.field static final blacklist TRANSACTION_removeNonCallerConfiguredNetworks:I = 0x19

.field static final blacklist TRANSACTION_removeOnWifiUsabilityStatsListener:I = 0x73

.field static final greylist-max-o TRANSACTION_removePasspointConfiguration:I = 0x13

.field static final blacklist TRANSACTION_removePerSsidRoamingMode:I = 0xc7

.field static final blacklist TRANSACTION_removeQosPolicies:I = 0xb5

.field static final blacklist TRANSACTION_removeSuggestionUserApprovalStatusListener:I = 0xa1

.field static final blacklist TRANSACTION_removeWifiLowLatencyLockListener:I = 0xbc

.field static final blacklist TRANSACTION_removeWifiNetworkStateChangedListener:I = 0x31

.field static final blacklist TRANSACTION_removeWifiStateChangedListener:I = 0x2d

.field static final blacklist TRANSACTION_removeWifiVerboseLoggingStatusChangedListener:I = 0x71

.field static final blacklist TRANSACTION_replyToP2pInvitationReceivedDialog:I = 0xae

.field static final blacklist TRANSACTION_replyToSimpleDialog:I = 0xaf

.field static final blacklist TRANSACTION_reportCreateInterfaceImpact:I = 0xb2

.field static final blacklist TRANSACTION_restartWifiSubsystem:I = 0x9f

.field static final greylist-max-o TRANSACTION_restoreBackupData:I = 0x69

.field static final blacklist TRANSACTION_restoreSoftApBackupData:I = 0x6b

.field static final greylist-max-o TRANSACTION_restoreSupplicantBackupData:I = 0x6c

.field static final blacklist TRANSACTION_restoreWifiBackupData:I = 0xd0

.field static final greylist-max-o TRANSACTION_retrieveBackupData:I = 0x68

.field static final blacklist TRANSACTION_retrieveSoftApBackupData:I = 0x6a

.field static final blacklist TRANSACTION_retrieveWifiBackupData:I = 0xcf

.field static final blacklist TRANSACTION_save:I = 0x83

.field static final blacklist TRANSACTION_setAutoWakeupEnabled:I = 0x97

.field static final blacklist TRANSACTION_setAutojoinDisallowedSecurityTypes:I = 0xd2

.field static final blacklist TRANSACTION_setCarrierNetworkOffloadEnabled:I = 0x9b

.field static final blacklist TRANSACTION_setCoexUnsafeChannels:I = 0x47

.field static final blacklist TRANSACTION_setD2dAllowedWhenInfraStaDisabled:I = 0xcd

.field static final blacklist TRANSACTION_setDefaultCountryCode:I = 0x35

.field static final blacklist TRANSACTION_setDeviceMobilityState:I = 0x7c

.field static final blacklist TRANSACTION_setEmergencyScanRequestInProgress:I = 0xa2

.field static final blacklist TRANSACTION_setExternalPnoScanRequest:I = 0x8f

.field static final blacklist TRANSACTION_setLinkLayerStatsPollingInterval:I = 0xb7

.field static final blacklist TRANSACTION_setMacRandomizationSettingPasspointEnabled:I = 0x20

.field static final blacklist TRANSACTION_setMloMode:I = 0xb9

.field static final blacklist TRANSACTION_setNetworkSelectionConfig:I = 0x3

.field static final blacklist TRANSACTION_setOneShotScreenOnConnectivityScanDelayMillis:I = 0x8

.field static final blacklist TRANSACTION_setOverrideCountryCode:I = 0x33

.field static final blacklist TRANSACTION_setPasspointMeteredOverride:I = 0x21

.field static final blacklist TRANSACTION_setPerSsidRoamingMode:I = 0xc6

.field static final blacklist TRANSACTION_setPnoScanEnabled:I = 0x90

.field static final blacklist TRANSACTION_setScanAlwaysAvailable:I = 0x3c

.field static final blacklist TRANSACTION_setScanThrottleEnabled:I = 0x94

.field static final blacklist TRANSACTION_setScreenOnScanSchedule:I = 0x7

.field static final blacklist TRANSACTION_setSendDhcpHostnameRestriction:I = 0xc4

.field static final blacklist TRANSACTION_setSoftApConfiguration:I = 0x5a

.field static final blacklist TRANSACTION_setSsidsAllowlist:I = 0xc

.field static final blacklist TRANSACTION_setStaConcurrencyForMultiInternetMode:I = 0xaa

.field static final blacklist TRANSACTION_setThirdPartyAppEnablingWifiConfirmationDialogEnabled:I = 0x5

.field static final blacklist TRANSACTION_setWepAllowed:I = 0xc0

.field static final greylist-max-o TRANSACTION_setWifiApConfiguration:I = 0x59

.field static final blacklist TRANSACTION_setWifiConnectedNetworkScorer:I = 0x8d

.field static final greylist-max-o TRANSACTION_setWifiEnabled:I = 0x2a

.field static final blacklist TRANSACTION_setWifiPasspointEnabled:I = 0xa8

.field static final blacklist TRANSACTION_setWifiScoringEnabled:I = 0xa4

.field static final blacklist TRANSACTION_setupTwtSession:I = 0xca

.field static final blacklist TRANSACTION_startDppAsConfiguratorInitiator:I = 0x7d

.field static final blacklist TRANSACTION_startDppAsEnrolleeInitiator:I = 0x7e

.field static final blacklist TRANSACTION_startDppAsEnrolleeResponder:I = 0x7f

.field static final greylist-max-o TRANSACTION_startLocalOnlyHotspot:I = 0x4f

.field static final blacklist TRANSACTION_startRestrictingAutoJoinToSubscriptionId:I = 0x99

.field static final greylist-max-o TRANSACTION_startScan:I = 0x22

.field static final greylist-max-o TRANSACTION_startSoftAp:I = 0x4a

.field static final greylist-max-o TRANSACTION_startSubscriptionProvisioning:I = 0x6d

.field static final blacklist TRANSACTION_startTetheredHotspot:I = 0x4b

.field static final blacklist TRANSACTION_startTetheredHotspotRequest:I = 0x4c

.field static final greylist-max-o TRANSACTION_startWatchLocalOnlyHotspot:I = 0x53

.field static final blacklist TRANSACTION_stopDppSession:I = 0x80

.field static final greylist-max-o TRANSACTION_stopLocalOnlyHotspot:I = 0x50

.field static final blacklist TRANSACTION_stopRestrictingAutoJoinToSubscriptionId:I = 0x9a

.field static final greylist-max-o TRANSACTION_stopSoftAp:I = 0x4d

.field static final greylist-max-o TRANSACTION_stopWatchLocalOnlyHotspot:I = 0x54

.field static final blacklist TRANSACTION_storeCapturedData:I = 0xd5

.field static final blacklist TRANSACTION_teardownTwtSession:I = 0xcc

.field static final blacklist TRANSACTION_unregisterCoexCallback:I = 0x49

.field static final blacklist TRANSACTION_unregisterDriverCountryCodeChangedListener:I = 0x2f

.field static final blacklist TRANSACTION_unregisterLocalOnlyHotspotSoftApCallback:I = 0x52

.field static final blacklist TRANSACTION_unregisterNetworkRequestMatchCallback:I = 0x77

.field static final blacklist TRANSACTION_unregisterScanResultsCallback:I = 0x86

.field static final greylist-max-o TRANSACTION_unregisterSoftApCallback:I = 0x6f

.field static final blacklist TRANSACTION_unregisterSubsystemRestartCallback:I = 0x9e

.field static final blacklist TRANSACTION_unregisterSuggestionConnectionStatusListener:I = 0x88

.field static final blacklist TRANSACTION_unregisterTrafficStateCallback:I = 0x75

.field static final greylist-max-o TRANSACTION_updateInterfaceIpState:I = 0x45

.field static final greylist-max-o TRANSACTION_updateWifiLockWorkSource:I = 0x3f

.field static final blacklist TRANSACTION_updateWifiUsabilityScore:I = 0x81

.field static final blacklist TRANSACTION_validateSoftApConfiguration:I = 0x4e


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 754
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 755
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 763
    if-nez p0, :cond_4

    .line 764
    const/4 v0, 0x0

    return-object v0

    .line 766
    :cond_4
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 767
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_14

    .line 768
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IWifiManager;

    return-object v1

    .line 770
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 779
    packed-switch p0, :pswitch_data_28a

    .line 1643
    const/4 v0, 0x0

    return-object v0

    .line 1639
    :pswitch_5
    const-string v0, "isUsdPublisherSupported"

    return-object v0

    .line 1635
    :pswitch_8
    const-string v0, "isUsdSubscriberSupported"

    return-object v0

    .line 1631
    :pswitch_b
    const-string v0, "storeCapturedData"

    return-object v0

    .line 1627
    :pswitch_e
    const-string v0, "disallowCurrentSuggestedNetwork"

    return-object v0

    .line 1623
    :pswitch_11
    const-string v0, "getAutojoinDisallowedSecurityTypes"

    return-object v0

    .line 1619
    :pswitch_14
    const-string v0, "setAutojoinDisallowedSecurityTypes"

    return-object v0

    .line 1615
    :pswitch_17
    const-string v0, "isPnoSupported"

    return-object v0

    .line 1611
    :pswitch_1a
    const-string v0, "restoreWifiBackupData"

    return-object v0

    .line 1607
    :pswitch_1d
    const-string v0, "retrieveWifiBackupData"

    return-object v0

    .line 1603
    :pswitch_20
    const-string v0, "queryD2dAllowedWhenInfraStaDisabled"

    return-object v0

    .line 1599
    :pswitch_23
    const-string v0, "setD2dAllowedWhenInfraStaDisabled"

    return-object v0

    .line 1595
    :pswitch_26
    const-string v0, "teardownTwtSession"

    return-object v0

    .line 1591
    :pswitch_29
    const-string v0, "getStatsTwtSession"

    return-object v0

    .line 1587
    :pswitch_2c
    const-string v0, "setupTwtSession"

    return-object v0

    .line 1583
    :pswitch_2f
    const-string v0, "getTwtCapabilities"

    return-object v0

    .line 1579
    :pswitch_32
    const-string v0, "getPerSsidRoamingModes"

    return-object v0

    .line 1575
    :pswitch_35
    const-string v0, "removePerSsidRoamingMode"

    return-object v0

    .line 1571
    :pswitch_38
    const-string v0, "setPerSsidRoamingMode"

    return-object v0

    .line 1567
    :pswitch_3b
    const-string v0, "querySendDhcpHostnameRestriction"

    return-object v0

    .line 1563
    :pswitch_3e
    const-string v0, "setSendDhcpHostnameRestriction"

    return-object v0

    .line 1559
    :pswitch_41
    const-string v0, "disableMscs"

    return-object v0

    .line 1555
    :pswitch_44
    const-string v0, "enableMscs"

    return-object v0

    .line 1551
    :pswitch_47
    const-string v0, "queryWepAllowed"

    return-object v0

    .line 1547
    :pswitch_4a
    const-string v0, "setWepAllowed"

    return-object v0

    .line 1543
    :pswitch_4d
    const-string v0, "getSupportedSimultaneousBandCombinations"

    return-object v0

    .line 1539
    :pswitch_50
    const-string v0, "getMaxMloStrLinkCount"

    return-object v0

    .line 1535
    :pswitch_53
    const-string v0, "getMaxMloAssociationLinkCount"

    return-object v0

    .line 1531
    :pswitch_56
    const-string v0, "removeWifiLowLatencyLockListener"

    return-object v0

    .line 1527
    :pswitch_59
    const-string v0, "addWifiLowLatencyLockListener"

    return-object v0

    .line 1523
    :pswitch_5c
    const-string v0, "getMloMode"

    return-object v0

    .line 1519
    :pswitch_5f
    const-string v0, "setMloMode"

    return-object v0

    .line 1515
    :pswitch_62
    const-string v0, "getLinkLayerStatsPollingInterval"

    return-object v0

    .line 1511
    :pswitch_65
    const-string v0, "setLinkLayerStatsPollingInterval"

    return-object v0

    .line 1507
    :pswitch_68
    const-string v0, "removeAllQosPolicies"

    return-object v0

    .line 1503
    :pswitch_6b
    const-string v0, "removeQosPolicies"

    return-object v0

    .line 1499
    :pswitch_6e
    const-string v0, "addQosPolicies"

    return-object v0

    .line 1495
    :pswitch_71
    const-string v0, "getMaxNumberOfChannelsPerRequest"

    return-object v0

    .line 1491
    :pswitch_74
    const-string v0, "reportCreateInterfaceImpact"

    return-object v0

    .line 1487
    :pswitch_77
    const-string v0, "removeCustomDhcpOptions"

    return-object v0

    .line 1483
    :pswitch_7a
    const-string v0, "addCustomDhcpOptions"

    return-object v0

    .line 1479
    :pswitch_7d
    const-string v0, "replyToSimpleDialog"

    return-object v0

    .line 1475
    :pswitch_80
    const-string v0, "replyToP2pInvitationReceivedDialog"

    return-object v0

    .line 1471
    :pswitch_83
    const-string v0, "getOemPrivilegedWifiAdminPackages"

    return-object v0

    .line 1467
    :pswitch_86
    const-string v0, "notifyWifiSsidPolicyChanged"

    return-object v0

    .line 1463
    :pswitch_89
    const-string v0, "notifyMinimumRequiredWifiSecurityLevelChanged"

    return-object v0

    .line 1459
    :pswitch_8c
    const-string v0, "setStaConcurrencyForMultiInternetMode"

    return-object v0

    .line 1455
    :pswitch_8f
    const-string v0, "getStaConcurrencyForMultiInternetMode"

    return-object v0

    .line 1451
    :pswitch_92
    const-string v0, "setWifiPasspointEnabled"

    return-object v0

    .line 1447
    :pswitch_95
    const-string v0, "isWifiPasspointEnabled"

    return-object v0

    .line 1443
    :pswitch_98
    const-string v0, "getUsableChannels"

    return-object v0

    .line 1439
    :pswitch_9b
    const-string v0, "flushPasspointAnqpCache"

    return-object v0

    .line 1435
    :pswitch_9e
    const-string v0, "setWifiScoringEnabled"

    return-object v0

    .line 1431
    :pswitch_a1
    const-string v0, "removeAppState"

    return-object v0

    .line 1427
    :pswitch_a4
    const-string v0, "setEmergencyScanRequestInProgress"

    return-object v0

    .line 1423
    :pswitch_a7
    const-string v0, "removeSuggestionUserApprovalStatusListener"

    return-object v0

    .line 1419
    :pswitch_aa
    const-string v0, "addSuggestionUserApprovalStatusListener"

    return-object v0

    .line 1415
    :pswitch_ad
    const-string v0, "restartWifiSubsystem"

    return-object v0

    .line 1411
    :pswitch_b0
    const-string v0, "unregisterSubsystemRestartCallback"

    return-object v0

    .line 1407
    :pswitch_b3
    const-string v0, "registerSubsystemRestartCallback"

    return-object v0

    .line 1403
    :pswitch_b6
    const-string v0, "isCarrierNetworkOffloadEnabled"

    return-object v0

    .line 1399
    :pswitch_b9
    const-string v0, "setCarrierNetworkOffloadEnabled"

    return-object v0

    .line 1395
    :pswitch_bc
    const-string v0, "stopRestrictingAutoJoinToSubscriptionId"

    return-object v0

    .line 1391
    :pswitch_bf
    const-string v0, "startRestrictingAutoJoinToSubscriptionId"

    return-object v0

    .line 1387
    :pswitch_c2
    const-string v0, "isAutoWakeupEnabled"

    return-object v0

    .line 1383
    :pswitch_c5
    const-string v0, "setAutoWakeupEnabled"

    return-object v0

    .line 1379
    :pswitch_c8
    const-string v0, "getAllMatchingPasspointProfilesForScanResults"

    return-object v0

    .line 1375
    :pswitch_cb
    const-string v0, "isScanThrottleEnabled"

    return-object v0

    .line 1371
    :pswitch_ce
    const-string v0, "setScanThrottleEnabled"

    return-object v0

    .line 1367
    :pswitch_d1
    const-string v0, "getMatchingScanResults"

    return-object v0

    .line 1363
    :pswitch_d4
    const-string v0, "getLastCallerInfoForApi"

    return-object v0

    .line 1359
    :pswitch_d7
    const-string v0, "clearExternalPnoScanRequest"

    return-object v0

    .line 1355
    :pswitch_da
    const-string v0, "setPnoScanEnabled"

    return-object v0

    .line 1351
    :pswitch_dd
    const-string v0, "setExternalPnoScanRequest"

    return-object v0

    .line 1347
    :pswitch_e0
    const-string v0, "clearWifiConnectedNetworkScorer"

    return-object v0

    .line 1343
    :pswitch_e3
    const-string v0, "setWifiConnectedNetworkScorer"

    return-object v0

    .line 1339
    :pswitch_e6
    const-string v0, "getWifiConfigForMatchedNetworkSuggestionsSharedWithUser"

    return-object v0

    .line 1335
    :pswitch_e9
    const-string v0, "calculateSignalLevel"

    return-object v0

    .line 1331
    :pswitch_ec
    const-string v0, "removeLocalOnlyConnectionStatusListener"

    return-object v0

    .line 1327
    :pswitch_ef
    const-string v0, "addLocalOnlyConnectionStatusListener"

    return-object v0

    .line 1323
    :pswitch_f2
    const-string v0, "unregisterSuggestionConnectionStatusListener"

    return-object v0

    .line 1319
    :pswitch_f5
    const-string v0, "registerSuggestionConnectionStatusListener"

    return-object v0

    .line 1315
    :pswitch_f8
    const-string v0, "unregisterScanResultsCallback"

    return-object v0

    .line 1311
    :pswitch_fb
    const-string v0, "registerScanResultsCallback"

    return-object v0

    .line 1307
    :pswitch_fe
    const-string v0, "forget"

    return-object v0

    .line 1303
    :pswitch_101
    const-string v0, "save"

    return-object v0

    .line 1299
    :pswitch_104
    const-string v0, "connect"

    return-object v0

    .line 1295
    :pswitch_107
    const-string v0, "updateWifiUsabilityScore"

    return-object v0

    .line 1291
    :pswitch_10a
    const-string v0, "stopDppSession"

    return-object v0

    .line 1287
    :pswitch_10d
    const-string v0, "startDppAsEnrolleeResponder"

    return-object v0

    .line 1283
    :pswitch_110
    const-string v0, "startDppAsEnrolleeInitiator"

    return-object v0

    .line 1279
    :pswitch_113
    const-string v0, "startDppAsConfiguratorInitiator"

    return-object v0

    .line 1275
    :pswitch_116
    const-string v0, "setDeviceMobilityState"

    return-object v0

    .line 1271
    :pswitch_119
    const-string v0, "getFactoryMacAddresses"

    return-object v0

    .line 1267
    :pswitch_11c
    const-string v0, "getNetworkSuggestions"

    return-object v0

    .line 1263
    :pswitch_11f
    const-string v0, "removeNetworkSuggestions"

    return-object v0

    .line 1259
    :pswitch_122
    const-string v0, "addNetworkSuggestions"

    return-object v0

    .line 1255
    :pswitch_125
    const-string v0, "unregisterNetworkRequestMatchCallback"

    return-object v0

    .line 1251
    :pswitch_128
    const-string v0, "registerNetworkRequestMatchCallback"

    return-object v0

    .line 1247
    :pswitch_12b
    const-string v0, "unregisterTrafficStateCallback"

    return-object v0

    .line 1243
    :pswitch_12e
    const-string v0, "registerTrafficStateCallback"

    return-object v0

    .line 1239
    :pswitch_131
    const-string v0, "removeOnWifiUsabilityStatsListener"

    return-object v0

    .line 1235
    :pswitch_134
    const-string v0, "addOnWifiUsabilityStatsListener"

    return-object v0

    .line 1231
    :pswitch_137
    const-string v0, "removeWifiVerboseLoggingStatusChangedListener"

    return-object v0

    .line 1227
    :pswitch_13a
    const-string v0, "addWifiVerboseLoggingStatusChangedListener"

    return-object v0

    .line 1223
    :pswitch_13d
    const-string v0, "unregisterSoftApCallback"

    return-object v0

    .line 1219
    :pswitch_140
    const-string v0, "registerSoftApCallback"

    return-object v0

    .line 1215
    :pswitch_143
    const-string v0, "startSubscriptionProvisioning"

    return-object v0

    .line 1211
    :pswitch_146
    const-string v0, "restoreSupplicantBackupData"

    return-object v0

    .line 1207
    :pswitch_149
    const-string v0, "restoreSoftApBackupData"

    return-object v0

    .line 1203
    :pswitch_14c
    const-string v0, "retrieveSoftApBackupData"

    return-object v0

    .line 1199
    :pswitch_14f
    const-string v0, "restoreBackupData"

    return-object v0

    .line 1195
    :pswitch_152
    const-string v0, "retrieveBackupData"

    return-object v0

    .line 1191
    :pswitch_155
    const-string v0, "getCurrentNetwork"

    return-object v0

    .line 1187
    :pswitch_158
    const-string v0, "factoryReset"

    return-object v0

    .line 1183
    :pswitch_15b
    const-string v0, "disableEphemeralNetwork"

    return-object v0

    .line 1179
    :pswitch_15e
    const-string v0, "getVerboseLoggingLevel"

    return-object v0

    .line 1175
    :pswitch_161
    const-string v0, "enableVerboseLogging"

    return-object v0

    .line 1171
    :pswitch_164
    const-string v0, "getCurrentNetworkWpsNfcConfigurationToken"

    return-object v0

    .line 1167
    :pswitch_167
    const-string v0, "getNumberOfEnabledTdlsSessions"

    return-object v0

    .line 1163
    :pswitch_16a
    const-string v0, "getMaxSupportedConcurrentTdlsSessions"

    return-object v0

    .line 1159
    :pswitch_16d
    const-string v0, "isTdlsOperationCurrentlyAvailable"

    return-object v0

    .line 1155
    :pswitch_170
    const-string v0, "enableTdlsWithRemoteMacAddress"

    return-object v0

    .line 1151
    :pswitch_173
    const-string v0, "enableTdlsWithMacAddress"

    return-object v0

    .line 1147
    :pswitch_176
    const-string v0, "enableTdlsWithRemoteIpAddress"

    return-object v0

    .line 1143
    :pswitch_179
    const-string v0, "enableTdls"

    return-object v0

    .line 1139
    :pswitch_17c
    const-string v0, "setSoftApConfiguration"

    return-object v0

    .line 1135
    :pswitch_17f
    const-string v0, "setWifiApConfiguration"

    return-object v0

    .line 1131
    :pswitch_182
    const-string v0, "queryLastConfiguredTetheredApPassphraseSinceBoot"

    return-object v0

    .line 1127
    :pswitch_185
    const-string v0, "getSoftApConfiguration"

    return-object v0

    .line 1123
    :pswitch_188
    const-string v0, "getWifiApConfiguration"

    return-object v0

    .line 1119
    :pswitch_18b
    const-string v0, "getWifiApEnabledState"

    return-object v0

    .line 1115
    :pswitch_18e
    const-string v0, "stopWatchLocalOnlyHotspot"

    return-object v0

    .line 1111
    :pswitch_191
    const-string v0, "startWatchLocalOnlyHotspot"

    return-object v0

    .line 1107
    :pswitch_194
    const-string v0, "unregisterLocalOnlyHotspotSoftApCallback"

    return-object v0

    .line 1103
    :pswitch_197
    const-string v0, "registerLocalOnlyHotspotSoftApCallback"

    return-object v0

    .line 1099
    :pswitch_19a
    const-string v0, "stopLocalOnlyHotspot"

    return-object v0

    .line 1095
    :pswitch_19d
    const-string v0, "startLocalOnlyHotspot"

    return-object v0

    .line 1091
    :pswitch_1a0
    const-string v0, "validateSoftApConfiguration"

    return-object v0

    .line 1087
    :pswitch_1a3
    const-string v0, "stopSoftAp"

    return-object v0

    .line 1083
    :pswitch_1a6
    const-string v0, "startTetheredHotspotRequest"

    return-object v0

    .line 1079
    :pswitch_1a9
    const-string v0, "startTetheredHotspot"

    return-object v0

    .line 1075
    :pswitch_1ac
    const-string v0, "startSoftAp"

    return-object v0

    .line 1071
    :pswitch_1af
    const-string v0, "unregisterCoexCallback"

    return-object v0

    .line 1067
    :pswitch_1b2
    const-string v0, "registerCoexCallback"

    return-object v0

    .line 1063
    :pswitch_1b5
    const-string v0, "setCoexUnsafeChannels"

    return-object v0

    .line 1059
    :pswitch_1b8
    const-string v0, "isDefaultCoexAlgorithmEnabled"

    return-object v0

    .line 1055
    :pswitch_1bb
    const-string v0, "updateInterfaceIpState"

    return-object v0

    .line 1051
    :pswitch_1be
    const-string v0, "releaseMulticastLock"

    return-object v0

    .line 1047
    :pswitch_1c1
    const-string v0, "acquireMulticastLock"

    return-object v0

    .line 1043
    :pswitch_1c4
    const-string v0, "isMulticastEnabled"

    return-object v0

    .line 1039
    :pswitch_1c7
    const-string v0, "initializeMulticastFiltering"

    return-object v0

    .line 1035
    :pswitch_1ca
    const-string v0, "releaseWifiLock"

    return-object v0

    .line 1031
    :pswitch_1cd
    const-string v0, "updateWifiLockWorkSource"

    return-object v0

    .line 1027
    :pswitch_1d0
    const-string v0, "acquireWifiLock"

    return-object v0

    .line 1023
    :pswitch_1d3
    const-string v0, "isScanAlwaysAvailable"

    return-object v0

    .line 1019
    :pswitch_1d6
    const-string v0, "setScanAlwaysAvailable"

    return-object v0

    .line 1015
    :pswitch_1d9
    const-string v0, "getDhcpInfo"

    return-object v0

    .line 1011
    :pswitch_1dc
    const-string v0, "isWifiStandardSupported"

    return-object v0

    .line 1007
    :pswitch_1df
    const-string v0, "is60GHzBandSupported"

    return-object v0

    .line 1003
    :pswitch_1e2
    const-string v0, "is6GHzBandSupported"

    return-object v0

    .line 999
    :pswitch_1e5
    const-string v0, "is5GHzBandSupported"

    return-object v0

    .line 995
    :pswitch_1e8
    const-string v0, "is24GHzBandSupported"

    return-object v0

    .line 991
    :pswitch_1eb
    const-string v0, "setDefaultCountryCode"

    return-object v0

    .line 987
    :pswitch_1ee
    const-string v0, "clearOverrideCountryCode"

    return-object v0

    .line 983
    :pswitch_1f1
    const-string v0, "setOverrideCountryCode"

    return-object v0

    .line 979
    :pswitch_1f4
    const-string v0, "getCountryCode"

    return-object v0

    .line 975
    :pswitch_1f7
    const-string v0, "removeWifiNetworkStateChangedListener"

    return-object v0

    .line 971
    :pswitch_1fa
    const-string v0, "addWifiNetworkStateChangedListener"

    return-object v0

    .line 967
    :pswitch_1fd
    const-string v0, "unregisterDriverCountryCodeChangedListener"

    return-object v0

    .line 963
    :pswitch_200
    const-string v0, "registerDriverCountryCodeChangedListener"

    return-object v0

    .line 959
    :pswitch_203
    const-string v0, "removeWifiStateChangedListener"

    return-object v0

    .line 955
    :pswitch_206
    const-string v0, "addWifiStateChangedListener"

    return-object v0

    .line 951
    :pswitch_209
    const-string v0, "getWifiEnabledState"

    return-object v0

    .line 947
    :pswitch_20c
    const-string v0, "setWifiEnabled"

    return-object v0

    .line 943
    :pswitch_20f
    const-string v0, "getConnectionInfo"

    return-object v0

    .line 939
    :pswitch_212
    const-string v0, "reassociate"

    return-object v0

    .line 935
    :pswitch_215
    const-string v0, "reconnect"

    return-object v0

    .line 931
    :pswitch_218
    const-string v0, "disconnect"

    return-object v0

    .line 927
    :pswitch_21b
    const-string v0, "getBssidBlocklist"

    return-object v0

    .line 923
    :pswitch_21e
    const-string v0, "getChannelData"

    return-object v0

    .line 919
    :pswitch_221
    const-string v0, "getScanResults"

    return-object v0

    .line 915
    :pswitch_224
    const-string v0, "startScan"

    return-object v0

    .line 911
    :pswitch_227
    const-string v0, "setPasspointMeteredOverride"

    return-object v0

    .line 907
    :pswitch_22a
    const-string v0, "setMacRandomizationSettingPasspointEnabled"

    return-object v0

    .line 903
    :pswitch_22d
    const-string v0, "allowAutojoinPasspoint"

    return-object v0

    .line 899
    :pswitch_230
    const-string v0, "allowAutojoin"

    return-object v0

    .line 895
    :pswitch_233
    const-string v0, "queryAutojoinGlobal"

    return-object v0

    .line 891
    :pswitch_236
    const-string v0, "allowAutojoinGlobal"

    return-object v0

    .line 887
    :pswitch_239
    const-string v0, "disableNetwork"

    return-object v0

    .line 883
    :pswitch_23c
    const-string v0, "enableNetwork"

    return-object v0

    .line 879
    :pswitch_23f
    const-string v0, "removeNonCallerConfiguredNetworks"

    return-object v0

    .line 875
    :pswitch_242
    const-string v0, "removeNetwork"

    return-object v0

    .line 871
    :pswitch_245
    const-string v0, "matchProviderWithCurrentNetwork"

    return-object v0

    .line 867
    :pswitch_248
    const-string v0, "queryPasspointIcon"

    return-object v0

    .line 863
    :pswitch_24b
    const-string v0, "getWifiConfigsForPasspointProfiles"

    return-object v0

    .line 859
    :pswitch_24e
    const-string v0, "getPasspointConfigurations"

    return-object v0

    .line 855
    :pswitch_251
    const-string v0, "removePasspointConfiguration"

    return-object v0

    .line 851
    :pswitch_254
    const-string v0, "addOrUpdatePasspointConfiguration"

    return-object v0

    .line 847
    :pswitch_257
    const-string v0, "addOrUpdateNetworkPrivileged"

    return-object v0

    .line 843
    :pswitch_25a
    const-string v0, "addOrUpdateNetwork"

    return-object v0

    .line 839
    :pswitch_25d
    const-string v0, "getMatchingPasspointConfigsForOsuProviders"

    return-object v0

    .line 835
    :pswitch_260
    const-string v0, "getMatchingOsuProviders"

    return-object v0

    .line 831
    :pswitch_263
    const-string v0, "getSsidsAllowlist"

    return-object v0

    .line 827
    :pswitch_266
    const-string v0, "setSsidsAllowlist"

    return-object v0

    .line 823
    :pswitch_269
    const-string v0, "getPrivilegedConnectedNetwork"

    return-object v0

    .line 819
    :pswitch_26c
    const-string v0, "getPrivilegedConfiguredNetworks"

    return-object v0

    .line 815
    :pswitch_26f
    const-string v0, "getConfiguredNetworks"

    return-object v0

    .line 811
    :pswitch_272
    const-string v0, "setOneShotScreenOnConnectivityScanDelayMillis"

    return-object v0

    .line 807
    :pswitch_275
    const-string v0, "setScreenOnScanSchedule"

    return-object v0

    .line 803
    :pswitch_278
    const-string v0, "isThirdPartyAppEnablingWifiConfirmationDialogEnabled"

    return-object v0

    .line 799
    :pswitch_27b
    const-string v0, "setThirdPartyAppEnablingWifiConfirmationDialogEnabled"

    return-object v0

    .line 795
    :pswitch_27e
    const-string v0, "getNetworkSelectionConfig"

    return-object v0

    .line 791
    :pswitch_281
    const-string v0, "setNetworkSelectionConfig"

    return-object v0

    .line 787
    :pswitch_284
    const-string v0, "getWifiActivityEnergyInfoAsync"

    return-object v0

    .line 783
    :pswitch_287
    const-string v0, "isFeatureSupported"

    return-object v0

    :pswitch_data_28a
    .packed-switch 0x1
        :pswitch_287
        :pswitch_284
        :pswitch_281
        :pswitch_27e
        :pswitch_27b
        :pswitch_278
        :pswitch_275
        :pswitch_272
        :pswitch_26f
        :pswitch_26c
        :pswitch_269
        :pswitch_266
        :pswitch_263
        :pswitch_260
        :pswitch_25d
        :pswitch_25a
        :pswitch_257
        :pswitch_254
        :pswitch_251
        :pswitch_24e
        :pswitch_24b
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1df
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17f
        :pswitch_17c
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 774
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 7512
    const/16 v0, 0xd6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1650
    invoke-static {p1}, Landroid/net/wifi/IWifiManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1654
    move-object v8, p3

    const-string v9, "android.net.wifi.IWifiManager"

    .line 1655
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v0, 0xffffff

    if-gt p1, v0, :cond_e

    .line 1656
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    :cond_e
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_17

    .line 1659
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1660
    return v10

    .line 1662
    :cond_17
    packed-switch p1, :pswitch_data_f52

    .line 3701
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 3694
    :pswitch_1f
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isUsdPublisherSupported()Z

    move-result v0

    .line 3695
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3696
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3697
    goto/16 :goto_f51

    .line 3687
    .end local v0    # "_result":Z
    :pswitch_2b
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isUsdSubscriberSupported()Z

    move-result v0

    .line 3688
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3689
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3690
    goto/16 :goto_f51

    .line 3672
    .end local v0    # "_result":Z
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3674
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3676
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 3678
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 3680
    .local v5, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v7

    .line 3681
    .local v7, "_arg4":Landroid/net/wifi/IIntegerListener;
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/wifi/IWifiManager$Stub;->storeCapturedData(IZJJLandroid/net/wifi/IIntegerListener;)V

    .line 3682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3683
    goto/16 :goto_f51

    .line 3662
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    .end local v7    # "_arg4":Landroid/net/wifi/IIntegerListener;
    :pswitch_58
    sget-object v1, Landroid/net/wifi/BlockingOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/BlockingOption;

    .line 3664
    .local v1, "_arg0":Landroid/net/wifi/BlockingOption;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3665
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->disallowCurrentSuggestedNetwork(Landroid/net/wifi/BlockingOption;Ljava/lang/String;)V

    .line 3666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3667
    goto/16 :goto_f51

    .line 3652
    .end local v1    # "_arg0":Landroid/net/wifi/BlockingOption;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v1

    .line 3654
    .local v1, "_arg0":Landroid/net/wifi/IIntegerListener;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3655
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getAutojoinDisallowedSecurityTypes(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V

    .line 3656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3657
    goto/16 :goto_f51

    .line 3642
    .end local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3644
    .local v1, "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3645
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setAutojoinDisallowedSecurityTypes(ILandroid/os/Bundle;)V

    .line 3646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3647
    goto/16 :goto_f51

    .line 3634
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_98
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isPnoSupported()Z

    move-result v1

    .line 3635
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3636
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3637
    goto/16 :goto_f51

    .line 3627
    .end local v1    # "_result":Z
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3628
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->restoreWifiBackupData([B)V

    .line 3629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3630
    goto/16 :goto_f51

    .line 3619
    .end local v1    # "_arg0":[B
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IByteArrayListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IByteArrayListener;

    move-result-object v1

    .line 3620
    .local v1, "_arg0":Landroid/net/wifi/IByteArrayListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->retrieveWifiBackupData(Landroid/net/wifi/IByteArrayListener;)V

    .line 3621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3622
    goto/16 :goto_f51

    .line 3611
    .end local v1    # "_arg0":Landroid/net/wifi/IByteArrayListener;
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v1

    .line 3612
    .local v1, "_arg0":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryD2dAllowedWhenInfraStaDisabled(Landroid/net/wifi/IBooleanListener;)V

    .line 3613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3614
    goto/16 :goto_f51

    .line 3603
    .end local v1    # "_arg0":Landroid/net/wifi/IBooleanListener;
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3604
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setD2dAllowedWhenInfraStaDisabled(Z)V

    .line 3605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3606
    goto/16 :goto_f51

    .line 3593
    .end local v1    # "_arg0":Z
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3595
    .local v1, "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3596
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->teardownTwtSession(ILandroid/os/Bundle;)V

    .line 3597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3598
    goto/16 :goto_f51

    .line 3581
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3583
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/ITwtStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ITwtStatsListener;

    move-result-object v2

    .line 3585
    .local v2, "_arg1":Landroid/net/wifi/ITwtStatsListener;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3586
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->getStatsTwtSession(ILandroid/net/wifi/ITwtStatsListener;Landroid/os/Bundle;)V

    .line 3587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3588
    goto/16 :goto_f51

    .line 3569
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/wifi/ITwtStatsListener;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_10c
    sget-object v1, Landroid/net/wifi/twt/TwtRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/twt/TwtRequest;

    .line 3571
    .local v1, "_arg0":Landroid/net/wifi/twt/TwtRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/ITwtCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ITwtCallback;

    move-result-object v2

    .line 3573
    .local v2, "_arg1":Landroid/net/wifi/ITwtCallback;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3574
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->setupTwtSession(Landroid/net/wifi/twt/TwtRequest;Landroid/net/wifi/ITwtCallback;Landroid/os/Bundle;)V

    .line 3575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3576
    goto/16 :goto_f51

    .line 3559
    .end local v1    # "_arg0":Landroid/net/wifi/twt/TwtRequest;
    .end local v2    # "_arg1":Landroid/net/wifi/ITwtCallback;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ITwtCapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ITwtCapabilitiesListener;

    move-result-object v1

    .line 3561
    .local v1, "_arg0":Landroid/net/wifi/ITwtCapabilitiesListener;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3562
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getTwtCapabilities(Landroid/net/wifi/ITwtCapabilitiesListener;Landroid/os/Bundle;)V

    .line 3563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3564
    goto/16 :goto_f51

    .line 3549
    .end local v1    # "_arg0":Landroid/net/wifi/ITwtCapabilitiesListener;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3551
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IMapListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IMapListener;

    move-result-object v2

    .line 3552
    .local v2, "_arg1":Landroid/net/wifi/IMapListener;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getPerSsidRoamingModes(Ljava/lang/String;Landroid/net/wifi/IMapListener;)V

    .line 3553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3554
    goto/16 :goto_f51

    .line 3539
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/wifi/IMapListener;
    :pswitch_158
    sget-object v1, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiSsid;

    .line 3541
    .local v1, "_arg0":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3542
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->removePerSsidRoamingMode(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)V

    .line 3543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3544
    goto/16 :goto_f51

    .line 3527
    .end local v1    # "_arg0":Landroid/net/wifi/WifiSsid;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_16c
    sget-object v1, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiSsid;

    .line 3529
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3531
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3532
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->setPerSsidRoamingMode(Landroid/net/wifi/WifiSsid;ILjava/lang/String;)V

    .line 3533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3534
    goto/16 :goto_f51

    .line 3517
    .end local v1    # "_arg0":Landroid/net/wifi/WifiSsid;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3519
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v2

    .line 3520
    .local v2, "_arg1":Landroid/net/wifi/IIntegerListener;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->querySendDhcpHostnameRestriction(Ljava/lang/String;Landroid/net/wifi/IIntegerListener;)V

    .line 3521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3522
    goto/16 :goto_f51

    .line 3507
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/wifi/IIntegerListener;
    :pswitch_198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3509
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3510
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setSendDhcpHostnameRestriction(Ljava/lang/String;I)V

    .line 3511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3512
    goto/16 :goto_f51

    .line 3500
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_1a8
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disableMscs()V

    .line 3501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3502
    goto/16 :goto_f51

    .line 3493
    :pswitch_1b0
    sget-object v1, Landroid/net/wifi/MscsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/MscsParams;

    .line 3494
    .local v1, "_arg0":Landroid/net/wifi/MscsParams;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableMscs(Landroid/net/wifi/MscsParams;)V

    .line 3495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3496
    goto/16 :goto_f51

    .line 3485
    .end local v1    # "_arg0":Landroid/net/wifi/MscsParams;
    :pswitch_1c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v1

    .line 3486
    .local v1, "_arg0":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryWepAllowed(Landroid/net/wifi/IBooleanListener;)V

    .line 3487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3488
    goto/16 :goto_f51

    .line 3477
    .end local v1    # "_arg0":Landroid/net/wifi/IBooleanListener;
    :pswitch_1d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3478
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWepAllowed(Z)V

    .line 3479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3480
    goto/16 :goto_f51

    .line 3467
    .end local v1    # "_arg0":Z
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiBandsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiBandsListener;

    move-result-object v1

    .line 3469
    .local v1, "_arg0":Landroid/net/wifi/IWifiBandsListener;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3470
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedSimultaneousBandCombinations(Landroid/net/wifi/IWifiBandsListener;Landroid/os/Bundle;)V

    .line 3471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3472
    goto/16 :goto_f51

    .line 3457
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiBandsListener;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_1f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v1

    .line 3459
    .local v1, "_arg0":Landroid/net/wifi/IIntegerListener;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3460
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getMaxMloStrLinkCount(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V

    .line 3461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3462
    goto/16 :goto_f51

    .line 3447
    .end local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_20c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v1

    .line 3449
    .restart local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3450
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getMaxMloAssociationLinkCount(Landroid/net/wifi/IIntegerListener;Landroid/os/Bundle;)V

    .line 3451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3452
    goto/16 :goto_f51

    .line 3439
    .end local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_224
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiLowLatencyLockListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiLowLatencyLockListener;

    move-result-object v1

    .line 3440
    .local v1, "_arg0":Landroid/net/wifi/IWifiLowLatencyLockListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->removeWifiLowLatencyLockListener(Landroid/net/wifi/IWifiLowLatencyLockListener;)V

    .line 3441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3442
    goto/16 :goto_f51

    .line 3431
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiLowLatencyLockListener;
    :pswitch_234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiLowLatencyLockListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiLowLatencyLockListener;

    move-result-object v1

    .line 3432
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiLowLatencyLockListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->addWifiLowLatencyLockListener(Landroid/net/wifi/IWifiLowLatencyLockListener;)V

    .line 3433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3434
    goto/16 :goto_f51

    .line 3423
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiLowLatencyLockListener;
    :pswitch_244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v1

    .line 3424
    .local v1, "_arg0":Landroid/net/wifi/IIntegerListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getMloMode(Landroid/net/wifi/IIntegerListener;)V

    .line 3425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3426
    goto/16 :goto_f51

    .line 3413
    .end local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    :pswitch_254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3415
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v2

    .line 3416
    .local v2, "_arg1":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setMloMode(ILandroid/net/wifi/IBooleanListener;)V

    .line 3417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3418
    goto/16 :goto_f51

    .line 3405
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/wifi/IBooleanListener;
    :pswitch_268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v1

    .line 3406
    .local v1, "_arg0":Landroid/net/wifi/IIntegerListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getLinkLayerStatsPollingInterval(Landroid/net/wifi/IIntegerListener;)V

    .line 3407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3408
    goto/16 :goto_f51

    .line 3397
    .end local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    :pswitch_278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3398
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setLinkLayerStatsPollingInterval(I)V

    .line 3399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3400
    goto/16 :goto_f51

    .line 3389
    .end local v1    # "_arg0":I
    :pswitch_284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3390
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->removeAllQosPolicies(Ljava/lang/String;)V

    .line 3391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3392
    goto/16 :goto_f51

    .line 3379
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_290
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 3381
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3382
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->removeQosPolicies([ILjava/lang/String;)V

    .line 3383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3384
    goto/16 :goto_f51

    .line 3365
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_2a0
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 3367
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/QosPolicyParams;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3369
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3371
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/IListListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IListListener;

    move-result-object v4

    .line 3372
    .local v4, "_arg3":Landroid/net/wifi/IListListener;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->addQosPolicies(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/IListListener;)V

    .line 3373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3374
    goto/16 :goto_f51

    .line 3357
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/QosPolicyParams;>;"
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/net/wifi/IListListener;
    :pswitch_2c0
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getMaxNumberOfChannelsPerRequest()I

    move-result v1

    .line 3358
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3359
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3360
    goto/16 :goto_f51

    .line 3344
    .end local v1    # "_result":I
    :pswitch_2cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3346
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3348
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3350
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/IInterfaceCreationInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IInterfaceCreationInfoCallback;

    move-result-object v4

    .line 3351
    .local v4, "_arg3":Landroid/net/wifi/IInterfaceCreationInfoCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->reportCreateInterfaceImpact(Ljava/lang/String;IZLandroid/net/wifi/IInterfaceCreationInfoCallback;)V

    .line 3352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3353
    goto/16 :goto_f51

    .line 3334
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/net/wifi/IInterfaceCreationInfoCallback;
    :pswitch_2e8
    sget-object v1, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiSsid;

    .line 3336
    .local v1, "_arg0":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 3337
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->removeCustomDhcpOptions(Landroid/net/wifi/WifiSsid;[B)V

    .line 3338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3339
    goto/16 :goto_f51

    .line 3322
    .end local v1    # "_arg0":Landroid/net/wifi/WifiSsid;
    .end local v2    # "_arg1":[B
    :pswitch_2fc
    sget-object v1, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiSsid;

    .line 3324
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 3326
    .restart local v2    # "_arg1":[B
    sget-object v3, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 3327
    .local v3, "_arg2":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/DhcpOption;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->addCustomDhcpOptions(Landroid/net/wifi/WifiSsid;[BLcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V

    .line 3328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3329
    goto/16 :goto_f51

    .line 3312
    .end local v1    # "_arg0":Landroid/net/wifi/WifiSsid;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/DhcpOption;>;"
    :pswitch_318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3314
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3315
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->replyToSimpleDialog(II)V

    .line 3316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3317
    goto/16 :goto_f51

    .line 3300
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3302
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3304
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3305
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->replyToP2pInvitationReceivedDialog(IZLjava/lang/String;)V

    .line 3306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3307
    goto/16 :goto_f51

    .line 3292
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_33c
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getOemPrivilegedWifiAdminPackages()[Ljava/lang/String;

    move-result-object v1

    .line 3293
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3294
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3295
    goto/16 :goto_f51

    .line 3283
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3285
    .local v1, "_arg0":I
    sget-object v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 3286
    .local v2, "_arg1":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->notifyWifiSsidPolicyChanged(ILcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V

    .line 3287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3288
    goto/16 :goto_f51

    .line 3275
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    :pswitch_35c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3276
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->notifyMinimumRequiredWifiSecurityLevelChanged(I)V

    .line 3277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3278
    goto/16 :goto_f51

    .line 3266
    .end local v1    # "_arg0":I
    :pswitch_368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3267
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setStaConcurrencyForMultiInternetMode(I)Z

    move-result v2

    .line 3268
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3270
    goto/16 :goto_f51

    .line 3258
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_378
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getStaConcurrencyForMultiInternetMode()I

    move-result v1

    .line 3259
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3260
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3261
    goto/16 :goto_f51

    .line 3251
    .end local v1    # "_result":I
    :pswitch_384
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3252
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiPasspointEnabled(Z)V

    .line 3253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3254
    goto/16 :goto_f51

    .line 3243
    .end local v1    # "_arg0":Z
    :pswitch_390
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiPasspointEnabled()Z

    move-result v1

    .line 3244
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3245
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3246
    goto/16 :goto_f51

    .line 3227
    .end local v1    # "_result":Z
    :pswitch_39c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3229
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3231
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3233
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3235
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3236
    .local v5, "_arg4":Landroid/os/Bundle;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/IWifiManager$Stub;->getUsableChannels(IIILjava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    .line 3237
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiAvailableChannel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3238
    invoke-static {p3, v6, v10}, Landroid/net/wifi/IWifiManager$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 3239
    goto/16 :goto_f51

    .line 3219
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiAvailableChannel;>;"
    :pswitch_3c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3220
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->flushPasspointAnqpCache(Ljava/lang/String;)V

    .line 3221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3222
    goto/16 :goto_f51

    .line 3210
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3211
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiScoringEnabled(Z)Z

    move-result v2

    .line 3212
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3213
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3214
    goto/16 :goto_f51

    .line 3200
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_3dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3202
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3203
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->removeAppState(ILjava/lang/String;)V

    .line 3204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3205
    goto/16 :goto_f51

    .line 3192
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_3ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3193
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setEmergencyScanRequestInProgress(Z)V

    .line 3194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3195
    goto/16 :goto_f51

    .line 3182
    .end local v1    # "_arg0":Z
    :pswitch_3f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISuggestionUserApprovalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISuggestionUserApprovalStatusListener;

    move-result-object v1

    .line 3184
    .local v1, "_arg0":Landroid/net/wifi/ISuggestionUserApprovalStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3185
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->removeSuggestionUserApprovalStatusListener(Landroid/net/wifi/ISuggestionUserApprovalStatusListener;Ljava/lang/String;)V

    .line 3186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3187
    goto/16 :goto_f51

    .line 3172
    .end local v1    # "_arg0":Landroid/net/wifi/ISuggestionUserApprovalStatusListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_40d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISuggestionUserApprovalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISuggestionUserApprovalStatusListener;

    move-result-object v1

    .line 3174
    .restart local v1    # "_arg0":Landroid/net/wifi/ISuggestionUserApprovalStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3175
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->addSuggestionUserApprovalStatusListener(Landroid/net/wifi/ISuggestionUserApprovalStatusListener;Ljava/lang/String;)V

    .line 3176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3177
    goto/16 :goto_f51

    .line 3165
    .end local v1    # "_arg0":Landroid/net/wifi/ISuggestionUserApprovalStatusListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_421
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->restartWifiSubsystem()V

    .line 3166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3167
    goto/16 :goto_f51

    .line 3158
    :pswitch_429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISubsystemRestartCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISubsystemRestartCallback;

    move-result-object v1

    .line 3159
    .local v1, "_arg0":Landroid/net/wifi/ISubsystemRestartCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->unregisterSubsystemRestartCallback(Landroid/net/wifi/ISubsystemRestartCallback;)V

    .line 3160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3161
    goto/16 :goto_f51

    .line 3150
    .end local v1    # "_arg0":Landroid/net/wifi/ISubsystemRestartCallback;
    :pswitch_439
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISubsystemRestartCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISubsystemRestartCallback;

    move-result-object v1

    .line 3151
    .restart local v1    # "_arg0":Landroid/net/wifi/ISubsystemRestartCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->registerSubsystemRestartCallback(Landroid/net/wifi/ISubsystemRestartCallback;)V

    .line 3152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3153
    goto/16 :goto_f51

    .line 3139
    .end local v1    # "_arg0":Landroid/net/wifi/ISubsystemRestartCallback;
    :pswitch_449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3141
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3142
    .local v2, "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->isCarrierNetworkOffloadEnabled(IZ)Z

    move-result v3

    .line 3143
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3144
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3145
    goto/16 :goto_f51

    .line 3127
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_45d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3129
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3131
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3132
    .local v3, "_arg2":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->setCarrierNetworkOffloadEnabled(IZZ)V

    .line 3133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3134
    goto/16 :goto_f51

    .line 3120
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :pswitch_471
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopRestrictingAutoJoinToSubscriptionId()V

    .line 3121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3122
    goto/16 :goto_f51

    .line 3113
    :pswitch_479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3114
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startRestrictingAutoJoinToSubscriptionId(I)V

    .line 3115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3116
    goto/16 :goto_f51

    .line 3105
    .end local v1    # "_arg0":I
    :pswitch_485
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isAutoWakeupEnabled()Z

    move-result v1

    .line 3106
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3107
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3108
    goto/16 :goto_f51

    .line 3098
    .end local v1    # "_result":Z
    :pswitch_491
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3099
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setAutoWakeupEnabled(Z)V

    .line 3100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3101
    goto/16 :goto_f51

    .line 3089
    .end local v1    # "_arg0":Z
    :pswitch_49d
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 3090
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getAllMatchingPasspointProfilesForScanResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;

    move-result-object v2

    .line 3091
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3092
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3093
    goto/16 :goto_f51

    .line 3081
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_4b1
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanThrottleEnabled()Z

    move-result v1

    .line 3082
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3083
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3084
    goto/16 :goto_f51

    .line 3074
    .end local v1    # "_result":Z
    :pswitch_4bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3075
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setScanThrottleEnabled(Z)V

    .line 3076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3077
    goto/16 :goto_f51

    .line 3059
    .end local v1    # "_arg0":Z
    :pswitch_4c9
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 3061
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    sget-object v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 3063
    .local v2, "_arg1":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3065
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3066
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingScanResults(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 3067
    .local v5, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3068
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3069
    goto/16 :goto_f51

    .line 3049
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    .end local v2    # "_arg1":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/Map;
    :pswitch_4ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3051
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/ILastCallerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ILastCallerListener;

    move-result-object v2

    .line 3052
    .local v2, "_arg1":Landroid/net/wifi/ILastCallerListener;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getLastCallerInfoForApi(ILandroid/net/wifi/ILastCallerListener;)V

    .line 3053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3054
    goto/16 :goto_f51

    .line 3042
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/wifi/ILastCallerListener;
    :pswitch_501
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearExternalPnoScanRequest()V

    .line 3043
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3044
    goto/16 :goto_f51

    .line 3031
    :pswitch_509
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3033
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3035
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3036
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->setPnoScanEnabled(ZZLjava/lang/String;)V

    .line 3037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    goto/16 :goto_f51

    .line 3013
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_51d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3015
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IPnoScanResultsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IPnoScanResultsCallback;

    move-result-object v2

    .line 3017
    .local v2, "_arg1":Landroid/net/wifi/IPnoScanResultsCallback;
    sget-object v3, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3019
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 3021
    .local v4, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3023
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3024
    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/IWifiManager$Stub;->setExternalPnoScanRequest(Landroid/os/IBinder;Landroid/net/wifi/IPnoScanResultsCallback;Ljava/util/List;[ILjava/lang/String;Ljava/lang/String;)V

    .line 3025
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3026
    goto/16 :goto_f51

    .line 3006
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/wifi/IPnoScanResultsCallback;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiSsid;>;"
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :pswitch_544
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearWifiConnectedNetworkScorer()V

    .line 3007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3008
    goto/16 :goto_f51

    .line 2996
    :pswitch_54c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2998
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiConnectedNetworkScorer;

    move-result-object v2

    .line 2999
    .local v2, "_arg1":Landroid/net/wifi/IWifiConnectedNetworkScorer;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiConnectedNetworkScorer(Landroid/os/IBinder;Landroid/net/wifi/IWifiConnectedNetworkScorer;)Z

    move-result v3

    .line 3000
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3001
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3002
    goto/16 :goto_f51

    .line 2987
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/wifi/IWifiConnectedNetworkScorer;
    .end local v3    # "_result":Z
    :pswitch_564
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 2988
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v2

    .line 2989
    .local v2, "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2990
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2991
    goto/16 :goto_f51

    .line 2978
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    :pswitch_578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2979
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->calculateSignalLevel(I)I

    move-result v2

    .line 2980
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2981
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2982
    goto/16 :goto_f51

    .line 2968
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_588
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ILocalOnlyConnectionStatusListener;

    move-result-object v1

    .line 2970
    .local v1, "_arg0":Landroid/net/wifi/ILocalOnlyConnectionStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2971
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->removeLocalOnlyConnectionStatusListener(Landroid/net/wifi/ILocalOnlyConnectionStatusListener;Ljava/lang/String;)V

    .line 2972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2973
    goto/16 :goto_f51

    .line 2956
    .end local v1    # "_arg0":Landroid/net/wifi/ILocalOnlyConnectionStatusListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_59c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ILocalOnlyConnectionStatusListener;

    move-result-object v1

    .line 2958
    .restart local v1    # "_arg0":Landroid/net/wifi/ILocalOnlyConnectionStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2960
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2961
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->addLocalOnlyConnectionStatusListener(Landroid/net/wifi/ILocalOnlyConnectionStatusListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2963
    goto/16 :goto_f51

    .line 2946
    .end local v1    # "_arg0":Landroid/net/wifi/ILocalOnlyConnectionStatusListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISuggestionConnectionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISuggestionConnectionStatusListener;

    move-result-object v1

    .line 2948
    .local v1, "_arg0":Landroid/net/wifi/ISuggestionConnectionStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2949
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->unregisterSuggestionConnectionStatusListener(Landroid/net/wifi/ISuggestionConnectionStatusListener;Ljava/lang/String;)V

    .line 2950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2951
    goto/16 :goto_f51

    .line 2934
    .end local v1    # "_arg0":Landroid/net/wifi/ISuggestionConnectionStatusListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_5c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISuggestionConnectionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISuggestionConnectionStatusListener;

    move-result-object v1

    .line 2936
    .restart local v1    # "_arg0":Landroid/net/wifi/ISuggestionConnectionStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2938
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2939
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->registerSuggestionConnectionStatusListener(Landroid/net/wifi/ISuggestionConnectionStatusListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    goto/16 :goto_f51

    .line 2926
    .end local v1    # "_arg0":Landroid/net/wifi/ISuggestionConnectionStatusListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IScanResultsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IScanResultsCallback;

    move-result-object v1

    .line 2927
    .local v1, "_arg0":Landroid/net/wifi/IScanResultsCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->unregisterScanResultsCallback(Landroid/net/wifi/IScanResultsCallback;)V

    .line 2928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2929
    goto/16 :goto_f51

    .line 2918
    .end local v1    # "_arg0":Landroid/net/wifi/IScanResultsCallback;
    :pswitch_5f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IScanResultsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IScanResultsCallback;

    move-result-object v1

    .line 2919
    .restart local v1    # "_arg0":Landroid/net/wifi/IScanResultsCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->registerScanResultsCallback(Landroid/net/wifi/IScanResultsCallback;)V

    .line 2920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2921
    goto/16 :goto_f51

    .line 2909
    .end local v1    # "_arg0":Landroid/net/wifi/IScanResultsCallback;
    :pswitch_600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2911
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IActionListener;

    move-result-object v2

    .line 2912
    .local v2, "_arg1":Landroid/net/wifi/IActionListener;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->forget(ILandroid/net/wifi/IActionListener;)V

    .line 2913
    goto/16 :goto_f51

    .line 2898
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/wifi/IActionListener;
    :pswitch_611
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2900
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IActionListener;

    move-result-object v2

    .line 2902
    .restart local v2    # "_arg1":Landroid/net/wifi/IActionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2903
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/IActionListener;Ljava/lang/String;)V

    .line 2904
    goto/16 :goto_f51

    .line 2883
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Landroid/net/wifi/IActionListener;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_62a
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2885
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2887
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IActionListener;

    move-result-object v3

    .line 2889
    .local v3, "_arg2":Landroid/net/wifi/IActionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2891
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 2892
    .local v5, "_arg4":Landroid/os/Bundle;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/IWifiManager$Stub;->connect(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/IActionListener;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2893
    goto/16 :goto_f51

    .line 2871
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/net/wifi/IActionListener;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :pswitch_650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2873
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2875
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2876
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiUsabilityScore(III)V

    .line 2877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2878
    goto/16 :goto_f51

    .line 2864
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_664
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopDppSession()V

    .line 2865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2866
    goto/16 :goto_f51

    .line 2851
    :pswitch_66c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2853
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2855
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2857
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/IDppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IDppCallback;

    move-result-object v4

    .line 2858
    .local v4, "_arg3":Landroid/net/wifi/IDppCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->startDppAsEnrolleeResponder(Landroid/os/IBinder;Ljava/lang/String;ILandroid/net/wifi/IDppCallback;)V

    .line 2859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2860
    goto/16 :goto_f51

    .line 2839
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/net/wifi/IDppCallback;
    :pswitch_688
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2841
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2843
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IDppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IDppCallback;

    move-result-object v3

    .line 2844
    .local v3, "_arg2":Landroid/net/wifi/IDppCallback;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->startDppAsEnrolleeInitiator(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/IDppCallback;)V

    .line 2845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2846
    goto/16 :goto_f51

    .line 2821
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/wifi/IDppCallback;
    :pswitch_6a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2823
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2825
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2827
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2829
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2831
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IDppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IDppCallback;

    move-result-object v6

    .line 2832
    .local v6, "_arg5":Landroid/net/wifi/IDppCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/IWifiManager$Stub;->startDppAsConfiguratorInitiator(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IILandroid/net/wifi/IDppCallback;)V

    .line 2833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2834
    goto/16 :goto_f51

    .line 2813
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/net/wifi/IDppCallback;
    :pswitch_6c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2814
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setDeviceMobilityState(I)V

    .line 2815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2816
    goto/16 :goto_f51

    .line 2805
    .end local v1    # "_arg0":I
    :pswitch_6d1
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 2806
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2808
    goto/16 :goto_f51

    .line 2797
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_6dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2798
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getNetworkSuggestions(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v2

    .line 2799
    .local v2, "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2800
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2801
    goto/16 :goto_f51

    .line 2784
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    :pswitch_6ed
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 2786
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2788
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2789
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->removeNetworkSuggestions(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;I)I

    move-result v4

    .line 2790
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2791
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2792
    goto/16 :goto_f51

    .line 2771
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_709
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 2773
    .restart local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2775
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2776
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->addNetworkSuggestions(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2777
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2778
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    goto/16 :goto_f51

    .line 2763
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiNetworkSuggestion;>;"
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_725
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/INetworkRequestMatchCallback;

    move-result-object v1

    .line 2764
    .local v1, "_arg0":Landroid/net/wifi/INetworkRequestMatchCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/INetworkRequestMatchCallback;)V

    .line 2765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2766
    goto/16 :goto_f51

    .line 2755
    .end local v1    # "_arg0":Landroid/net/wifi/INetworkRequestMatchCallback;
    :pswitch_735
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/INetworkRequestMatchCallback;

    move-result-object v1

    .line 2756
    .restart local v1    # "_arg0":Landroid/net/wifi/INetworkRequestMatchCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->registerNetworkRequestMatchCallback(Landroid/net/wifi/INetworkRequestMatchCallback;)V

    .line 2757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2758
    goto/16 :goto_f51

    .line 2747
    .end local v1    # "_arg0":Landroid/net/wifi/INetworkRequestMatchCallback;
    :pswitch_745
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ITrafficStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ITrafficStateCallback;

    move-result-object v1

    .line 2748
    .local v1, "_arg0":Landroid/net/wifi/ITrafficStateCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->unregisterTrafficStateCallback(Landroid/net/wifi/ITrafficStateCallback;)V

    .line 2749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    goto/16 :goto_f51

    .line 2739
    .end local v1    # "_arg0":Landroid/net/wifi/ITrafficStateCallback;
    :pswitch_755
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ITrafficStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ITrafficStateCallback;

    move-result-object v1

    .line 2740
    .restart local v1    # "_arg0":Landroid/net/wifi/ITrafficStateCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->registerTrafficStateCallback(Landroid/net/wifi/ITrafficStateCallback;)V

    .line 2741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2742
    goto/16 :goto_f51

    .line 2731
    .end local v1    # "_arg0":Landroid/net/wifi/ITrafficStateCallback;
    :pswitch_765
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOnWifiUsabilityStatsListener;

    move-result-object v1

    .line 2732
    .local v1, "_arg0":Landroid/net/wifi/IOnWifiUsabilityStatsListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->removeOnWifiUsabilityStatsListener(Landroid/net/wifi/IOnWifiUsabilityStatsListener;)V

    .line 2733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2734
    goto/16 :goto_f51

    .line 2723
    .end local v1    # "_arg0":Landroid/net/wifi/IOnWifiUsabilityStatsListener;
    :pswitch_775
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOnWifiUsabilityStatsListener;

    move-result-object v1

    .line 2724
    .restart local v1    # "_arg0":Landroid/net/wifi/IOnWifiUsabilityStatsListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->addOnWifiUsabilityStatsListener(Landroid/net/wifi/IOnWifiUsabilityStatsListener;)V

    .line 2725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2726
    goto/16 :goto_f51

    .line 2715
    .end local v1    # "_arg0":Landroid/net/wifi/IOnWifiUsabilityStatsListener;
    :pswitch_785
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;

    move-result-object v1

    .line 2716
    .local v1, "_arg0":Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->removeWifiVerboseLoggingStatusChangedListener(Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;)V

    .line 2717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2718
    goto/16 :goto_f51

    .line 2707
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;
    :pswitch_795
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;

    move-result-object v1

    .line 2708
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->addWifiVerboseLoggingStatusChangedListener(Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;)V

    .line 2709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2710
    goto/16 :goto_f51

    .line 2699
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;
    :pswitch_7a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISoftApCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISoftApCallback;

    move-result-object v1

    .line 2700
    .local v1, "_arg0":Landroid/net/wifi/ISoftApCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->unregisterSoftApCallback(Landroid/net/wifi/ISoftApCallback;)V

    .line 2701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2702
    goto/16 :goto_f51

    .line 2691
    .end local v1    # "_arg0":Landroid/net/wifi/ISoftApCallback;
    :pswitch_7b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISoftApCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISoftApCallback;

    move-result-object v1

    .line 2692
    .restart local v1    # "_arg0":Landroid/net/wifi/ISoftApCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->registerSoftApCallback(Landroid/net/wifi/ISoftApCallback;)V

    .line 2693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2694
    goto/16 :goto_f51

    .line 2681
    .end local v1    # "_arg0":Landroid/net/wifi/ISoftApCallback;
    :pswitch_7c5
    sget-object v1, Landroid/net/wifi/hotspot2/OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 2683
    .local v1, "_arg0":Landroid/net/wifi/hotspot2/OsuProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/hotspot2/IProvisioningCallback;

    move-result-object v2

    .line 2684
    .local v2, "_arg1":Landroid/net/wifi/hotspot2/IProvisioningCallback;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V

    .line 2685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2686
    goto/16 :goto_f51

    .line 2671
    .end local v1    # "_arg0":Landroid/net/wifi/hotspot2/OsuProvider;
    .end local v2    # "_arg1":Landroid/net/wifi/hotspot2/IProvisioningCallback;
    :pswitch_7dd
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 2673
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 2674
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->restoreSupplicantBackupData([B[B)V

    .line 2675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2676
    goto/16 :goto_f51

    .line 2662
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    :pswitch_7ed
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 2663
    .restart local v1    # "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->restoreSoftApBackupData([B)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 2664
    .local v2, "_result":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2665
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2666
    goto/16 :goto_f51

    .line 2654
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":Landroid/net/wifi/SoftApConfiguration;
    :pswitch_7fd
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->retrieveSoftApBackupData()[B

    move-result-object v1

    .line 2655
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2657
    goto/16 :goto_f51

    .line 2647
    .end local v1    # "_result":[B
    :pswitch_809
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 2648
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->restoreBackupData([B)V

    .line 2649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2650
    goto/16 :goto_f51

    .line 2639
    .end local v1    # "_arg0":[B
    :pswitch_815
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->retrieveBackupData()[B

    move-result-object v1

    .line 2640
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2641
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2642
    goto/16 :goto_f51

    .line 2632
    .end local v1    # "_result":[B
    :pswitch_821
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    .line 2633
    .local v1, "_result":Landroid/net/Network;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2634
    invoke-virtual {p3, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2635
    goto/16 :goto_f51

    .line 2625
    .end local v1    # "_result":Landroid/net/Network;
    :pswitch_82d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2626
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 2627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2628
    goto/16 :goto_f51

    .line 2615
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_839
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2617
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2618
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    goto/16 :goto_f51

    .line 2607
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_849
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v1

    .line 2608
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2609
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2610
    goto/16 :goto_f51

    .line 2600
    .end local v1    # "_result":I
    :pswitch_855
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2601
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 2602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2603
    goto/16 :goto_f51

    .line 2592
    .end local v1    # "_arg0":I
    :pswitch_861
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v1

    .line 2593
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2594
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2595
    goto/16 :goto_f51

    .line 2585
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_86d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v1

    .line 2586
    .local v1, "_arg0":Landroid/net/wifi/IIntegerListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getNumberOfEnabledTdlsSessions(Landroid/net/wifi/IIntegerListener;)V

    .line 2587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2588
    goto/16 :goto_f51

    .line 2577
    .end local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    :pswitch_87d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IIntegerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IIntegerListener;

    move-result-object v1

    .line 2578
    .restart local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getMaxSupportedConcurrentTdlsSessions(Landroid/net/wifi/IIntegerListener;)V

    .line 2579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2580
    goto/16 :goto_f51

    .line 2569
    .end local v1    # "_arg0":Landroid/net/wifi/IIntegerListener;
    :pswitch_88d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v1

    .line 2570
    .local v1, "_arg0":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->isTdlsOperationCurrentlyAvailable(Landroid/net/wifi/IBooleanListener;)V

    .line 2571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2572
    goto/16 :goto_f51

    .line 2557
    .end local v1    # "_arg0":Landroid/net/wifi/IBooleanListener;
    :pswitch_89d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2559
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2561
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v3

    .line 2562
    .local v3, "_arg2":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithRemoteMacAddress(Ljava/lang/String;ZLandroid/net/wifi/IBooleanListener;)V

    .line 2563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2564
    goto/16 :goto_f51

    .line 2547
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/net/wifi/IBooleanListener;
    :pswitch_8b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2549
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2550
    .restart local v2    # "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 2551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2552
    goto/16 :goto_f51

    .line 2535
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_8c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2537
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2539
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v3

    .line 2540
    .restart local v3    # "_arg2":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithRemoteIpAddress(Ljava/lang/String;ZLandroid/net/wifi/IBooleanListener;)V

    .line 2541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2542
    goto/16 :goto_f51

    .line 2525
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/net/wifi/IBooleanListener;
    :pswitch_8dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2527
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2528
    .restart local v2    # "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 2529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    goto/16 :goto_f51

    .line 2514
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_8ed
    sget-object v1, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SoftApConfiguration;

    .line 2516
    .local v1, "_arg0":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2517
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)Z

    move-result v3

    .line 2518
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2519
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2520
    goto/16 :goto_f51

    .line 2503
    .end local v1    # "_arg0":Landroid/net/wifi/SoftApConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_905
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2505
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2506
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v3

    .line 2507
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2508
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2509
    goto/16 :goto_f51

    .line 2495
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_91d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IStringListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IStringListener;

    move-result-object v1

    .line 2496
    .local v1, "_arg0":Landroid/net/wifi/IStringListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryLastConfiguredTetheredApPassphraseSinceBoot(Landroid/net/wifi/IStringListener;)V

    .line 2497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2498
    goto/16 :goto_f51

    .line 2487
    .end local v1    # "_arg0":Landroid/net/wifi/IStringListener;
    :pswitch_92d
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 2488
    .local v1, "_result":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2489
    invoke-virtual {p3, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2490
    goto/16 :goto_f51

    .line 2480
    .end local v1    # "_result":Landroid/net/wifi/SoftApConfiguration;
    :pswitch_939
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2481
    .local v1, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2482
    invoke-virtual {p3, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2483
    goto/16 :goto_f51

    .line 2473
    .end local v1    # "_result":Landroid/net/wifi/WifiConfiguration;
    :pswitch_945
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v1

    .line 2474
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2475
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    goto/16 :goto_f51

    .line 2467
    .end local v1    # "_result":I
    :pswitch_951
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWatchLocalOnlyHotspot()V

    .line 2468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2469
    goto/16 :goto_f51

    .line 2460
    :pswitch_959
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ILocalOnlyHotspotCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ILocalOnlyHotspotCallback;

    move-result-object v1

    .line 2461
    .local v1, "_arg0":Landroid/net/wifi/ILocalOnlyHotspotCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startWatchLocalOnlyHotspot(Landroid/net/wifi/ILocalOnlyHotspotCallback;)V

    .line 2462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2463
    goto/16 :goto_f51

    .line 2450
    .end local v1    # "_arg0":Landroid/net/wifi/ILocalOnlyHotspotCallback;
    :pswitch_969
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISoftApCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISoftApCallback;

    move-result-object v1

    .line 2452
    .local v1, "_arg0":Landroid/net/wifi/ISoftApCallback;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2453
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->unregisterLocalOnlyHotspotSoftApCallback(Landroid/net/wifi/ISoftApCallback;Landroid/os/Bundle;)V

    .line 2454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2455
    goto/16 :goto_f51

    .line 2440
    .end local v1    # "_arg0":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_981
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ISoftApCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISoftApCallback;

    move-result-object v1

    .line 2442
    .restart local v1    # "_arg0":Landroid/net/wifi/ISoftApCallback;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2443
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->registerLocalOnlyHotspotSoftApCallback(Landroid/net/wifi/ISoftApCallback;Landroid/os/Bundle;)V

    .line 2444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2445
    goto/16 :goto_f51

    .line 2433
    .end local v1    # "_arg0":Landroid/net/wifi/ISoftApCallback;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_999
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopLocalOnlyHotspot()V

    .line 2434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    goto/16 :goto_f51

    .line 2415
    :pswitch_9a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ILocalOnlyHotspotCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ILocalOnlyHotspotCallback;

    move-result-object v1

    .line 2417
    .local v1, "_arg0":Landroid/net/wifi/ILocalOnlyHotspotCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2419
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2421
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SoftApConfiguration;

    .line 2423
    .local v4, "_arg3":Landroid/net/wifi/SoftApConfiguration;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 2425
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 2426
    .local v6, "_arg5":Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/IWifiManager$Stub;->startLocalOnlyHotspot(Landroid/net/wifi/ILocalOnlyHotspotCallback;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/SoftApConfiguration;Landroid/os/Bundle;Z)I

    move-result v7

    .line 2427
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2429
    goto/16 :goto_f51

    .line 2406
    .end local v1    # "_arg0":Landroid/net/wifi/ILocalOnlyHotspotCallback;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/net/wifi/SoftApConfiguration;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Z
    .end local v7    # "_result":I
    :pswitch_9d2
    sget-object v1, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SoftApConfiguration;

    .line 2407
    .local v1, "_arg0":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->validateSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v2

    .line 2408
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2409
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2410
    goto/16 :goto_f51

    .line 2398
    .end local v1    # "_arg0":Landroid/net/wifi/SoftApConfiguration;
    .end local v2    # "_result":Z
    :pswitch_9e6
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopSoftAp()Z

    move-result v1

    .line 2399
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2401
    goto/16 :goto_f51

    .line 2387
    .end local v1    # "_result":Z
    :pswitch_9f2
    sget-object v1, Landroid/net/TetheringManager$TetheringRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheringManager$TetheringRequest;

    .line 2389
    .local v1, "_arg0":Landroid/net/TetheringManager$TetheringRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/ISoftApCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ISoftApCallback;

    move-result-object v2

    .line 2391
    .local v2, "_arg1":Landroid/net/wifi/ISoftApCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2392
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->startTetheredHotspotRequest(Landroid/net/TetheringManager$TetheringRequest;Landroid/net/wifi/ISoftApCallback;Ljava/lang/String;)V

    .line 2393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2394
    goto/16 :goto_f51

    .line 2376
    .end local v1    # "_arg0":Landroid/net/TetheringManager$TetheringRequest;
    .end local v2    # "_arg1":Landroid/net/wifi/ISoftApCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_a0e
    sget-object v1, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SoftApConfiguration;

    .line 2378
    .local v1, "_arg0":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2379
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startTetheredHotspot(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)Z

    move-result v3

    .line 2380
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2381
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2382
    goto/16 :goto_f51

    .line 2365
    .end local v1    # "_arg0":Landroid/net/wifi/SoftApConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a26
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2367
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2368
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startSoftAp(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v3

    .line 2369
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2371
    goto/16 :goto_f51

    .line 2357
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ICoexCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ICoexCallback;

    move-result-object v1

    .line 2358
    .local v1, "_arg0":Landroid/net/wifi/ICoexCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->unregisterCoexCallback(Landroid/net/wifi/ICoexCallback;)V

    .line 2359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2360
    goto/16 :goto_f51

    .line 2349
    .end local v1    # "_arg0":Landroid/net/wifi/ICoexCallback;
    :pswitch_a4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/ICoexCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ICoexCallback;

    move-result-object v1

    .line 2350
    .restart local v1    # "_arg0":Landroid/net/wifi/ICoexCallback;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->registerCoexCallback(Landroid/net/wifi/ICoexCallback;)V

    .line 2351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2352
    goto/16 :goto_f51

    .line 2339
    .end local v1    # "_arg0":Landroid/net/wifi/ICoexCallback;
    :pswitch_a5e
    sget-object v1, Landroid/net/wifi/CoexUnsafeChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2341
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/CoexUnsafeChannel;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2342
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setCoexUnsafeChannels(Ljava/util/List;I)V

    .line 2343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    goto/16 :goto_f51

    .line 2331
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/CoexUnsafeChannel;>;"
    .end local v2    # "_arg1":I
    :pswitch_a70
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDefaultCoexAlgorithmEnabled()Z

    move-result v1

    .line 2332
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2333
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2334
    goto/16 :goto_f51

    .line 2322
    .end local v1    # "_result":Z
    :pswitch_a7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2324
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2325
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 2326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2327
    goto/16 :goto_f51

    .line 2312
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_a8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2314
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2315
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    goto/16 :goto_f51

    .line 2298
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_a9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2300
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2302
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2304
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2305
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2307
    goto/16 :goto_f51

    .line 2290
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_ab4
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v1

    .line 2291
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2292
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2293
    goto/16 :goto_f51

    .line 2284
    .end local v1    # "_result":Z
    :pswitch_ac0
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 2285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2286
    goto/16 :goto_f51

    .line 2276
    :pswitch_ac8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2277
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v2

    .line 2278
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2279
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2280
    goto/16 :goto_f51

    .line 2262
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_ad8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2264
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 2266
    .local v2, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2268
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 2269
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    goto/16 :goto_f51

    .line 2243
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :pswitch_af8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2245
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2247
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2249
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 2251
    .local v4, "_arg3":Landroid/os/WorkSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2253
    .local v5, "_arg4":Ljava/lang/String;
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 2254
    .local v6, "_arg5":Landroid/os/Bundle;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    .line 2255
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2257
    goto/16 :goto_f51

    .line 2235
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/WorkSource;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_result":Z
    :pswitch_b25
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v1

    .line 2236
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2238
    goto/16 :goto_f51

    .line 2226
    .end local v1    # "_result":Z
    :pswitch_b31
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2228
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2229
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setScanAlwaysAvailable(ZLjava/lang/String;)V

    .line 2230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2231
    goto/16 :goto_f51

    .line 2217
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_b41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2218
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo(Ljava/lang/String;)Landroid/net/DhcpInfo;

    move-result-object v2

    .line 2219
    .local v2, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2220
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2221
    goto/16 :goto_f51

    .line 2208
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/net/DhcpInfo;
    :pswitch_b51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2209
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->isWifiStandardSupported(I)Z

    move-result v2

    .line 2210
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2211
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2212
    goto/16 :goto_f51

    .line 2200
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_b61
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->is60GHzBandSupported()Z

    move-result v1

    .line 2201
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2202
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2203
    goto/16 :goto_f51

    .line 2193
    .end local v1    # "_result":Z
    :pswitch_b6d
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->is6GHzBandSupported()Z

    move-result v1

    .line 2194
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2196
    goto/16 :goto_f51

    .line 2186
    .end local v1    # "_result":Z
    :pswitch_b79
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->is5GHzBandSupported()Z

    move-result v1

    .line 2187
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2188
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2189
    goto/16 :goto_f51

    .line 2179
    .end local v1    # "_result":Z
    :pswitch_b85
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->is24GHzBandSupported()Z

    move-result v1

    .line 2180
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2182
    goto/16 :goto_f51

    .line 2172
    .end local v1    # "_result":Z
    :pswitch_b91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2173
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setDefaultCountryCode(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2175
    goto/16 :goto_f51

    .line 2165
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_b9d
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearOverrideCountryCode()V

    .line 2166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2167
    goto/16 :goto_f51

    .line 2158
    :pswitch_ba5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2159
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setOverrideCountryCode(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2161
    goto/16 :goto_f51

    .line 2147
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_bb1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2149
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2150
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2151
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2153
    goto/16 :goto_f51

    .line 2139
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_bc5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiNetworkStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiNetworkStateChangedListener;

    move-result-object v1

    .line 2140
    .local v1, "_arg0":Landroid/net/wifi/IWifiNetworkStateChangedListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->removeWifiNetworkStateChangedListener(Landroid/net/wifi/IWifiNetworkStateChangedListener;)V

    .line 2141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2142
    goto/16 :goto_f51

    .line 2131
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiNetworkStateChangedListener;
    :pswitch_bd5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiNetworkStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiNetworkStateChangedListener;

    move-result-object v1

    .line 2132
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiNetworkStateChangedListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->addWifiNetworkStateChangedListener(Landroid/net/wifi/IWifiNetworkStateChangedListener;)V

    .line 2133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    goto/16 :goto_f51

    .line 2123
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiNetworkStateChangedListener;
    :pswitch_be5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;

    move-result-object v1

    .line 2124
    .local v1, "_arg0":Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->unregisterDriverCountryCodeChangedListener(Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;)V

    .line 2125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2126
    goto/16 :goto_f51

    .line 2111
    .end local v1    # "_arg0":Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;
    :pswitch_bf5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;

    move-result-object v1

    .line 2113
    .restart local v1    # "_arg0":Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2115
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2116
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->registerDriverCountryCodeChangedListener(Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2118
    goto/16 :goto_f51

    .line 2103
    .end local v1    # "_arg0":Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_c0d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiStateChangedListener;

    move-result-object v1

    .line 2104
    .local v1, "_arg0":Landroid/net/wifi/IWifiStateChangedListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->removeWifiStateChangedListener(Landroid/net/wifi/IWifiStateChangedListener;)V

    .line 2105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2106
    goto/16 :goto_f51

    .line 2095
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiStateChangedListener;
    :pswitch_c1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiStateChangedListener;

    move-result-object v1

    .line 2096
    .restart local v1    # "_arg0":Landroid/net/wifi/IWifiStateChangedListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->addWifiStateChangedListener(Landroid/net/wifi/IWifiStateChangedListener;)V

    .line 2097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    goto/16 :goto_f51

    .line 2087
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiStateChangedListener;
    :pswitch_c2d
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v1

    .line 2088
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    goto/16 :goto_f51

    .line 2077
    .end local v1    # "_result":I
    :pswitch_c39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2079
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2080
    .local v2, "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v3

    .line 2081
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2082
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2083
    goto/16 :goto_f51

    .line 2066
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_c4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2068
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2069
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 2070
    .local v3, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2071
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2072
    goto/16 :goto_f51

    .line 2057
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/WifiInfo;
    :pswitch_c61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2058
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->reassociate(Ljava/lang/String;)Z

    move-result v2

    .line 2059
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2061
    goto/16 :goto_f51

    .line 2048
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_c71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2049
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->reconnect(Ljava/lang/String;)Z

    move-result v2

    .line 2050
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2051
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2052
    goto/16 :goto_f51

    .line 2039
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_c81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2040
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->disconnect(Ljava/lang/String;)Z

    move-result v2

    .line 2041
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2043
    goto/16 :goto_f51

    .line 2029
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_c91
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 2031
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IMacAddressListListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IMacAddressListListener;

    move-result-object v2

    .line 2032
    .local v2, "_arg1":Landroid/net/wifi/IMacAddressListListener;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getBssidBlocklist(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;Landroid/net/wifi/IMacAddressListListener;)V

    .line 2033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    goto/16 :goto_f51

    .line 2017
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    .end local v2    # "_arg1":Landroid/net/wifi/IMacAddressListListener;
    :pswitch_ca9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IListListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IListListener;

    move-result-object v1

    .line 2019
    .local v1, "_arg0":Landroid/net/wifi/IListListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2021
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 2022
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->getChannelData(Landroid/net/wifi/IListListener;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2024
    goto/16 :goto_f51

    .line 2006
    .end local v1    # "_arg0":Landroid/net/wifi/IListListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_cc5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2008
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2009
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v3

    .line 2010
    .local v3, "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2011
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2012
    goto/16 :goto_f51

    .line 1995
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    :pswitch_cd9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1997
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1998
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1999
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2000
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2001
    goto/16 :goto_f51

    .line 1985
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_ced
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1987
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1988
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setPasspointMeteredOverride(Ljava/lang/String;I)V

    .line 1989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1990
    goto/16 :goto_f51

    .line 1975
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_cfd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1977
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1978
    .local v2, "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V

    .line 1979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    goto/16 :goto_f51

    .line 1965
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_d0d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1967
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1968
    .restart local v2    # "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->allowAutojoinPasspoint(Ljava/lang/String;Z)V

    .line 1969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1970
    goto/16 :goto_f51

    .line 1955
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_d1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1957
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1958
    .restart local v2    # "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->allowAutojoin(IZ)V

    .line 1959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1960
    goto/16 :goto_f51

    .line 1947
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_d2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v1

    .line 1948
    .local v1, "_arg0":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryAutojoinGlobal(Landroid/net/wifi/IBooleanListener;)V

    .line 1949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    goto/16 :goto_f51

    .line 1935
    .end local v1    # "_arg0":Landroid/net/wifi/IBooleanListener;
    :pswitch_d3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1937
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1939
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1940
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->allowAutojoinGlobal(ZLjava/lang/String;Landroid/os/Bundle;)V

    .line 1941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    goto/16 :goto_f51

    .line 1924
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_d55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1926
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1927
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(ILjava/lang/String;)Z

    move-result v3

    .line 1928
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1929
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1930
    goto/16 :goto_f51

    .line 1911
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_d69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1913
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1915
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1916
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZLjava/lang/String;)Z

    move-result v4

    .line 1917
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1918
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1919
    goto/16 :goto_f51

    .line 1902
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_d81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1903
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->removeNonCallerConfiguredNetworks(Ljava/lang/String;)Z

    move-result v2

    .line 1904
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1906
    goto/16 :goto_f51

    .line 1891
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_d91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1893
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1894
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(ILjava/lang/String;)Z

    move-result v3

    .line 1895
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1896
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1897
    goto/16 :goto_f51

    .line 1882
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_da5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1883
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v2

    .line 1884
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    goto/16 :goto_f51

    .line 1872
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_db5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1874
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1875
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    .line 1876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1877
    goto/16 :goto_f51

    .line 1863
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_dc5
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;

    .line 1864
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getWifiConfigsForPasspointProfiles(Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v2

    .line 1865
    .local v2, "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1867
    goto/16 :goto_f51

    .line 1854
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;
    .end local v2    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiConfiguration;>;"
    :pswitch_dd9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1855
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getPasspointConfigurations(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v2

    .line 1856
    .local v2, "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1858
    goto/16 :goto_f51

    .line 1843
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    :pswitch_de9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1845
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1846
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->removePasspointConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1847
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1848
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1849
    goto/16 :goto_f51

    .line 1832
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_dfd
    sget-object v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 1834
    .local v1, "_arg0":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1835
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z

    move-result v3

    .line 1836
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1837
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1838
    goto/16 :goto_f51

    .line 1821
    .end local v1    # "_arg0":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e15
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1823
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1824
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Landroid/net/wifi/WifiManager$AddNetworkResult;

    move-result-object v3

    .line 1825
    .local v3, "_result":Landroid/net/wifi/WifiManager$AddNetworkResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1827
    goto/16 :goto_f51

    .line 1808
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/WifiManager$AddNetworkResult;
    :pswitch_e2d
    sget-object v1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1810
    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1812
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1813
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    .line 1814
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1815
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1816
    goto/16 :goto_f51

    .line 1799
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_e4d
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 1800
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingPasspointConfigsForOsuProviders(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;

    move-result-object v2

    .line 1801
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1802
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1803
    goto/16 :goto_f51

    .line 1790
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_e61
    sget-object v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 1791
    .local v1, "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingOsuProviders(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)Ljava/util/Map;

    move-result-object v2

    .line 1792
    .restart local v2    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1794
    goto/16 :goto_f51

    .line 1781
    .end local v1    # "_arg0":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/ScanResult;>;"
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_e75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1782
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getSsidsAllowlist(Ljava/lang/String;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v2

    .line 1783
    .local v2, "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1785
    goto/16 :goto_f51

    .line 1771
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    :pswitch_e85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1773
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 1774
    .local v2, "_arg1":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setSsidsAllowlist(Ljava/lang/String;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V

    .line 1775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    goto/16 :goto_f51

    .line 1758
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/wifi/WifiSsid;>;"
    :pswitch_e99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1760
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1762
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1763
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConnectedNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 1764
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1766
    goto/16 :goto_f51

    .line 1745
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :pswitch_eb5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1747
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1749
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1750
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v4

    .line 1751
    .local v4, "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1753
    goto/16 :goto_f51

    .line 1732
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    :pswitch_ed1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1734
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1736
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1737
    .local v3, "_arg2":Z
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object v4

    .line 1738
    .restart local v4    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1740
    goto :goto_f51

    .line 1724
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    :pswitch_ee8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1725
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setOneShotScreenOnConnectivityScanDelayMillis(I)V

    .line 1726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1727
    goto :goto_f51

    .line 1714
    .end local v1    # "_arg0":I
    :pswitch_ef3
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1716
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1717
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setScreenOnScanSchedule([I[I)V

    .line 1718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    goto :goto_f51

    .line 1706
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":[I
    :pswitch_f02
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isThirdPartyAppEnablingWifiConfirmationDialogEnabled()Z

    move-result v1

    .line 1707
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1709
    goto :goto_f51

    .line 1699
    .end local v1    # "_result":Z
    :pswitch_f0d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1700
    .local v1, "_arg0":Z
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setThirdPartyAppEnablingWifiConfirmationDialogEnabled(Z)V

    .line 1701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    goto :goto_f51

    .line 1691
    .end local v1    # "_arg0":Z
    :pswitch_f18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiNetworkSelectionConfigListener;

    move-result-object v1

    .line 1692
    .local v1, "_arg0":Landroid/net/wifi/IWifiNetworkSelectionConfigListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getNetworkSelectionConfig(Landroid/net/wifi/IWifiNetworkSelectionConfigListener;)V

    .line 1693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    goto :goto_f51

    .line 1683
    .end local v1    # "_arg0":Landroid/net/wifi/IWifiNetworkSelectionConfigListener;
    :pswitch_f27
    sget-object v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 1684
    .local v1, "_arg0":Landroid/net/wifi/WifiNetworkSelectionConfig;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setNetworkSelectionConfig(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    .line 1685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    goto :goto_f51

    .line 1676
    .end local v1    # "_arg0":Landroid/net/wifi/WifiNetworkSelectionConfig;
    :pswitch_f36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IOnWifiActivityEnergyInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;

    move-result-object v1

    .line 1677
    .local v1, "_arg0":Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getWifiActivityEnergyInfoAsync(Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;)V

    .line 1678
    goto :goto_f51

    .line 1667
    .end local v1    # "_arg0":Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;
    :pswitch_f42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1668
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/IWifiManager$Stub;->isFeatureSupported(I)Z

    move-result v2

    .line 1669
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1671
    nop

    .line 3704
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :goto_f51
    return v10

    :pswitch_data_f52
    .packed-switch 0x1
        :pswitch_f42
        :pswitch_f36
        :pswitch_f27
        :pswitch_f18
        :pswitch_f0d
        :pswitch_f02
        :pswitch_ef3
        :pswitch_ee8
        :pswitch_ed1
        :pswitch_eb5
        :pswitch_e99
        :pswitch_e85
        :pswitch_e75
        :pswitch_e61
        :pswitch_e4d
        :pswitch_e2d
        :pswitch_e15
        :pswitch_dfd
        :pswitch_de9
        :pswitch_dd9
        :pswitch_dc5
        :pswitch_db5
        :pswitch_da5
        :pswitch_d91
        :pswitch_d81
        :pswitch_d69
        :pswitch_d55
        :pswitch_d3d
        :pswitch_d2d
        :pswitch_d1d
        :pswitch_d0d
        :pswitch_cfd
        :pswitch_ced
        :pswitch_cd9
        :pswitch_cc5
        :pswitch_ca9
        :pswitch_c91
        :pswitch_c81
        :pswitch_c71
        :pswitch_c61
        :pswitch_c4d
        :pswitch_c39
        :pswitch_c2d
        :pswitch_c1d
        :pswitch_c0d
        :pswitch_bf5
        :pswitch_be5
        :pswitch_bd5
        :pswitch_bc5
        :pswitch_bb1
        :pswitch_ba5
        :pswitch_b9d
        :pswitch_b91
        :pswitch_b85
        :pswitch_b79
        :pswitch_b6d
        :pswitch_b61
        :pswitch_b51
        :pswitch_b41
        :pswitch_b31
        :pswitch_b25
        :pswitch_af8
        :pswitch_ad8
        :pswitch_ac8
        :pswitch_ac0
        :pswitch_ab4
        :pswitch_a9c
        :pswitch_a8c
        :pswitch_a7c
        :pswitch_a70
        :pswitch_a5e
        :pswitch_a4e
        :pswitch_a3e
        :pswitch_a26
        :pswitch_a0e
        :pswitch_9f2
        :pswitch_9e6
        :pswitch_9d2
        :pswitch_9a1
        :pswitch_999
        :pswitch_981
        :pswitch_969
        :pswitch_959
        :pswitch_951
        :pswitch_945
        :pswitch_939
        :pswitch_92d
        :pswitch_91d
        :pswitch_905
        :pswitch_8ed
        :pswitch_8dd
        :pswitch_8c5
        :pswitch_8b5
        :pswitch_89d
        :pswitch_88d
        :pswitch_87d
        :pswitch_86d
        :pswitch_861
        :pswitch_855
        :pswitch_849
        :pswitch_839
        :pswitch_82d
        :pswitch_821
        :pswitch_815
        :pswitch_809
        :pswitch_7fd
        :pswitch_7ed
        :pswitch_7dd
        :pswitch_7c5
        :pswitch_7b5
        :pswitch_7a5
        :pswitch_795
        :pswitch_785
        :pswitch_775
        :pswitch_765
        :pswitch_755
        :pswitch_745
        :pswitch_735
        :pswitch_725
        :pswitch_709
        :pswitch_6ed
        :pswitch_6dd
        :pswitch_6d1
        :pswitch_6c5
        :pswitch_6a0
        :pswitch_688
        :pswitch_66c
        :pswitch_664
        :pswitch_650
        :pswitch_62a
        :pswitch_611
        :pswitch_600
        :pswitch_5f0
        :pswitch_5e0
        :pswitch_5c8
        :pswitch_5b4
        :pswitch_59c
        :pswitch_588
        :pswitch_578
        :pswitch_564
        :pswitch_54c
        :pswitch_544
        :pswitch_51d
        :pswitch_509
        :pswitch_501
        :pswitch_4ed
        :pswitch_4c9
        :pswitch_4bd
        :pswitch_4b1
        :pswitch_49d
        :pswitch_491
        :pswitch_485
        :pswitch_479
        :pswitch_471
        :pswitch_45d
        :pswitch_449
        :pswitch_439
        :pswitch_429
        :pswitch_421
        :pswitch_40d
        :pswitch_3f9
        :pswitch_3ed
        :pswitch_3dd
        :pswitch_3cd
        :pswitch_3c1
        :pswitch_39c
        :pswitch_390
        :pswitch_384
        :pswitch_378
        :pswitch_368
        :pswitch_35c
        :pswitch_348
        :pswitch_33c
        :pswitch_328
        :pswitch_318
        :pswitch_2fc
        :pswitch_2e8
        :pswitch_2cc
        :pswitch_2c0
        :pswitch_2a0
        :pswitch_290
        :pswitch_284
        :pswitch_278
        :pswitch_268
        :pswitch_254
        :pswitch_244
        :pswitch_234
        :pswitch_224
        :pswitch_20c
        :pswitch_1f4
        :pswitch_1dc
        :pswitch_1d0
        :pswitch_1c0
        :pswitch_1b0
        :pswitch_1a8
        :pswitch_198
        :pswitch_184
        :pswitch_16c
        :pswitch_158
        :pswitch_144
        :pswitch_12c
        :pswitch_10c
        :pswitch_f0
        :pswitch_dc
        :pswitch_d0
        :pswitch_c0
        :pswitch_b0
        :pswitch_a4
        :pswitch_98
        :pswitch_84
        :pswitch_6c
        :pswitch_58
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
