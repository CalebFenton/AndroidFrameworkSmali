.class public Lcom/android/server/wifi/WifiConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static synthetic -android_net_IpConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static synthetic -android_net_IpConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static synthetic -android_net_NetworkInfo$DetailedStateSwitchesValues:[I = null

.field private static final ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED"

.field private static final ASSOCIATED_FULL_SCAN_BACKOFF_KEY:Ljava/lang/String; = "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD"

.field private static final ASSOCIATED_PARTIAL_SCAN_PERIOD_KEY:Ljava/lang/String; = "ASSOCIATED_PARTIAL_SCAN_PERIOD"

.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH"

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD"

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW"

.field private static final BLACKLIST_MILLI_KEY:Ljava/lang/String; = "BLACKLIST_MILLI"

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID"

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID"

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS"

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE"

.field private static final CONFIG_KEY:Ljava/lang/String; = "CONFIG"

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY"

.field private static final CREATION_TIME_KEY:Ljava/lang/String; = "CREATION_TIME"

.field private static final CREATOR_NAME_KEY:Ljava/lang/String; = "CREATOR_NAME"

.field private static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY"

.field private static final DATE_KEY:Ljava/lang/String; = "DATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW"

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELETED_CONFIG_PSK:Ljava/lang/String; = "Mjkd86jEMGn79KhKll298Uu7-deleted"

.field private static final DELETED_CRC32_KEY:Ljava/lang/String; = "DELETED_CRC32"

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL"

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD"

.field static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field private static final ENABLE_AUTOJOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTOJOIN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_AUTO_JOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED"

.field private static final ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED"

.field private static final ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED"

.field private static final ENABLE_HAL_BASED_PNO:Ljava/lang/String; = "ENABLE_HAL_BASED_PNO"

.field private static final ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY"

.field private static final ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL"

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE"

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN"

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ"

.field private static final G_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "G_BAND_PREFERENCE_RSSI_THRESHOLD"

.field private static final JOIN_ATTEMPT_BOOST_KEY:Ljava/lang/String; = "JOIN_ATTEMPT_BOOST"

.field private static final LINK_KEY:Ljava/lang/String; = "LINK"

.field private static final MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS"

.field private static final MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS"

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI"

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS"

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION"

.field private static final NUM_AUTH_FAILURES_KEY:Ljava/lang/String; = "AUTH_FAILURES"

.field private static final NUM_CONNECTION_FAILURES_KEY:Ljava/lang/String; = "CONNECT_FAILURES"

.field private static final NUM_IP_CONFIG_FAILURES_KEY:Ljava/lang/String; = "IP_CONFIG_FAILURES"

.field public static final OLD_PRIVATE_KEY_NAME:Ljava/lang/String; = "private_key"

.field private static final ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS_KEY:Ljava/lang/String; = "ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS"

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION"

.field private static final PPS_FILE:Ljava/lang/String; = "/data/misc/wifi/PerProviderSubscription.conf"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY"

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI"

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH"

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE"

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED"

.field private static final SEPARATOR:Ljava/lang/String; = ":  "

.field private static final SSID_KEY:Ljava/lang/String; = "SSID"

.field private static final STATUS_KEY:Ljava/lang/String; = "AUTO_JOIN_STATUS"

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final SUPPLICANT_CONFIG_FILE_BACKUP:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf.tmp"

.field private static final SUPPLICANT_DISABLE_REASON_KEY:Ljava/lang/String; = "SUP_DIS_REASON"

.field private static final SUPPLICANT_STATUS_KEY:Ljava/lang/String; = "SUP_STATUS"

.field public static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final THRESHOLD_BAD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_24"

.field private static final THRESHOLD_BAD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_5"

.field private static final THRESHOLD_GOOD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_24"

.field private static final THRESHOLD_GOOD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_5"

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G"

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G"

.field private static final THRESHOLD_LOW_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_24"

.field private static final THRESHOLD_LOW_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_5"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS"

.field private static final THRESHOLD_UNBLACKLIST_HARD_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_24G"

.field private static final THRESHOLD_UNBLACKLIST_HARD_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_5G"

.field private static final THRESHOLD_UNBLACKLIST_SOFT_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_24G"

.field private static final THRESHOLD_UNBLACKLIST_SOFT_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_5G"

.field private static final UPDATE_NAME_KEY:Ljava/lang/String; = "UPDATE_NAME"

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME"

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID"

.field private static final USER_APPROVED_KEY:Ljava/lang/String; = "USER_APPROVED"

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS"

.field private static VDBG:Z = false

.field private static VVDBG:Z = false

.field private static final WIFI_VERBOSE_LOGS_KEY:Ljava/lang/String; = "WIFI_VERBOSE_LOGS"

.field private static final autoJoinConfigFile:Ljava/lang/String;

.field public static final idStringVarName:Ljava/lang/String; = "id_str"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static mConnectChoice:Ljava/util/regex/Pattern; = null

.field public static final maxNumScanCacheEntries:I = 0x80

.field private static final networkHistoryConfigFile:Ljava/lang/String;

.field private static final sKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

.field public associatedFullScanMaxIntervalMilli:I

.field public associatedHysteresisHigh:I

.field public associatedHysteresisLow:I

.field public badLinkSpeed24:I

.field public badLinkSpeed5:I

.field public bandPreferenceBoostFactor5:I

.field public final bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public bandPreferencePenaltyFactor5:I

.field public final bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public currentNetworkBoost:I

.field public enable5GHzPreference:Z

.field public final enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public enableLinkDebouncing:Z

.field public final enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

.field public enableWifiCellularHandoverUserTriggeredAdjustment:Z

.field public goodLinkSpeed24:I

.field public goodLinkSpeed5:I

.field private lastSelectedConfiguration:Ljava/lang/String;

.field public lastUnwantedNetworkDisconnectTimestamp:J

.field private final mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

.field mBssidBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCachedPnoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private mContext:Landroid/content/Context;

.field public mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

.field private final mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private mScanDetailCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field public maxAuthErrorsToBlacklist:I

.field public maxConnectionErrorsToBlacklist:I

.field public final maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxRxPacketForFullScans:I

.field public final maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxRxPacketForPartialScans:I

.field public maxTxPacketForFullScans:I

.field public final maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxTxPacketForPartialScans:I

.field public networkSwitchingBlackListPeriodMilli:I

.field public onlyLinkSameCredentialConfigurations:Z

.field public roamOnAny:Z

.field public scanResultRssiLevelPatchUp:I

.field showNetworks:Z

.field public final thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public wifiConfigBlacklistMinTimeMilli:I

.field public wifiConfigLastSelectionHysteresis:I

.field public final wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConfigStore;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/hotspot2/omadm/MOManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->values()[Landroid/net/IpConfiguration$IpAssignment;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@10
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    #@19
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    #@22
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private static synthetic -getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$ProxySettings;->values()[Landroid/net/IpConfiguration$ProxySettings;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@10
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    #@19
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    #@22
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    #@2b
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method private static synthetic -getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    #@10
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0xa

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@1a
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/16 v2, 0xb

    #@20
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    #@22
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    #@24
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@27
    move-result v1

    #@28
    const/16 v2, 0xc

    #@2a
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    #@2c
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@2e
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x1

    #@33
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    #@35
    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@37
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@3a
    move-result v1

    #@3b
    const/16 v2, 0xd

    #@3d
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    #@3f
    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@41
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@44
    move-result v1

    #@45
    const/4 v2, 0x2

    #@46
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    #@48
    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@4a
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@4d
    move-result v1

    #@4e
    const/16 v2, 0xe

    #@50
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    #@52
    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@54
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@57
    move-result v1

    #@58
    const/16 v2, 0xf

    #@5a
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    #@5c
    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@5e
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@61
    move-result v1

    #@62
    const/16 v2, 0x10

    #@64
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    #@66
    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@68
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@6b
    move-result v1

    #@6c
    const/16 v2, 0x11

    #@6e
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    #@70
    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    #@72
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@75
    move-result v1

    #@76
    const/16 v2, 0x12

    #@78
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    #@7a
    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@7c
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@7f
    move-result v1

    #@80
    const/16 v2, 0x13

    #@82
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    #@84
    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@86
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@89
    move-result v1

    #@8a
    const/16 v2, 0x14

    #@8c
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    #@8e
    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@90
    return-object v0

    #@91
    :catch_0
    move-exception v1

    #@92
    goto :goto_c

    #@93
    :catch_1
    move-exception v1

    #@94
    goto :goto_b

    #@95
    :catch_2
    move-exception v1

    #@96
    goto :goto_a

    #@97
    :catch_3
    move-exception v1

    #@98
    goto :goto_9

    #@99
    :catch_4
    move-exception v1

    #@9a
    goto :goto_8

    #@9b
    :catch_5
    move-exception v1

    #@9c
    goto :goto_7

    #@9d
    :catch_6
    move-exception v1

    #@9e
    goto :goto_6

    #@9f
    :catch_7
    move-exception v1

    #@a0
    goto :goto_5

    #@a1
    :catch_8
    move-exception v1

    #@a2
    goto :goto_4

    #@a3
    :catch_9
    move-exception v1

    #@a4
    goto :goto_3

    #@a5
    :catch_a
    move-exception v1

    #@a6
    goto :goto_2

    #@a7
    :catch_b
    move-exception v1

    #@a8
    goto/16 :goto_1

    #@aa
    :catch_c
    move-exception v1

    #@ab
    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 162
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@3
    .line 163
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    #@5
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 202
    const-string/jumbo v1, "/misc/wifi/ipconfig.txt"

    #@15
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    #@1f
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 205
    const-string/jumbo v1, "/misc/wifi/networkHistory.txt"

    #@2f
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    #@39
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 208
    const-string/jumbo v1, "/misc/wifi/autojoinconfig.txt"

    #@49
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    #@53
    .line 438
    new-instance v0, Ljava/util/HashMap;

    #@55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@58
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@5a
    .line 446
    const-string/jumbo v0, "(.*)=([0-9]+)"

    #@5d
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@60
    move-result-object v0

    #@61
    .line 445
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    #@63
    .line 465
    const/16 v0, 0xd

    #@65
    new-array v0, v0, [Ljava/lang/String;

    #@67
    .line 466
    const-string/jumbo v1, "eap"

    #@6a
    aput-object v1, v0, v2

    #@6c
    const-string/jumbo v1, "phase2"

    #@6f
    const/4 v2, 0x1

    #@70
    aput-object v1, v0, v2

    #@72
    .line 467
    const-string/jumbo v1, "identity"

    #@75
    const/4 v2, 0x2

    #@76
    aput-object v1, v0, v2

    #@78
    const-string/jumbo v1, "anonymous_identity"

    #@7b
    const/4 v2, 0x3

    #@7c
    aput-object v1, v0, v2

    #@7e
    .line 468
    const-string/jumbo v1, "password"

    #@81
    const/4 v2, 0x4

    #@82
    aput-object v1, v0, v2

    #@84
    const-string/jumbo v1, "client_cert"

    #@87
    const/4 v2, 0x5

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 469
    const-string/jumbo v1, "ca_cert"

    #@8d
    const/4 v2, 0x6

    #@8e
    aput-object v1, v0, v2

    #@90
    const-string/jumbo v1, "subject_match"

    #@93
    const/4 v2, 0x7

    #@94
    aput-object v1, v0, v2

    #@96
    .line 470
    const-string/jumbo v1, "engine"

    #@99
    const/16 v2, 0x8

    #@9b
    aput-object v1, v0, v2

    #@9d
    const-string/jumbo v1, "engine_id"

    #@a0
    const/16 v2, 0x9

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 471
    const-string/jumbo v1, "key_id"

    #@a7
    const/16 v2, 0xa

    #@a9
    aput-object v1, v0, v2

    #@ab
    const-string/jumbo v1, "altsubject_match"

    #@ae
    const/16 v2, 0xb

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 472
    const-string/jumbo v1, "domain_suffix_match"

    #@b5
    const/16 v2, 0xc

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 465
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    #@bb
    .line 157
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wn"    # Lcom/android/server/wifi/WifiNative;

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    .line 531
    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    #@8
    .line 170
    new-instance v1, Lcom/android/server/wifi/ConfigurationMap;

    #@a
    invoke-direct {v1}, Lcom/android/server/wifi/ConfigurationMap;-><init>()V

    #@d
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@f
    .line 187
    new-instance v1, Ljava/util/HashSet;

    #@11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@14
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    #@16
    .line 196
    new-instance v1, Ljava/util/HashSet;

    #@18
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@1b
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@1d
    .line 199
    const/4 v1, -0x1

    #@1e
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@20
    .line 350
    const/16 v1, 0x8

    #@22
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    #@24
    .line 351
    const/16 v1, 0x10

    #@26
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    #@28
    .line 353
    const/16 v1, 0x28

    #@2a
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    #@2c
    .line 354
    const/16 v1, 0x50

    #@2e
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    #@30
    .line 356
    const v1, 0x493e0

    #@33
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    #@35
    .line 360
    const v1, 0xa4cb800

    #@38
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    #@3a
    .line 362
    const/4 v1, 0x5

    #@3b
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    #@3d
    .line 363
    iput v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    #@3f
    .line 365
    const/4 v1, 0x6

    #@40
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    #@42
    .line 366
    const/16 v1, 0xc

    #@44
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    #@46
    .line 367
    const/16 v1, 0x18

    #@48
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    #@4a
    .line 368
    const/16 v1, 0x24

    #@4c
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    #@4e
    .line 370
    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    #@50
    .line 371
    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    #@52
    .line 372
    const v1, 0x493e0

    #@55
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    #@57
    .line 375
    const v1, 0x2bf20

    #@5a
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigLastSelectionHysteresis:I

    #@5c
    .line 378
    const/16 v1, 0xe

    #@5e
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    #@60
    .line 379
    const/16 v1, 0x8

    #@62
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    #@64
    .line 381
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@66
    .line 383
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConfigStore;->roamOnAny:Z

    #@68
    .line 384
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    #@6a
    .line 386
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    #@6c
    .line 387
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    #@6e
    .line 388
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@70
    .line 390
    const/16 v1, 0x19

    #@72
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    #@74
    .line 391
    const/16 v1, -0x55

    #@76
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    #@78
    .line 395
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7a
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@7d
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7f
    .line 396
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@81
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@84
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@86
    .line 397
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@88
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@8b
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8d
    .line 398
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8f
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@92
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@94
    .line 399
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@96
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@99
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9b
    .line 400
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9d
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@a0
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a2
    .line 402
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@a4
    sget v2, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    #@a6
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@a9
    .line 401
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    #@ab
    .line 404
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@ad
    sget v2, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    #@af
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@b2
    .line 403
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b4
    .line 406
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@b6
    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    #@b8
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@bb
    .line 405
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    #@bd
    .line 408
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@bf
    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    #@c1
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@c4
    .line 407
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c6
    .line 410
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@c8
    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    #@ca
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@cd
    .line 409
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    #@cf
    .line 412
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d1
    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    #@d3
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@d6
    .line 411
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d8
    .line 414
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@da
    sget v2, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    #@dc
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@df
    .line 413
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e1
    .line 415
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@e3
    sget v2, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    #@e5
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@e8
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@ea
    .line 416
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@ec
    sget v2, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    #@ee
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@f1
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f3
    .line 418
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@f5
    sget v2, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    #@f7
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@fa
    .line 417
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@fc
    .line 419
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@fe
    sget v2, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    #@100
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@103
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@105
    .line 420
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@107
    sget v2, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    #@109
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@10c
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10e
    .line 421
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@110
    const/16 v2, 0x28

    #@112
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@115
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    #@117
    .line 422
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@119
    const/16 v2, 0x50

    #@11b
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11e
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    #@120
    .line 423
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@122
    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@125
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    #@127
    .line 425
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@129
    sget v2, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    #@12b
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@12e
    .line 424
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@130
    .line 427
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@132
    const/16 v2, 0xc

    #@134
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@137
    .line 426
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    #@139
    .line 429
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@13b
    sget v2, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    #@13d
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@140
    .line 428
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@142
    .line 430
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@144
    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@147
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    #@149
    .line 431
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@14b
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@14e
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@150
    .line 432
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@152
    const/4 v2, 0x6

    #@153
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@156
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@158
    .line 433
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@15a
    const/16 v2, 0x3a98

    #@15c
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@15f
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@161
    .line 434
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@163
    const v2, 0x1d4c0

    #@166
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@169
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16b
    .line 435
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@16d
    const/16 v2, 0x4e20

    #@16f
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@172
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@174
    .line 436
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@176
    const v2, 0x2bf20

    #@179
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@17c
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@17e
    .line 479
    const-wide/16 v2, 0x0

    #@180
    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    #@182
    .line 496
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@185
    move-result-object v1

    #@186
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@188
    .line 505
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@18a
    .line 511
    new-instance v1, Ljava/util/ArrayList;

    #@18c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@18f
    .line 510
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    #@191
    .line 516
    new-instance v1, Ljava/util/HashSet;

    #@193
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@196
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@198
    .line 522
    new-instance v1, Ljava/util/HashSet;

    #@19a
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@19d
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    #@19f
    .line 532
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@1a1
    .line 533
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1a3
    .line 534
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1a5
    .line 537
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1a7
    const-string/jumbo v2, "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED"

    #@1aa
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1ac
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1af
    .line 538
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1b1
    const-string/jumbo v2, "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED"

    #@1b4
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b6
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b9
    .line 539
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1bb
    const-string/jumbo v2, "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED"

    #@1be
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1c0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c3
    .line 540
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1c5
    const-string/jumbo v2, "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY"

    #@1c8
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1ca
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cd
    .line 541
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1cf
    const-string/jumbo v2, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G"

    #@1d2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1d4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d7
    .line 542
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1d9
    const-string/jumbo v2, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G"

    #@1dc
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1de
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e1
    .line 543
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1e3
    const-string/jumbo v2, "THRESHOLD_UNBLACKLIST_HARD_5G"

    #@1e6
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1e8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1eb
    .line 544
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1ed
    const-string/jumbo v2, "THRESHOLD_UNBLACKLIST_SOFT_5G"

    #@1f0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1f2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f5
    .line 545
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@1f7
    const-string/jumbo v2, "THRESHOLD_UNBLACKLIST_HARD_24G"

    #@1fa
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1fc
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ff
    .line 546
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@201
    const-string/jumbo v2, "THRESHOLD_UNBLACKLIST_SOFT_24G"

    #@204
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    #@206
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@209
    .line 547
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@20b
    const-string/jumbo v2, "THRESHOLD_GOOD_RSSI_5"

    #@20e
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@210
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@213
    .line 548
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@215
    const-string/jumbo v2, "THRESHOLD_LOW_RSSI_5"

    #@218
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@21a
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21d
    .line 549
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@21f
    const-string/jumbo v2, "THRESHOLD_BAD_RSSI_5"

    #@222
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@224
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@227
    .line 550
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@229
    const-string/jumbo v2, "THRESHOLD_GOOD_RSSI_24"

    #@22c
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22e
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@231
    .line 551
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@233
    const-string/jumbo v2, "THRESHOLD_LOW_RSSI_24"

    #@236
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@238
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23b
    .line 552
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@23d
    const-string/jumbo v2, "THRESHOLD_BAD_RSSI_24"

    #@240
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@242
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@245
    .line 553
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@247
    const-string/jumbo v2, "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING"

    #@24a
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    #@24c
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24f
    .line 554
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@251
    const-string/jumbo v2, "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING"

    #@254
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    #@256
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@259
    .line 555
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@25b
    const-string/jumbo v2, "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS"

    #@25e
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    #@260
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@263
    .line 556
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@265
    const-string/jumbo v2, "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS"

    #@268
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    #@26a
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26d
    .line 557
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@26f
    const-string/jumbo v2, "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS"

    #@272
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    #@274
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@277
    .line 558
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@279
    const-string/jumbo v2, "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS"

    #@27c
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    #@27e
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@281
    .line 559
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@283
    const-string/jumbo v2, "WIFI_VERBOSE_LOGS"

    #@286
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    #@288
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28b
    .line 560
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@28d
    const-string/jumbo v2, "A_BAND_PREFERENCE_RSSI_THRESHOLD"

    #@290
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@292
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@295
    .line 561
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@297
    const-string/jumbo v2, "ASSOCIATED_PARTIAL_SCAN_PERIOD"

    #@29a
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@29c
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29f
    .line 562
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@2a1
    const-string/jumbo v2, "ASSOCIATED_PARTIAL_SCAN_PERIOD"

    #@2a4
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2a6
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a9
    .line 564
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@2ab
    const-string/jumbo v2, "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD"

    #@2ae
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2b0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b3
    .line 565
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@2b5
    const-string/jumbo v2, "G_BAND_PREFERENCE_RSSI_THRESHOLD"

    #@2b8
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2ba
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2bd
    .line 566
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@2bf
    const-string/jumbo v2, "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED"

    #@2c2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2c4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c7
    .line 567
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@2c9
    const-string/jumbo v2, "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS"

    #@2cc
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2ce
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d1
    .line 568
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@2d3
    const-string/jumbo v2, "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS"

    #@2d6
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2d8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2db
    .line 569
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@2dd
    const-string/jumbo v2, "ENABLE_HAL_BASED_PNO"

    #@2e0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2e2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e5
    .line 570
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@2e7
    const-string/jumbo v2, "ENABLE_HAL_BASED_PNO"

    #@2ea
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2ec
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ef
    .line 572
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@2f1
    if-eqz v1, :cond_1

    #@2f3
    .line 573
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2f5
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    #@2f8
    move-result-object v1

    #@2f9
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@2fb
    .line 574
    new-instance v1, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    #@2fd
    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    #@300
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    #@302
    .line 575
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    #@304
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->startWatching()V

    #@307
    .line 581
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@309
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@30b
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30e
    move-result-object v2

    #@30f
    .line 582
    const v3, 0x10e002d

    #@312
    .line 581
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@315
    move-result v2

    #@316
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@319
    .line 583
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@31b
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@31d
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@320
    move-result-object v2

    #@321
    .line 584
    const v3, 0x10e002d

    #@324
    .line 583
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@327
    move-result v2

    #@328
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@32b
    .line 585
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@32d
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@32f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@332
    move-result-object v2

    #@333
    .line 586
    const v3, 0x10e002b

    #@336
    .line 585
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@339
    move-result v2

    #@33a
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@33d
    .line 587
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@33f
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@341
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@344
    move-result-object v2

    #@345
    .line 588
    const v3, 0x10e002c

    #@348
    .line 587
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@34b
    move-result v2

    #@34c
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@34f
    .line 590
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@351
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@354
    move-result-object v1

    #@355
    .line 591
    const v2, 0x112001d

    #@358
    .line 590
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@35b
    move-result v1

    #@35c
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    #@35e
    .line 592
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@360
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@362
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@365
    move-result-object v2

    #@366
    .line 593
    const v3, 0x10e0032

    #@369
    .line 592
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@36c
    move-result v2

    #@36d
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@370
    .line 594
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@372
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@374
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@377
    move-result-object v2

    #@378
    .line 595
    const v3, 0x10e0033

    #@37b
    .line 594
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@37e
    move-result v2

    #@37f
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@382
    .line 596
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@384
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@387
    move-result-object v1

    #@388
    .line 597
    const v2, 0x10e0030

    #@38b
    .line 596
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@38e
    move-result v1

    #@38f
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    #@391
    .line 598
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    #@393
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@395
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@398
    move-result-object v2

    #@399
    .line 599
    const v3, 0x10e002f

    #@39c
    .line 598
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@39f
    move-result v2

    #@3a0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@3a3
    .line 600
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@3a5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a8
    move-result-object v1

    #@3a9
    .line 601
    const v2, 0x1120019

    #@3ac
    .line 600
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3af
    move-result v1

    #@3b0
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    #@3b2
    .line 603
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@3b4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b7
    move-result-object v1

    #@3b8
    .line 604
    const v2, 0x112001a

    #@3bb
    .line 603
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3be
    move-result v1

    #@3bf
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    #@3c1
    .line 606
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@3c3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c6
    move-result-object v1

    #@3c7
    .line 607
    const v2, 0x10e0011

    #@3ca
    .line 606
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@3cd
    move-result v1

    #@3ce
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    #@3d0
    .line 608
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@3d2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3d5
    move-result-object v1

    #@3d6
    .line 609
    const v2, 0x10e0015

    #@3d9
    .line 608
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@3dc
    move-result v1

    #@3dd
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    #@3df
    .line 611
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3e1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@3e3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3e6
    move-result-object v2

    #@3e7
    .line 612
    const v3, 0x10e0014

    #@3ea
    .line 611
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@3ed
    move-result v2

    #@3ee
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@3f1
    .line 613
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3f3
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@3f5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f8
    move-result-object v2

    #@3f9
    .line 614
    const v3, 0x10e0010

    #@3fc
    .line 613
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@3ff
    move-result v2

    #@400
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@403
    .line 616
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@405
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@408
    move-result-object v1

    #@409
    .line 617
    const v2, 0x10e0012

    #@40c
    .line 616
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@40f
    move-result v1

    #@410
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    #@412
    .line 618
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@414
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@417
    move-result-object v1

    #@418
    .line 619
    const v2, 0x10e0013

    #@41b
    .line 618
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@41e
    move-result v1

    #@41f
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    #@421
    .line 621
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@423
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@425
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@428
    move-result-object v2

    #@429
    .line 622
    const v3, 0x10e0016

    #@42c
    .line 621
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@42f
    move-result v2

    #@430
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@433
    .line 623
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@435
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@437
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@43a
    move-result-object v2

    #@43b
    .line 624
    const v3, 0x10e0017

    #@43e
    .line 623
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@441
    move-result v2

    #@442
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@445
    .line 625
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@447
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@449
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44c
    move-result-object v2

    #@44d
    .line 626
    const v3, 0x10e0018

    #@450
    .line 625
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@453
    move-result v2

    #@454
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@457
    .line 627
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@459
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@45b
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@45e
    move-result-object v2

    #@45f
    .line 628
    const v3, 0x10e0019

    #@462
    .line 627
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@465
    move-result v2

    #@466
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@469
    .line 629
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@46b
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@46d
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@470
    move-result-object v2

    #@471
    .line 630
    const v3, 0x10e001a

    #@474
    .line 629
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@477
    move-result v2

    #@478
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@47b
    .line 631
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@47d
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@47f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@482
    move-result-object v2

    #@483
    .line 632
    const v3, 0x10e001b

    #@486
    .line 631
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@489
    move-result v2

    #@48a
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@48d
    .line 634
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@48f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@492
    move-result-object v1

    #@493
    .line 635
    const v2, 0x112001b

    #@496
    .line 634
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@499
    move-result v1

    #@49a
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@49c
    .line 637
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@49e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a1
    move-result-object v1

    #@4a2
    .line 638
    const v2, 0x10e001c

    #@4a5
    .line 637
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@4a8
    move-result v1

    #@4a9
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    #@4ab
    .line 639
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@4ad
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4b0
    move-result-object v1

    #@4b1
    .line 640
    const v2, 0x10e001d

    #@4b4
    .line 639
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@4b7
    move-result v1

    #@4b8
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    #@4ba
    .line 641
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@4bc
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4bf
    move-result-object v1

    #@4c0
    .line 642
    const v2, 0x10e001e

    #@4c3
    .line 641
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@4c6
    move-result v1

    #@4c7
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    #@4c9
    .line 643
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@4cb
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4ce
    move-result-object v1

    #@4cf
    .line 644
    const v2, 0x10e001f

    #@4d2
    .line 643
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@4d5
    move-result v1

    #@4d6
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    #@4d8
    .line 646
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@4da
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4dd
    move-result-object v1

    #@4de
    .line 647
    const v2, 0x10e0035

    #@4e1
    .line 646
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@4e4
    move-result v1

    #@4e5
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    #@4e7
    .line 648
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@4e9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4ec
    move-result-object v1

    #@4ed
    .line 649
    const v2, 0x10e0034

    #@4f0
    .line 648
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@4f3
    move-result v1

    #@4f4
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    #@4f6
    .line 650
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@4f8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4fb
    move-result-object v1

    #@4fc
    .line 651
    const v2, 0x10e0036

    #@4ff
    .line 650
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@502
    move-result v1

    #@503
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    #@505
    .line 653
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@507
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@509
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@50c
    move-result-object v2

    #@50d
    .line 654
    const v3, 0x112001c

    #@510
    .line 653
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@513
    move-result v2

    #@514
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@517
    .line 656
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@519
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51c
    move-result-object v1

    #@51d
    .line 657
    const v2, 0x10e0037

    #@520
    .line 656
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@523
    move-result v1

    #@524
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    #@526
    .line 659
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@528
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@52b
    move-result-object v1

    #@52c
    .line 660
    const v2, 0x10e0038

    #@52f
    .line 659
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@532
    move-result v1

    #@533
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    #@535
    .line 662
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@537
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@53a
    move-result-object v1

    #@53b
    .line 663
    const v2, 0x10e0027

    #@53e
    .line 662
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@541
    move-result v1

    #@542
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    #@544
    .line 665
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@546
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@548
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@54b
    move-result-object v2

    #@54c
    .line 666
    const v3, 0x112001f

    #@54f
    .line 665
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@552
    move-result v2

    #@553
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@556
    .line 668
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@558
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@55a
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@55d
    move-result-object v2

    #@55e
    .line 669
    const v3, 0x1120020

    #@561
    .line 668
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@564
    move-result v2

    #@565
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@568
    .line 670
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@56a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@56d
    move-result v1

    #@56e
    if-nez v1, :cond_0

    #@570
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@572
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@575
    move-result v1

    #@576
    if-eqz v1, :cond_0

    #@578
    .line 671
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@57a
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@57d
    .line 674
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@57f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@582
    move-result-object v1

    #@583
    const v2, 0x1120017

    #@586
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@589
    move-result v0

    #@58a
    .line 675
    .local v0, "hs2on":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    #@58d
    move-result-object v1

    #@58e
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@591
    move-result-object v2

    #@592
    new-instance v1, Ljava/lang/StringBuilder;

    #@594
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@597
    const-string/jumbo v3, "Passpoint is "

    #@59a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59d
    move-result-object v3

    #@59e
    if-eqz v0, :cond_2

    #@5a0
    const-string/jumbo v1, "enabled"

    #@5a3
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a6
    move-result-object v1

    #@5a7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5aa
    move-result-object v1

    #@5ab
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5ae
    .line 677
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@5b0
    new-instance v2, Ljava/io/File;

    #@5b2
    const-string/jumbo v3, "/data/misc/wifi/PerProviderSubscription.conf"

    #@5b5
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5b8
    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;-><init>(Ljava/io/File;Z)V

    #@5bb
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@5bd
    .line 678
    new-instance v1, Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@5bf
    invoke-direct {v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;-><init>()V

    #@5c2
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@5c4
    .line 679
    new-instance v1, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@5c6
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@5c8
    invoke-direct {v1, v2, p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStore;)V

    #@5cb
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@5cd
    .line 680
    new-instance v1, Ljava/util/HashMap;

    #@5cf
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5d2
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    #@5d4
    .line 682
    new-instance v1, Lcom/android/server/wifi/SIMAccessor;

    #@5d6
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@5d8
    invoke-direct {v1, v2}, Lcom/android/server/wifi/SIMAccessor;-><init>(Landroid/content/Context;)V

    #@5db
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    #@5dd
    .line 531
    return-void

    #@5de
    .line 577
    .end local v0    # "hs2on":Z
    :cond_1
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@5e0
    .line 578
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    #@5e2
    goto/16 :goto_0

    #@5e4
    .line 675
    .restart local v0    # "hs2on":Z
    :cond_2
    const-string/jumbo v1, "disabled"

    #@5e7
    goto :goto_1
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 39
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 2606
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v6, "addOrUpdateNetworkNative "

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@21
    .line 2607
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_1

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@2b
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isEnabled()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_5

    #@31
    .line 2612
    :cond_1
    move-object/from16 v0, p1

    #@33
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@35
    move/from16 v31, v0

    #@37
    .line 2613
    .local v31, "netId":I
    const/16 v32, 0x0

    #@39
    .line 2615
    .local v32, "newNetwork":Z
    const/4 v5, -0x1

    #@3a
    move/from16 v0, v31

    #@3c
    if-ne v0, v5, :cond_2

    #@3e
    .line 2616
    move-object/from16 v0, p0

    #@40
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@42
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@49
    move-result-object v35

    #@4a
    .line 2617
    .local v35, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v35, :cond_6

    #@4c
    .line 2618
    move-object/from16 v0, v35

    #@4e
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@50
    move/from16 v31, v0

    #@52
    .line 2635
    .end local v35    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_0
    const/16 v37, 0x1

    #@54
    .line 2639
    .local v37, "updateFailed":Z
    move-object/from16 v0, p1

    #@56
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@58
    if-eqz v5, :cond_3

    #@5a
    .line 2640
    move-object/from16 v0, p0

    #@5c
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@5e
    .line 2642
    const-string/jumbo v6, "ssid"

    #@61
    .line 2643
    move-object/from16 v0, p1

    #@63
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@65
    invoke-static {v8}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    .line 2640
    move/from16 v0, v31

    #@6b
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@6e
    move-result v5

    #@6f
    if-eqz v5, :cond_9

    #@71
    .line 2648
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@74
    move-result v5

    #@75
    if-eqz v5, :cond_a

    #@77
    .line 2649
    move-object/from16 v0, p0

    #@79
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7b
    .line 2651
    const-string/jumbo v6, "id_str"

    #@7e
    .line 2652
    new-instance v8, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const/16 v9, 0x22

    #@85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@88
    move-result-object v8

    #@89
    move-object/from16 v0, p1

    #@8b
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@8d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v8

    #@91
    const/16 v9, 0x22

    #@93
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@96
    move-result-object v8

    #@97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    .line 2649
    move/from16 v0, v31

    #@9d
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@a0
    move-result v5

    #@a1
    if-nez v5, :cond_a

    #@a3
    .line 2653
    new-instance v5, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v6, "failed to set id_str: "

    #@ab
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    move-object/from16 v0, p1

    #@b1
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@b3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v5

    #@b7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    move-object/from16 v0, p0

    #@bd
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@c0
    .line 2866
    :goto_1
    if-eqz v37, :cond_2a

    #@c2
    .line 2867
    if-eqz v32, :cond_4

    #@c4
    .line 2868
    move-object/from16 v0, p0

    #@c6
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@c8
    move/from16 v0, v31

    #@ca
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    #@cd
    .line 2869
    new-instance v5, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v6, "Failed to set a network variable, removed network: "

    #@d5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v5

    #@d9
    move/from16 v0, v31

    #@db
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@de
    move-result-object v5

    #@df
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v5

    #@e3
    move-object/from16 v0, p0

    #@e5
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@e8
    .line 2871
    :cond_4
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    #@ea
    const/4 v6, -0x1

    #@eb
    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@ee
    return-object v5

    #@ef
    .line 2608
    .end local v31    # "netId":I
    .end local v32    # "newNetwork":Z
    .end local v37    # "updateFailed":Z
    :cond_5
    const-string/jumbo v5, "WifiConfigStore"

    #@f2
    const-string/jumbo v6, "Passpoint is not enabled"

    #@f5
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    .line 2609
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    #@fa
    const/4 v6, -0x1

    #@fb
    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@fe
    return-object v5

    #@ff
    .line 2620
    .restart local v31    # "netId":I
    .restart local v32    # "newNetwork":Z
    .restart local v35    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move-object/from16 v0, p0

    #@101
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@103
    move-object/from16 v0, p1

    #@105
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@107
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@10a
    move-result-object v5

    #@10b
    if-eqz v5, :cond_7

    #@10d
    .line 2621
    new-instance v5, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v6, "addOrUpdateNetworkNative passpoint "

    #@115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v5

    #@119
    move-object/from16 v0, p1

    #@11b
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@11d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v5

    #@121
    .line 2622
    const-string/jumbo v6, " was found, but no network Id"

    #@124
    .line 2621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    move-object/from16 v0, p0

    #@12e
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@131
    .line 2624
    :cond_7
    const/16 v32, 0x1

    #@133
    .line 2625
    move-object/from16 v0, p0

    #@135
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@137
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->addNetwork()I

    #@13a
    move-result v31

    #@13b
    .line 2626
    if-gez v31, :cond_8

    #@13d
    .line 2627
    const-string/jumbo v5, "Failed to add a network!"

    #@140
    move-object/from16 v0, p0

    #@142
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@145
    .line 2628
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    #@147
    const/4 v6, -0x1

    #@148
    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@14b
    return-object v5

    #@14c
    .line 2630
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    const-string/jumbo v6, "addOrUpdateNetworkNative created netId="

    #@154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v5

    #@158
    move/from16 v0, v31

    #@15a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v5

    #@15e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v5

    #@162
    move-object/from16 v0, p0

    #@164
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@167
    goto/16 :goto_0

    #@169
    .line 2644
    .end local v35    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v37    # "updateFailed":Z
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v6, "failed to set SSID: "

    #@171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v5

    #@175
    move-object/from16 v0, p1

    #@177
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v5

    #@17d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v5

    #@181
    move-object/from16 v0, p0

    #@183
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@186
    goto/16 :goto_1

    #@188
    .line 2658
    :cond_a
    move-object/from16 v0, p1

    #@18a
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@18c
    if-eqz v5, :cond_b

    #@18e
    .line 2659
    new-instance v5, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v6, "Setting BSSID for "

    #@196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v5

    #@19a
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@19d
    move-result-object v6

    #@19e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v5

    #@1a2
    const-string/jumbo v6, " to "

    #@1a5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v5

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@1ad
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v5

    #@1b1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v5

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@1ba
    .line 2660
    move-object/from16 v0, p0

    #@1bc
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1be
    .line 2662
    const-string/jumbo v6, "bssid"

    #@1c1
    .line 2663
    move-object/from16 v0, p1

    #@1c3
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@1c5
    .line 2660
    move/from16 v0, v31

    #@1c7
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@1ca
    move-result v5

    #@1cb
    if-nez v5, :cond_b

    #@1cd
    .line 2664
    new-instance v5, Ljava/lang/StringBuilder;

    #@1cf
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d2
    const-string/jumbo v6, "failed to set BSSID: "

    #@1d5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v5

    #@1d9
    move-object/from16 v0, p1

    #@1db
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@1dd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v5

    #@1e1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v5

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1ea
    goto/16 :goto_1

    #@1ec
    .line 2670
    :cond_b
    move-object/from16 v0, p1

    #@1ee
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1f0
    sget-object v6, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@1f2
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@1f5
    move-result-object v16

    #@1f6
    .line 2671
    .local v16, "allowedKeyManagementString":Ljava/lang/String;
    move-object/from16 v0, p1

    #@1f8
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1fa
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    #@1fd
    move-result v5

    #@1fe
    if-eqz v5, :cond_c

    #@200
    .line 2672
    move-object/from16 v0, p0

    #@202
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@204
    .line 2674
    const-string/jumbo v6, "key_mgmt"

    #@207
    .line 2672
    move/from16 v0, v31

    #@209
    move-object/from16 v1, v16

    #@20b
    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@20e
    move-result v5

    #@20f
    if-eqz v5, :cond_13

    #@211
    .line 2682
    :cond_c
    move-object/from16 v0, p1

    #@213
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@215
    sget-object v6, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@217
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@21a
    move-result-object v18

    #@21b
    .line 2683
    .local v18, "allowedProtocolsString":Ljava/lang/String;
    move-object/from16 v0, p1

    #@21d
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@21f
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    #@222
    move-result v5

    #@223
    if-eqz v5, :cond_d

    #@225
    .line 2684
    move-object/from16 v0, p0

    #@227
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@229
    .line 2686
    const-string/jumbo v6, "proto"

    #@22c
    .line 2684
    move/from16 v0, v31

    #@22e
    move-object/from16 v1, v18

    #@230
    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@233
    move-result v5

    #@234
    if-eqz v5, :cond_14

    #@236
    .line 2694
    :cond_d
    move-object/from16 v0, p1

    #@238
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@23a
    sget-object v6, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    #@23c
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@23f
    move-result-object v14

    #@240
    .line 2695
    .local v14, "allowedAuthAlgorithmsString":Ljava/lang/String;
    move-object/from16 v0, p1

    #@242
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@244
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    #@247
    move-result v5

    #@248
    if-eqz v5, :cond_e

    #@24a
    .line 2696
    move-object/from16 v0, p0

    #@24c
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@24e
    .line 2698
    const-string/jumbo v6, "auth_alg"

    #@251
    .line 2696
    move/from16 v0, v31

    #@253
    invoke-virtual {v5, v0, v6, v14}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@256
    move-result v5

    #@257
    if-eqz v5, :cond_15

    #@259
    .line 2706
    :cond_e
    move-object/from16 v0, p1

    #@25b
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@25d
    .line 2707
    sget-object v6, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    #@25f
    .line 2706
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@262
    move-result-object v17

    #@263
    .line 2708
    .local v17, "allowedPairwiseCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    #@265
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@267
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    #@26a
    move-result v5

    #@26b
    if-eqz v5, :cond_f

    #@26d
    .line 2709
    move-object/from16 v0, p0

    #@26f
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@271
    .line 2711
    const-string/jumbo v6, "pairwise"

    #@274
    .line 2709
    move/from16 v0, v31

    #@276
    move-object/from16 v1, v17

    #@278
    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@27b
    move-result v5

    #@27c
    if-eqz v5, :cond_16

    #@27e
    .line 2719
    :cond_f
    move-object/from16 v0, p1

    #@280
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@282
    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@284
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@287
    move-result-object v15

    #@288
    .line 2720
    .local v15, "allowedGroupCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    #@28a
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@28c
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    #@28f
    move-result v5

    #@290
    if-eqz v5, :cond_10

    #@292
    .line 2721
    move-object/from16 v0, p0

    #@294
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@296
    .line 2723
    const-string/jumbo v6, "group"

    #@299
    .line 2721
    move/from16 v0, v31

    #@29b
    invoke-virtual {v5, v0, v6, v15}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@29e
    move-result v5

    #@29f
    if-eqz v5, :cond_17

    #@2a1
    .line 2732
    :cond_10
    move-object/from16 v0, p1

    #@2a3
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@2a5
    if-eqz v5, :cond_11

    #@2a7
    move-object/from16 v0, p1

    #@2a9
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@2ab
    const-string/jumbo v6, "*"

    #@2ae
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b1
    move-result v5

    #@2b2
    if-eqz v5, :cond_18

    #@2b4
    .line 2741
    :cond_11
    const/16 v24, 0x0

    #@2b6
    .line 2742
    .local v24, "hasSetKey":Z
    move-object/from16 v0, p1

    #@2b8
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@2ba
    if-eqz v5, :cond_1b

    #@2bc
    .line 2743
    const/16 v26, 0x0

    #@2be
    .local v26, "i":I
    :goto_2
    move-object/from16 v0, p1

    #@2c0
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@2c2
    array-length v5, v5

    #@2c3
    move/from16 v0, v26

    #@2c5
    if-ge v0, v5, :cond_1b

    #@2c7
    .line 2746
    move-object/from16 v0, p1

    #@2c9
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@2cb
    aget-object v5, v5, v26

    #@2cd
    if-eqz v5, :cond_12

    #@2cf
    move-object/from16 v0, p1

    #@2d1
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@2d3
    aget-object v5, v5, v26

    #@2d5
    const-string/jumbo v6, "*"

    #@2d8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2db
    move-result v5

    #@2dc
    if-eqz v5, :cond_19

    #@2de
    .line 2743
    :cond_12
    :goto_3
    add-int/lit8 v26, v26, 0x1

    #@2e0
    goto :goto_2

    #@2e1
    .line 2676
    .end local v14    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v15    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v17    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v18    # "allowedProtocolsString":Ljava/lang/String;
    .end local v24    # "hasSetKey":Z
    .end local v26    # "i":I
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    #@2e3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e6
    const-string/jumbo v6, "failed to set key_mgmt: "

    #@2e9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v5

    #@2ed
    move-object/from16 v0, v16

    #@2ef
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f2
    move-result-object v5

    #@2f3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f6
    move-result-object v5

    #@2f7
    move-object/from16 v0, p0

    #@2f9
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@2fc
    goto/16 :goto_1

    #@2fe
    .line 2688
    .restart local v18    # "allowedProtocolsString":Ljava/lang/String;
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    #@300
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@303
    const-string/jumbo v6, "failed to set proto: "

    #@306
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@309
    move-result-object v5

    #@30a
    move-object/from16 v0, v18

    #@30c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30f
    move-result-object v5

    #@310
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@313
    move-result-object v5

    #@314
    move-object/from16 v0, p0

    #@316
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@319
    goto/16 :goto_1

    #@31b
    .line 2700
    .restart local v14    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    #@31d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@320
    const-string/jumbo v6, "failed to set auth_alg: "

    #@323
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@326
    move-result-object v5

    #@327
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v5

    #@32b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32e
    move-result-object v5

    #@32f
    move-object/from16 v0, p0

    #@331
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@334
    goto/16 :goto_1

    #@336
    .line 2713
    .restart local v17    # "allowedPairwiseCiphersString":Ljava/lang/String;
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    #@338
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33b
    const-string/jumbo v6, "failed to set pairwise: "

    #@33e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@341
    move-result-object v5

    #@342
    move-object/from16 v0, v17

    #@344
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@347
    move-result-object v5

    #@348
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34b
    move-result-object v5

    #@34c
    move-object/from16 v0, p0

    #@34e
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@351
    goto/16 :goto_1

    #@353
    .line 2725
    .restart local v15    # "allowedGroupCiphersString":Ljava/lang/String;
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    #@355
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@358
    const-string/jumbo v6, "failed to set group: "

    #@35b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v5

    #@35f
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@362
    move-result-object v5

    #@363
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@366
    move-result-object v5

    #@367
    move-object/from16 v0, p0

    #@369
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@36c
    goto/16 :goto_1

    #@36e
    .line 2733
    :cond_18
    move-object/from16 v0, p0

    #@370
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@372
    .line 2735
    const-string/jumbo v6, "psk"

    #@375
    .line 2736
    move-object/from16 v0, p1

    #@377
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@379
    .line 2733
    move/from16 v0, v31

    #@37b
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@37e
    move-result v5

    #@37f
    if-nez v5, :cond_11

    #@381
    .line 2737
    const-string/jumbo v5, "failed to set psk"

    #@384
    move-object/from16 v0, p0

    #@386
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@389
    goto/16 :goto_1

    #@38b
    .line 2747
    .restart local v24    # "hasSetKey":Z
    .restart local v26    # "i":I
    :cond_19
    move-object/from16 v0, p0

    #@38d
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@38f
    .line 2749
    sget-object v6, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    #@391
    aget-object v6, v6, v26

    #@393
    .line 2750
    move-object/from16 v0, p1

    #@395
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@397
    aget-object v8, v8, v26

    #@399
    .line 2747
    move/from16 v0, v31

    #@39b
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@39e
    move-result v5

    #@39f
    if-nez v5, :cond_1a

    #@3a1
    .line 2751
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a6
    const-string/jumbo v6, "failed to set wep_key"

    #@3a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ac
    move-result-object v5

    #@3ad
    move/from16 v0, v26

    #@3af
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b2
    move-result-object v5

    #@3b3
    const-string/jumbo v6, ": "

    #@3b6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v5

    #@3ba
    move-object/from16 v0, p1

    #@3bc
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@3be
    aget-object v6, v6, v26

    #@3c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c3
    move-result-object v5

    #@3c4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c7
    move-result-object v5

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@3cd
    goto/16 :goto_1

    #@3cf
    .line 2754
    :cond_1a
    const/16 v24, 0x1

    #@3d1
    goto/16 :goto_3

    #@3d3
    .line 2759
    .end local v26    # "i":I
    :cond_1b
    if-eqz v24, :cond_1c

    #@3d5
    .line 2760
    move-object/from16 v0, p0

    #@3d7
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3d9
    .line 2762
    const-string/jumbo v6, "wep_tx_keyidx"

    #@3dc
    .line 2763
    move-object/from16 v0, p1

    #@3de
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@3e0
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3e3
    move-result-object v8

    #@3e4
    .line 2760
    move/from16 v0, v31

    #@3e6
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@3e9
    move-result v5

    #@3ea
    if-nez v5, :cond_1c

    #@3ec
    .line 2764
    new-instance v5, Ljava/lang/StringBuilder;

    #@3ee
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f1
    const-string/jumbo v6, "failed to set wep_tx_keyidx: "

    #@3f4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f7
    move-result-object v5

    #@3f8
    move-object/from16 v0, p1

    #@3fa
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@3fc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ff
    move-result-object v5

    #@400
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@403
    move-result-object v5

    #@404
    move-object/from16 v0, p0

    #@406
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@409
    goto/16 :goto_1

    #@40b
    .line 2769
    :cond_1c
    move-object/from16 v0, p0

    #@40d
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@40f
    .line 2771
    const-string/jumbo v6, "priority"

    #@412
    .line 2772
    move-object/from16 v0, p1

    #@414
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@416
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@419
    move-result-object v8

    #@41a
    .line 2769
    move/from16 v0, v31

    #@41c
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@41f
    move-result v5

    #@420
    if-nez v5, :cond_1d

    #@422
    .line 2773
    new-instance v5, Ljava/lang/StringBuilder;

    #@424
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@427
    move-object/from16 v0, p1

    #@429
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@42b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42e
    move-result-object v5

    #@42f
    const-string/jumbo v6, ": failed to set priority: "

    #@432
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@435
    move-result-object v5

    #@436
    .line 2774
    move-object/from16 v0, p1

    #@438
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@43a
    .line 2773
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43d
    move-result-object v5

    #@43e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@441
    move-result-object v5

    #@442
    move-object/from16 v0, p0

    #@444
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@447
    goto/16 :goto_1

    #@449
    .line 2778
    :cond_1d
    move-object/from16 v0, p1

    #@44b
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@44d
    if-eqz v5, :cond_1e

    #@44f
    move-object/from16 v0, p0

    #@451
    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@453
    .line 2780
    const-string/jumbo v8, "scan_ssid"

    #@456
    .line 2781
    move-object/from16 v0, p1

    #@458
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@45a
    if-eqz v5, :cond_21

    #@45c
    const/4 v5, 0x1

    #@45d
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@460
    move-result-object v5

    #@461
    .line 2778
    move/from16 v0, v31

    #@463
    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@466
    move-result v5

    #@467
    if-eqz v5, :cond_22

    #@469
    .line 2787
    :cond_1e
    move-object/from16 v0, p1

    #@46b
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@46d
    if-eqz v5, :cond_1f

    #@46f
    move-object/from16 v0, p0

    #@471
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@473
    .line 2789
    const-string/jumbo v6, "ieee80211w"

    #@476
    .line 2790
    const-string/jumbo v8, "2"

    #@479
    .line 2787
    move/from16 v0, v31

    #@47b
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@47e
    move-result v5

    #@47f
    if-eqz v5, :cond_23

    #@481
    .line 2796
    :cond_1f
    move-object/from16 v0, p1

    #@483
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@485
    if-eqz v5, :cond_20

    #@487
    move-object/from16 v0, p0

    #@489
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@48b
    .line 2798
    const-string/jumbo v6, "update_identifier"

    #@48e
    .line 2799
    move-object/from16 v0, p1

    #@490
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@492
    .line 2796
    move/from16 v0, v31

    #@494
    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@497
    move-result v5

    #@498
    if-eqz v5, :cond_24

    #@49a
    .line 2805
    :cond_20
    move-object/from16 v0, p1

    #@49c
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@49e
    if-eqz v5, :cond_29

    #@4a0
    .line 2806
    move-object/from16 v0, p1

    #@4a2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@4a4
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@4a7
    move-result v5

    #@4a8
    const/4 v6, -0x1

    #@4a9
    if-eq v5, v6, :cond_29

    #@4ab
    .line 2808
    move-object/from16 v0, p1

    #@4ad
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@4af
    move-object/from16 v22, v0

    #@4b1
    .line 2810
    .local v22, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConfigStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    #@4b4
    move-result v5

    #@4b5
    if-eqz v5, :cond_26

    #@4b7
    .line 2817
    move-object/from16 v0, p0

    #@4b9
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@4bb
    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    #@4be
    move-result-object v5

    #@4bf
    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    #@4c1
    if-eq v5, v6, :cond_25

    #@4c3
    .line 2818
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c8
    move-object/from16 v0, p1

    #@4ca
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@4cc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cf
    move-result-object v5

    #@4d0
    const-string/jumbo v6, ": key store is locked"

    #@4d3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d6
    move-result-object v5

    #@4d7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4da
    move-result-object v5

    #@4db
    move-object/from16 v0, p0

    #@4dd
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@4e0
    goto/16 :goto_1

    #@4e2
    .line 2781
    .end local v22    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_21
    const/4 v5, 0x0

    #@4e3
    goto/16 :goto_4

    #@4e5
    .line 2782
    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4ea
    move-object/from16 v0, p1

    #@4ec
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@4ee
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f1
    move-result-object v5

    #@4f2
    const-string/jumbo v6, ": failed to set hiddenSSID: "

    #@4f5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f8
    move-result-object v5

    #@4f9
    .line 2783
    move-object/from16 v0, p1

    #@4fb
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@4fd
    .line 2782
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@500
    move-result-object v5

    #@501
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@504
    move-result-object v5

    #@505
    move-object/from16 v0, p0

    #@507
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@50a
    goto/16 :goto_1

    #@50c
    .line 2791
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    #@50e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@511
    move-object/from16 v0, p1

    #@513
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@515
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@518
    move-result-object v5

    #@519
    const-string/jumbo v6, ": failed to set requirePMF: "

    #@51c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51f
    move-result-object v5

    #@520
    .line 2792
    move-object/from16 v0, p1

    #@522
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@524
    .line 2791
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@527
    move-result-object v5

    #@528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52b
    move-result-object v5

    #@52c
    move-object/from16 v0, p0

    #@52e
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@531
    goto/16 :goto_1

    #@533
    .line 2800
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    #@535
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@538
    move-object/from16 v0, p1

    #@53a
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@53c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53f
    move-result-object v5

    #@540
    const-string/jumbo v6, ": failed to set updateIdentifier: "

    #@543
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@546
    move-result-object v5

    #@547
    .line 2801
    move-object/from16 v0, p1

    #@549
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@54b
    .line 2800
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54e
    move-result-object v5

    #@54f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@552
    move-result-object v5

    #@553
    move-object/from16 v0, p0

    #@555
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@558
    goto/16 :goto_1

    #@55a
    .line 2827
    .restart local v22    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_25
    :try_start_0
    move-object/from16 v0, p0

    #@55c
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@55e
    move/from16 v0, v31

    #@560
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@563
    move-result-object v20

    #@564
    .line 2828
    .local v20, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    #@566
    move-object/from16 v1, v20

    #@568
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@56b
    move-result-object v30

    #@56c
    .line 2830
    .local v30, "keyId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@56e
    move-object/from16 v1, v22

    #@570
    move-object/from16 v2, v30

    #@572
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    #@575
    move-result v5

    #@576
    if-nez v5, :cond_26

    #@578
    .line 2831
    new-instance v5, Ljava/lang/StringBuilder;

    #@57a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@57d
    move-object/from16 v0, p1

    #@57f
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@581
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@584
    move-result-object v5

    #@585
    const-string/jumbo v6, ": failed to install keys"

    #@588
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58b
    move-result-object v5

    #@58c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58f
    move-result-object v5

    #@590
    move-object/from16 v0, p0

    #@592
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@595
    goto/16 :goto_1

    #@597
    .line 2834
    .end local v20    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v21

    #@598
    .line 2835
    .local v21, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@59a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59d
    move-object/from16 v0, p1

    #@59f
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@5a1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a4
    move-result-object v5

    #@5a5
    const-string/jumbo v6, " invalid config for key installation"

    #@5a8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ab
    move-result-object v5

    #@5ac
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5af
    move-result-object v5

    #@5b0
    move-object/from16 v0, p0

    #@5b2
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@5b5
    goto/16 :goto_1

    #@5b7
    .line 2840
    .end local v21    # "e":Ljava/lang/IllegalStateException;
    :cond_26
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    #@5ba
    move-result-object v23

    #@5bb
    .line 2841
    .local v23, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5be
    move-result-object v5

    #@5bf
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5c2
    move-result-object v29

    #@5c3
    .local v29, "key$iterator":Ljava/util/Iterator;
    :cond_27
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    #@5c6
    move-result v5

    #@5c7
    if-eqz v5, :cond_29

    #@5c9
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5cc
    move-result-object v28

    #@5cd
    check-cast v28, Ljava/lang/String;

    #@5cf
    .line 2842
    .local v28, "key":Ljava/lang/String;
    move-object/from16 v0, v23

    #@5d1
    move-object/from16 v1, v28

    #@5d3
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5d6
    move-result-object v38

    #@5d7
    check-cast v38, Ljava/lang/String;

    #@5d9
    .line 2843
    .local v38, "value":Ljava/lang/String;
    const-string/jumbo v5, "password"

    #@5dc
    move-object/from16 v0, v28

    #@5de
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e1
    move-result v5

    #@5e2
    if-eqz v5, :cond_28

    #@5e4
    if-eqz v38, :cond_28

    #@5e6
    const-string/jumbo v5, "*"

    #@5e9
    move-object/from16 v0, v38

    #@5eb
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5ee
    move-result v5

    #@5ef
    if-nez v5, :cond_27

    #@5f1
    .line 2847
    :cond_28
    const-string/jumbo v5, "realm"

    #@5f4
    move-object/from16 v0, v28

    #@5f6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f9
    move-result v5

    #@5fa
    if-nez v5, :cond_27

    #@5fc
    .line 2848
    const-string/jumbo v5, "plmn"

    #@5ff
    move-object/from16 v0, v28

    #@601
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@604
    move-result v5

    #@605
    .line 2847
    if-nez v5, :cond_27

    #@607
    .line 2852
    move-object/from16 v0, p0

    #@609
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@60b
    move/from16 v0, v31

    #@60d
    move-object/from16 v1, v28

    #@60f
    move-object/from16 v2, v38

    #@611
    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@614
    move-result v5

    #@615
    if-nez v5, :cond_27

    #@617
    .line 2856
    move-object/from16 v0, p0

    #@619
    move-object/from16 v1, v22

    #@61b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@61e
    .line 2857
    new-instance v5, Ljava/lang/StringBuilder;

    #@620
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@623
    move-object/from16 v0, p1

    #@625
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@627
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62a
    move-result-object v5

    #@62b
    const-string/jumbo v6, ": failed to set "

    #@62e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@631
    move-result-object v5

    #@632
    move-object/from16 v0, v28

    #@634
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@637
    move-result-object v5

    #@638
    .line 2858
    const-string/jumbo v6, ": "

    #@63b
    .line 2857
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63e
    move-result-object v5

    #@63f
    move-object/from16 v0, v38

    #@641
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@644
    move-result-object v5

    #@645
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@648
    move-result-object v5

    #@649
    move-object/from16 v0, p0

    #@64b
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@64e
    goto/16 :goto_1

    #@650
    .line 2863
    .end local v22    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v23    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "key":Ljava/lang/String;
    .end local v29    # "key$iterator":Ljava/util/Iterator;
    .end local v38    # "value":Ljava/lang/String;
    :cond_29
    const/16 v37, 0x0

    #@652
    goto/16 :goto_1

    #@654
    .line 2881
    .end local v14    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v15    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v16    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v17    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v18    # "allowedProtocolsString":Ljava/lang/String;
    .end local v24    # "hasSetKey":Z
    :cond_2a
    move-object/from16 v0, p0

    #@656
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@658
    move/from16 v0, v31

    #@65a
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@65d
    move-result-object v20

    #@65e
    .line 2882
    .restart local v20    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v20, :cond_2c

    #@660
    .line 2883
    new-instance v20, Landroid/net/wifi/WifiConfiguration;

    #@662
    .end local v20    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@665
    .line 2884
    .restart local v20    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@667
    move-object/from16 v0, v20

    #@669
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    #@66c
    .line 2885
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@66e
    move-object/from16 v0, v20

    #@670
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    #@673
    .line 2886
    move/from16 v0, v31

    #@675
    move-object/from16 v1, v20

    #@677
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@679
    .line 2887
    if-eqz p1, :cond_2b

    #@67b
    .line 2889
    move-object/from16 v0, p1

    #@67d
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@67f
    move-object/from16 v0, v20

    #@681
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@683
    .line 2890
    move-object/from16 v0, p1

    #@685
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@687
    move-object/from16 v0, v20

    #@689
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@68b
    .line 2891
    move-object/from16 v0, p1

    #@68d
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@68f
    move-object/from16 v0, v20

    #@691
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@693
    .line 2893
    move-object/from16 v0, p1

    #@695
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@697
    .line 2892
    move-object/from16 v0, v20

    #@699
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@69b
    .line 2894
    move-object/from16 v0, p1

    #@69d
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@69f
    move-object/from16 v0, v20

    #@6a1
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@6a3
    .line 2895
    move-object/from16 v0, p1

    #@6a5
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@6a7
    move-object/from16 v0, v20

    #@6a9
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@6ab
    .line 2896
    move-object/from16 v0, p1

    #@6ad
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@6af
    move-object/from16 v0, v20

    #@6b1
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@6b3
    .line 2897
    move-object/from16 v0, p1

    #@6b5
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@6b7
    move-object/from16 v0, v20

    #@6b9
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@6bb
    .line 2898
    move-object/from16 v0, p1

    #@6bd
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@6bf
    move-object/from16 v0, v20

    #@6c1
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@6c3
    .line 2899
    move-object/from16 v0, p1

    #@6c5
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@6c7
    move-object/from16 v0, v20

    #@6c9
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@6cb
    .line 2900
    move-object/from16 v0, p1

    #@6cd
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@6cf
    move-object/from16 v0, v20

    #@6d1
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@6d3
    .line 2901
    move-object/from16 v0, p1

    #@6d5
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@6d7
    move-object/from16 v0, v20

    #@6d9
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@6db
    .line 2902
    move-object/from16 v0, p1

    #@6dd
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@6df
    move-object/from16 v0, v20

    #@6e1
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@6e3
    .line 2903
    move-object/from16 v0, p1

    #@6e5
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@6e7
    move-object/from16 v0, v20

    #@6e9
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@6eb
    .line 2904
    move-object/from16 v0, p1

    #@6ed
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@6ef
    move-object/from16 v0, v20

    #@6f1
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@6f3
    .line 2905
    move-object/from16 v0, p1

    #@6f5
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@6f7
    move-object/from16 v0, v20

    #@6f9
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@6fb
    .line 2906
    move-object/from16 v0, p1

    #@6fd
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@6ff
    move-object/from16 v0, v20

    #@701
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@703
    .line 2909
    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@705
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@708
    const-string/jumbo v6, "created new config netId="

    #@70b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70e
    move-result-object v5

    #@70f
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@712
    move-result-object v6

    #@713
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@716
    move-result-object v5

    #@717
    .line 2910
    const-string/jumbo v6, " uid="

    #@71a
    .line 2909
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71d
    move-result-object v5

    #@71e
    .line 2910
    move-object/from16 v0, v20

    #@720
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@722
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@725
    move-result-object v6

    #@726
    .line 2909
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@729
    move-result-object v5

    #@72a
    .line 2911
    const-string/jumbo v6, " name="

    #@72d
    .line 2909
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@730
    move-result-object v5

    #@731
    .line 2911
    move-object/from16 v0, v20

    #@733
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@735
    .line 2909
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@738
    move-result-object v5

    #@739
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73c
    move-result-object v5

    #@73d
    move-object/from16 v0, p0

    #@73f
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@742
    .line 2916
    :cond_2c
    const/16 v25, 0x0

    #@744
    .line 2918
    .local v25, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@747
    move-result v5

    #@748
    if-eqz v5, :cond_39

    #@74a
    .line 2921
    :try_start_1
    new-instance v13, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@74c
    move-object/from16 v0, p1

    #@74e
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@750
    move-object/from16 v0, p0

    #@752
    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@754
    if-eqz v32, :cond_2d

    #@756
    const/4 v5, 0x0

    #@757
    :goto_5
    invoke-direct {v13, v6, v8, v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V

    #@75a
    .line 2922
    .local v13, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v7, Ljava/util/HashSet;

    #@75c
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@75f
    .line 2923
    .local v7, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    #@761
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@763
    const/4 v5, 0x0

    #@764
    array-length v8, v6

    #@765
    :goto_6
    if-ge v5, v8, :cond_2e

    #@767
    aget-wide v10, v6, v5

    #@769
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@76c
    move-result-object v34

    #@76d
    .line 2924
    .local v34, "roamingConsortiumId":Ljava/lang/Long;
    move-object/from16 v0, v34

    #@76f
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@772
    .line 2923
    add-int/lit8 v5, v5, 0x1

    #@774
    goto :goto_6

    #@775
    .line 2921
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v34    # "roamingConsortiumId":Ljava/lang/Long;
    :cond_2d
    const/4 v5, 0x1

    #@776
    goto :goto_5

    #@777
    .line 2927
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :cond_2e
    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@779
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@77c
    move-result-object v5

    #@77d
    move-object/from16 v0, p1

    #@77f
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@781
    .line 2928
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@784
    move-result-object v8

    #@785
    .line 2929
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@788
    move-result-object v9

    #@789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@78c
    move-result-object v10

    #@78d
    .line 2930
    move-object/from16 v0, p1

    #@78f
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@791
    const/4 v12, 0x0

    #@792
    .line 2927
    invoke-direct/range {v4 .. v13}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@795
    .line 2932
    .local v4, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@797
    .end local v25    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@79a
    const-string/jumbo v6, "created a homeSP object for "

    #@79d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a0
    move-result-object v5

    #@7a1
    move-object/from16 v0, p1

    #@7a3
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@7a5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a8
    move-result-object v5

    #@7a9
    const-string/jumbo v6, ":"

    #@7ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7af
    move-result-object v5

    #@7b0
    move-object/from16 v0, p1

    #@7b2
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@7b4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b7
    move-result-object v5

    #@7b8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7bb
    move-result-object v5

    #@7bc
    move-object/from16 v0, p0

    #@7be
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@7c1
    .line 2935
    move-object/from16 v0, v20

    #@7c3
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@7c5
    move-object/from16 v0, p1

    #@7c7
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@7c9
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    #@7cc
    move-result-object v6

    #@7cd
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    #@7d0
    .line 2936
    move-object/from16 v0, v20

    #@7d2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@7d4
    move-object/from16 v0, p1

    #@7d6
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@7d8
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    #@7db
    move-result-object v6

    #@7dc
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@7df
    .line 2944
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :goto_7
    const/4 v5, -0x1

    #@7e0
    move/from16 v0, p2

    #@7e2
    if-eq v0, v5, :cond_2f

    #@7e4
    .line 2945
    if-eqz v32, :cond_37

    #@7e6
    .line 2946
    move/from16 v0, p2

    #@7e8
    move-object/from16 v1, v20

    #@7ea
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@7ec
    .line 2953
    :cond_2f
    :goto_8
    new-instance v36, Ljava/lang/StringBuilder;

    #@7ee
    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    #@7f1
    .line 2954
    .local v36, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "time="

    #@7f4
    move-object/from16 v0, v36

    #@7f6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f9
    .line 2955
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@7fc
    move-result-object v19

    #@7fd
    .line 2956
    .local v19, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@800
    move-result-wide v8

    #@801
    move-object/from16 v0, v19

    #@803
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@806
    .line 2957
    const-string/jumbo v5, "%tm-%td %tH:%tM:%tS.%tL"

    #@809
    const/4 v6, 0x6

    #@80a
    new-array v6, v6, [Ljava/lang/Object;

    #@80c
    const/4 v8, 0x0

    #@80d
    aput-object v19, v6, v8

    #@80f
    const/4 v8, 0x1

    #@810
    aput-object v19, v6, v8

    #@812
    const/4 v8, 0x2

    #@813
    aput-object v19, v6, v8

    #@815
    const/4 v8, 0x3

    #@816
    aput-object v19, v6, v8

    #@818
    const/4 v8, 0x4

    #@819
    aput-object v19, v6, v8

    #@81b
    const/4 v8, 0x5

    #@81c
    aput-object v19, v6, v8

    #@81e
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@821
    move-result-object v5

    #@822
    move-object/from16 v0, v36

    #@824
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@827
    .line 2959
    if-eqz v32, :cond_38

    #@829
    .line 2960
    const/4 v5, 0x1

    #@82a
    move-object/from16 v0, v20

    #@82c
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@82e
    .line 2961
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@831
    move-result-object v5

    #@832
    move-object/from16 v0, v20

    #@834
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@836
    .line 2966
    :goto_9
    move-object/from16 v0, v20

    #@838
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@83a
    const/16 v6, 0xc8

    #@83c
    if-ne v5, v6, :cond_30

    #@83e
    .line 2969
    const/4 v5, 0x0

    #@83f
    move-object/from16 v0, v20

    #@841
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@844
    .line 2970
    const/4 v5, 0x0

    #@845
    move-object/from16 v0, v20

    #@847
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@849
    .line 2971
    const/4 v5, 0x0

    #@84a
    move-object/from16 v0, v20

    #@84c
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@84e
    .line 2973
    new-instance v5, Ljava/lang/StringBuilder;

    #@850
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@853
    const-string/jumbo v6, "remove deleted status netId="

    #@856
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@859
    move-result-object v5

    #@85a
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@85d
    move-result-object v6

    #@85e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@861
    move-result-object v5

    #@862
    .line 2974
    const-string/jumbo v6, " "

    #@865
    .line 2973
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@868
    move-result-object v5

    #@869
    .line 2974
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@86c
    move-result-object v6

    #@86d
    .line 2973
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@870
    move-result-object v5

    #@871
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@874
    move-result-object v5

    #@875
    move-object/from16 v0, p0

    #@877
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@87a
    .line 2978
    :cond_30
    move-object/from16 v0, v20

    #@87c
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@87e
    const/4 v6, 0x2

    #@87f
    if-ne v5, v6, :cond_31

    #@881
    .line 2980
    const/4 v5, 0x0

    #@882
    move-object/from16 v0, v20

    #@884
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@887
    .line 2983
    :cond_31
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@88a
    move-result-object v5

    #@88b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    #@88e
    move-result-object v6

    #@88f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@892
    move-result v5

    #@893
    if-eqz v5, :cond_32

    #@895
    .line 2984
    move-object/from16 v0, v20

    #@897
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@899
    .line 2983
    if-eqz v5, :cond_32

    #@89b
    .line 2986
    const/4 v5, 0x0

    #@89c
    move-object/from16 v0, v20

    #@89e
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@8a0
    .line 2987
    new-instance v5, Ljava/lang/StringBuilder;

    #@8a2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8a5
    const-string/jumbo v6, "remove ephemeral status netId="

    #@8a8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ab
    move-result-object v5

    #@8ac
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8af
    move-result-object v6

    #@8b0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b3
    move-result-object v5

    #@8b4
    .line 2988
    const-string/jumbo v6, " "

    #@8b7
    .line 2987
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ba
    move-result-object v5

    #@8bb
    .line 2988
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@8be
    move-result-object v6

    #@8bf
    .line 2987
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c2
    move-result-object v5

    #@8c3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c6
    move-result-object v5

    #@8c7
    move-object/from16 v0, p0

    #@8c9
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@8cc
    .line 2991
    :cond_32
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@8ce
    if-eqz v5, :cond_33

    #@8d0
    new-instance v5, Ljava/lang/StringBuilder;

    #@8d2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8d5
    const-string/jumbo v6, "will read network variables netId="

    #@8d8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8db
    move-result-object v5

    #@8dc
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8df
    move-result-object v6

    #@8e0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e3
    move-result-object v5

    #@8e4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e7
    move-result-object v5

    #@8e8
    move-object/from16 v0, p0

    #@8ea
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@8ed
    .line 2993
    :cond_33
    move-object/from16 v0, p0

    #@8ef
    move-object/from16 v1, v20

    #@8f1
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    #@8f4
    .line 2996
    move-object/from16 v0, p1

    #@8f6
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@8f8
    if-eqz v5, :cond_34

    #@8fa
    .line 2997
    move-object/from16 v0, p1

    #@8fc
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@8fe
    move-object/from16 v0, v20

    #@900
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@902
    .line 2999
    :cond_34
    move-object/from16 v0, p1

    #@904
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@906
    const/4 v6, -0x1

    #@907
    if-eq v5, v6, :cond_35

    #@909
    .line 3000
    move-object/from16 v0, p1

    #@90b
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@90d
    move-object/from16 v0, v20

    #@90f
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@911
    .line 3003
    :cond_35
    move-object/from16 v0, p0

    #@913
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@915
    move/from16 v0, v31

    #@917
    move-object/from16 v1, v20

    #@919
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@91c
    .line 3005
    move-object/from16 v0, p0

    #@91e
    move-object/from16 v1, v20

    #@920
    move-object/from16 v2, p1

    #@922
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;

    #@925
    move-result-object v33

    #@926
    .line 3006
    .local v33, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    move-object/from16 v0, v33

    #@928
    move/from16 v1, v32

    #@92a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    #@92d
    .line 3007
    move-object/from16 v0, v33

    #@92f
    move/from16 v1, v31

    #@931
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    #@934
    .line 3009
    if-eqz v4, :cond_36

    #@936
    .line 3010
    const/4 v5, 0x0

    #@937
    move-object/from16 v0, p0

    #@939
    invoke-virtual {v0, v5, v4}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@93c
    .line 3012
    :cond_36
    const/4 v5, 0x0

    #@93d
    move-object/from16 v0, p0

    #@93f
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@942
    .line 3014
    return-object v33

    #@943
    .line 2938
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v19    # "c":Ljava/util/Calendar;
    .end local v33    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v36    # "sb":Ljava/lang/StringBuilder;
    .restart local v25    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :catch_1
    move-exception v27

    #@944
    .local v27, "ioe":Ljava/io/IOException;
    move-object/from16 v4, v25

    #@946
    .line 2939
    .end local v25    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :goto_a
    const-string/jumbo v5, "WifiConfigStore"

    #@949
    new-instance v6, Ljava/lang/StringBuilder;

    #@94b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@94e
    const-string/jumbo v8, "Failed to create Passpoint config: "

    #@951
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@954
    move-result-object v6

    #@955
    move-object/from16 v0, v27

    #@957
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95a
    move-result-object v6

    #@95b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95e
    move-result-object v6

    #@95f
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@962
    .line 2940
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    #@964
    const/4 v6, -0x1

    #@965
    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@968
    return-object v5

    #@969
    .line 2948
    .end local v27    # "ioe":Ljava/io/IOException;
    :cond_37
    move/from16 v0, p2

    #@96b
    move-object/from16 v1, v20

    #@96d
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@96f
    goto/16 :goto_8

    #@971
    .line 2963
    .restart local v19    # "c":Ljava/util/Calendar;
    .restart local v36    # "sb":Ljava/lang/StringBuilder;
    :cond_38
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@974
    move-result-object v5

    #@975
    move-object/from16 v0, v20

    #@977
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@979
    goto/16 :goto_9

    #@97b
    .line 2938
    .end local v19    # "c":Ljava/util/Calendar;
    .end local v36    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :catch_2
    move-exception v27

    #@97c
    .restart local v27    # "ioe":Ljava/io/IOException;
    goto :goto_a

    #@97d
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v27    # "ioe":Ljava/io/IOException;
    .restart local v25    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_39
    move-object/from16 v4, v25

    #@97f
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_7
.end method

.method private buildPnoList()V
    .locals 8

    #@0
    .prologue
    .line 1304
    new-instance v5, Ljava/util/ArrayList;

    #@2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    #@7
    .line 1307
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    #@c
    move-result-object v5

    #@d
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    .line 1308
    .local v3, "sortedWifiConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    const-string/jumbo v5, "WifiConfigStore"

    #@13
    new-instance v6, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v7, "buildPnoList sortedWifiConfigurations size "

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v7

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1309
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_0

    #@34
    .line 1311
    new-instance v5, Lcom/android/server/wifi/WifiConfigStore$1;

    #@36
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiConfigStore$1;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    #@39
    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@3c
    .line 1318
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v1

    #@40
    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_1

    #@46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@4c
    .line 1323
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4e
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@51
    move-result v4

    #@52
    .line 1324
    .local v4, "threshold":I
    const-string/jumbo v5, "WifiConfigStore"

    #@55
    new-instance v6, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v7, "found sortedWifiConfigurations : "

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 1325
    new-instance v2, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    #@72
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@74
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@77
    invoke-direct {v2, v5, v0, v4}, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/net/wifi/WifiConfiguration;I)V

    #@7a
    .line 1326
    .local v2, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7f
    goto :goto_0

    #@80
    .line 1303
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .end local v4    # "threshold":I
    :cond_1
    return-void
.end method

.method private cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "passpointMatch"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@0
    .prologue
    .line 3356
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@3
    move-result-object v6

    #@4
    .line 3358
    .local v6, "scanResult":Landroid/net/wifi/ScanResult;
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@6
    const/16 v10, 0xc8

    #@8
    if-lt v9, v10, :cond_1

    #@a
    .line 3359
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    #@c
    if-eqz v9, :cond_0

    #@e
    .line 3360
    new-instance v9, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v10, "updateSavedNetworkHistory(): found a deleted, skip it...  "

    #@16
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v9

    #@1a
    .line 3361
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1d
    move-result-object v10

    #@1e
    .line 3360
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v9

    #@26
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@29
    .line 3367
    :cond_0
    return-void

    #@2a
    .line 3370
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@2d
    move-result-object v5

    #@2e
    .line 3371
    .local v5, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v5, :cond_2

    #@30
    .line 3372
    const-string/jumbo v9, "WifiConfigStore"

    #@33
    new-instance v10, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v11, "Could not allocate scan cache for "

    #@3b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v10

    #@3f
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@41
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v10

    #@45
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v10

    #@49
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 3373
    return-void

    #@4d
    .line 3377
    :cond_2
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@4f
    invoke-virtual {v5, v9}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    #@52
    move-result-object v4

    #@53
    .line 3378
    .local v4, "result":Landroid/net/wifi/ScanResult;
    if-eqz v4, :cond_3

    #@55
    .line 3380
    iget v9, v4, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@57
    iput v9, v6, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@59
    .line 3381
    iget-wide v10, v4, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    #@5b
    iput-wide v10, v6, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    #@5d
    .line 3382
    iget v9, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@5f
    iput v9, v6, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@61
    .line 3383
    iget v9, v4, Landroid/net/wifi/ScanResult;->numConnection:I

    #@63
    iput v9, v6, Landroid/net/wifi/ScanResult;->numConnection:I

    #@65
    .line 3384
    iget v9, v4, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@67
    iput v9, v6, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@69
    .line 3387
    :cond_3
    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@6b
    if-eqz v9, :cond_4

    #@6d
    .line 3390
    const/4 v9, 0x1

    #@6e
    iput-boolean v9, v6, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@70
    .line 3393
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@73
    move-result v9

    #@74
    const/16 v10, 0xc0

    #@76
    if-le v9, v10, :cond_7

    #@78
    .line 3394
    const-wide/16 v2, 0x0

    #@7a
    .line 3395
    .local v2, "now_dbg":J
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    #@7c
    if-eqz v9, :cond_6

    #@7e
    .line 3396
    new-instance v9, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v10, " Will trim config "

    #@86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v9

    #@8a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@8d
    move-result-object v10

    #@8e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v9

    #@92
    .line 3397
    const-string/jumbo v10, " size "

    #@95
    .line 3396
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    .line 3397
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@9c
    move-result v10

    #@9d
    .line 3396
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v9

    #@a1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@a8
    .line 3399
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@ab
    move-result-object v9

    #@ac
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@af
    move-result-object v8

    #@b0
    .local v8, "sd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@b3
    move-result v9

    #@b4
    if-eqz v9, :cond_5

    #@b6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b9
    move-result-object v7

    #@ba
    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    #@bc
    .line 3400
    .local v7, "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v10, "     "

    #@c4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v9

    #@c8
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@cb
    move-result-object v10

    #@cc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v9

    #@d0
    const-string/jumbo v10, " "

    #@d3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v9

    #@d7
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@da
    move-result-wide v10

    #@db
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@de
    move-result-object v9

    #@df
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v9

    #@e3
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@e6
    goto :goto_0

    #@e7
    .line 3402
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@ea
    move-result-wide v2

    #@eb
    .line 3407
    .end local v8    # "sd$iterator":Ljava/util/Iterator;
    :cond_6
    const/16 v9, 0x80

    #@ed
    invoke-virtual {v5, v9}, Lcom/android/server/wifi/ScanDetailCache;->trim(I)V

    #@f0
    .line 3408
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    #@f2
    if-eqz v9, :cond_7

    #@f4
    .line 3409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@f7
    move-result-wide v10

    #@f8
    sub-long v0, v10, v2

    #@fa
    .line 3410
    .local v0, "diff":J
    new-instance v9, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v10, " Finished trimming config, time(ns) "

    #@102
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v9

    #@106
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@109
    move-result-object v9

    #@10a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v9

    #@10e
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@111
    .line 3411
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@114
    move-result-object v9

    #@115
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@118
    move-result-object v8

    #@119
    .restart local v8    # "sd$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@11c
    move-result v9

    #@11d
    if-eqz v9, :cond_7

    #@11f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@122
    move-result-object v7

    #@123
    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    #@125
    .line 3412
    .restart local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v10, "     "

    #@12d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v9

    #@131
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@134
    move-result-object v10

    #@135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v9

    #@139
    const-string/jumbo v10, " "

    #@13c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v9

    #@140
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@143
    move-result-wide v10

    #@144
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@147
    move-result-object v9

    #@148
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v9

    #@14c
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@14f
    goto :goto_1

    #@150
    .line 3418
    .end local v0    # "diff":J
    .end local v2    # "now_dbg":J
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    .end local v8    # "sd$iterator":Ljava/util/Iterator;
    :cond_7
    if-eqz p3, :cond_8

    #@152
    .line 3419
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@155
    move-result-object v9

    #@156
    invoke-virtual {v5, p2, p3, v9}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@159
    .line 3424
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@15c
    .line 3354
    return-void

    #@15d
    .line 3421
    :cond_8
    invoke-virtual {v5, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    #@160
    goto :goto_2
.end method

.method private cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 7
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3338
    .local p2, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_3

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/util/Map$Entry;

    #@14
    .line 3339
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@1a
    .line 3340
    .local v3, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@1c
    if-eq v3, v4, :cond_1

    #@1e
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@20
    if-ne v3, v4, :cond_0

    #@22
    .line 3341
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@28
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    #@2b
    move-result-object v0

    #@2c
    .line 3342
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    #@2e
    .line 3343
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@34
    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    #@37
    goto :goto_0

    #@38
    .line 3345
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Failed to find config for \'"

    #@48
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 3346
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4f
    move-result-object v4

    #@50
    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@52
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    .line 3345
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    .line 3346
    const-string/jumbo v6, "\'"

    #@5d
    .line 3345
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    goto :goto_0

    #@69
    .line 3336
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v3    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_3
    return-void
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 3810
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3811
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public static encodeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2596
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3596
    const-string/jumbo v0, "eap"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 3599
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 3596
    :cond_1
    const-string/jumbo v0, "engine"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 3601
    const/4 v0, 0x1

    #@15
    return v0
.end method

.method private getAllConfiguredNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 764
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 765
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 766
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    #@1d
    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@20
    .line 767
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 769
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v2
.end method

.method private static getChecksum(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1414
    new-instance v0, Ljava/util/zip/CRC32;

    #@2
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@5
    .line 1415
    .local v0, "csum":Ljava/util/zip/Checksum;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object v2

    #@d
    array-length v2, v2

    #@e
    const/4 v3, 0x0

    #@f
    invoke-interface {v0, v1, v3, v2}, Ljava/util/zip/Checksum;->update([BII)V

    #@12
    .line 1416
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    #@15
    move-result-wide v2

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method private getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 736
    .local p1, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 737
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 738
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    #@1d
    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@20
    .line 741
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@22
    const/16 v5, 0xc8

    #@24
    if-eq v4, v5, :cond_0

    #@26
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@28
    if-nez v4, :cond_0

    #@2a
    .line 749
    if-eqz p1, :cond_1

    #@2c
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2e
    if-eqz v4, :cond_1

    #@30
    .line 750
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@32
    const/4 v5, 0x1

    #@33
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    #@36
    move-result v4

    #@37
    .line 749
    if-eqz v4, :cond_1

    #@39
    .line 751
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3b
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3e
    move-result v4

    #@3f
    .line 749
    if-eqz v4, :cond_1

    #@41
    .line 752
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@43
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Ljava/lang/String;

    #@49
    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@4b
    .line 754
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4e
    goto :goto_0

    #@4f
    .line 756
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v2
.end method

.method private getCredentialsBySsidMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 813
    const-string/jumbo v0, "psk"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3026
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@8
    move-result-object v0

    #@9
    .line 3027
    .local v0, "storedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 3028
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@13
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@18
    move-result-object v1

    #@19
    .line 3027
    :cond_0
    return-object v1
.end method

.method static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 3914
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method static isHardwareBackedKey(Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    .line 3910
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3872
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3873
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9
    .line 3871
    :cond_0
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 3883
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3884
    return-void

    #@5
    .line 3888
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    monitor-enter v2

    #@8
    .line 3889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@a
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2

    #@f
    .line 3892
    if-eqz v0, :cond_1

    #@11
    .line 3893
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, " "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 3894
    const-string/jumbo v3, " status="

    #@39
    .line 3893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 3894
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@3f
    .line 3893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 3895
    const-string/jumbo v3, " key="

    #@46
    .line 3893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 3895
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 3893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@59
    .line 3882
    :goto_0
    return-void

    #@5a
    .line 3888
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    #@5b
    monitor-exit v2

    #@5c
    throw v1

    #@5d
    .line 3897
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    const-string/jumbo v3, " "

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@7a
    goto :goto_0
.end method

.method private localLog(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 3878
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@3
    .line 3879
    if-eqz p2, :cond_0

    #@5
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@8
    .line 3877
    :cond_0
    return-void
.end method

.method private logContents(Ljava/lang/String;)V
    .locals 8
    .param p1, "file"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 1887
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v6, "--- Begin "

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    const-string/jumbo v6, " ---"

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    #@1f
    .line 1888
    const/4 v3, 0x0

    #@20
    .line 1890
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    #@22
    new-instance v5, Ljava/io/FileReader;

    #@24
    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@27
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1891
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    #@30
    .line 1892
    const/4 v5, 0x1

    #@31
    invoke-direct {p0, v2, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    #@34
    .line 1891
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@37
    move-result-object v2

    #@38
    goto :goto_0

    #@39
    .line 1900
    :cond_0
    if-eqz v4, :cond_1

    #@3b
    .line 1901
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@3e
    :cond_1
    :goto_1
    move-object v3, v4

    #@3f
    .line 1907
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "--- End "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    const-string/jumbo v6, " Contents ---"

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    #@5d
    .line 1886
    return-void

    #@5e
    .line 1903
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    #@5f
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    #@60
    .line 1896
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    #@61
    .line 1897
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v6, "Could not read "

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    const-string/jumbo v6, ", "

    #@74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    const/4 v6, 0x1

    #@81
    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@84
    .line 1900
    if-eqz v3, :cond_2

    #@86
    .line 1901
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@89
    goto :goto_2

    #@8a
    .line 1903
    :catch_2
    move-exception v1

    #@8b
    goto :goto_2

    #@8c
    .line 1894
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    #@8d
    .line 1895
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v6, "Could not open "

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    const-string/jumbo v6, ", "

    #@a0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v5

    #@ac
    const/4 v6, 0x1

    #@ad
    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b0
    .line 1900
    if-eqz v3, :cond_2

    #@b2
    .line 1901
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@b5
    goto :goto_2

    #@b6
    .line 1903
    :catch_4
    move-exception v1

    #@b7
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@b8
    .line 1898
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@b9
    .line 1900
    :goto_5
    if-eqz v3, :cond_3

    #@bb
    .line 1901
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@be
    .line 1898
    :cond_3
    :goto_6
    throw v5

    #@bf
    .line 1903
    :catch_5
    move-exception v1

    #@c0
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    #@c1
    .line 1898
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    #@c2
    move-object v3, v4

    #@c3
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@c4
    .line 1894
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    #@c5
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    #@c6
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@c7
    .line 1896
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    #@c8
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@c9
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private logKernelTime()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x3e8

    #@2
    .line 3860
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v4

    #@6
    const-wide/32 v6, 0xf4240

    #@9
    div-long v2, v4, v6

    #@b
    .line 3861
    .local v2, "kernelTimeMs":J
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 3862
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "kernel time = "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    div-long v4, v2, v8

    #@19
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v4, "."

    #@20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 3863
    rem-long v4, v2, v8

    #@26
    .line 3862
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 3863
    const-string/jumbo v4, "\n"

    #@2d
    .line 3862
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 3864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@37
    .line 3859
    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3757
    array-length v1, p2

    #@1
    .line 3759
    .local v1, "size":I
    const/16 v2, 0x2d

    #@3
    const/16 v3, 0x5f

    #@5
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    .line 3761
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@c
    .line 3762
    aget-object v2, p2, v0

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 3763
    return v0

    #@15
    .line 3761
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 3768
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Failed to look-up a string: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@2f
    .line 3770
    const/4 v2, -0x1

    #@30
    return v2
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3737
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 3738
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    #@7
    .line 3742
    .local v1, "nextSetBit":I
    array-length v2, p1

    #@8
    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    #@b
    move-result-object p0

    #@c
    .line 3744
    :goto_0
    add-int/lit8 v2, v1, 0x1

    #@e
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, -0x1

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 3745
    aget-object v2, p1, v1

    #@17
    const/16 v3, 0x5f

    #@19
    const/16 v4, 0x2d

    #@1b
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    move-result-object v2

    #@23
    const/16 v3, 0x20

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@28
    goto :goto_0

    #@29
    .line 3749
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    #@2c
    move-result v2

    #@2d
    if-lez v2, :cond_1

    #@2f
    .line 3750
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@32
    move-result v2

    #@33
    add-int/lit8 v2, v2, -0x1

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    #@38
    .line 3753
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .locals 1

    #@0
    .prologue
    .line 1988
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    #@4
    .line 1987
    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .locals 4
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1977
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@17
    .line 1978
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@19
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1b
    if-eq v2, p1, :cond_0

    #@1d
    .line 1979
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@1f
    if-eq v2, v3, :cond_0

    #@21
    .line 1980
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@23
    .line 1981
    const/4 v2, 0x0

    #@24
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@26
    goto :goto_0

    #@27
    .line 1976
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method private matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;
    .locals 12
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "query"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3258
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@3
    move-result-object v7

    #@4
    .line 3260
    .local v7, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@6
    invoke-virtual {v9, v7}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    #@9
    move-result-object v0

    #@a
    .line 3263
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_1

    #@c
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    #@f
    move-result-object v1

    #@10
    .line 3265
    :goto_0
    if-eqz p2, :cond_2

    #@12
    const/4 v8, 0x0

    #@13
    .line 3266
    .local v8, "queried":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@15
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getLoadedSPs()Ljava/util/Map;

    #@18
    move-result-object v9

    #@19
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1c
    move-result-object v4

    #@1d
    .line 3267
    .local v4, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v6, Ljava/util/HashMap;

    #@1f
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@22
    move-result v9

    #@23
    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    #@26
    .line 3268
    .local v6, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    #@29
    move-result-object v9

    #@2a
    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@2d
    move-result-object v10

    #@2e
    new-instance v9, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v11, "match nwk "

    #@36
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->toKeyString()Ljava/lang/String;

    #@3d
    move-result-object v11

    #@3e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    .line 3269
    const-string/jumbo v11, ", anqp "

    #@45
    .line 3268
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v11

    #@49
    .line 3269
    if-eqz v0, :cond_3

    #@4b
    const-string/jumbo v9, "present"

    #@4e
    .line 3268
    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    .line 3270
    const-string/jumbo v11, ", query "

    #@55
    .line 3268
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    .line 3270
    const-string/jumbo v11, ", home sps: "

    #@60
    .line 3268
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    .line 3270
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@67
    move-result v11

    #@68
    .line 3268
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v9

    #@70
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 3272
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@76
    move-result-object v3

    #@77
    .local v3, "homeSP$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v9

    #@7b
    if-eqz v9, :cond_6

    #@7d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v2

    #@81
    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@83
    .line 3273
    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    #@85
    invoke-virtual {v2, v7, v1, v9}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@88
    move-result-object v5

    #@89
    .line 3275
    .local v5, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    #@8c
    move-result-object v9

    #@8d
    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@90
    move-result-object v9

    #@91
    new-instance v10, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v11, " -- "

    #@99
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v10

    #@9d
    .line 3276
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@a0
    move-result-object v11

    #@a1
    .line 3275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v10

    #@a5
    .line 3276
    const-string/jumbo v11, ": match "

    #@a8
    .line 3275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v10

    #@b0
    .line 3276
    const-string/jumbo v11, ", queried "

    #@b3
    .line 3275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v10

    #@b7
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v10

    #@bf
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 3278
    sget-object v9, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@c4
    if-ne v5, v9, :cond_0

    #@c6
    if-eqz v8, :cond_4

    #@c8
    .line 3284
    :cond_0
    :goto_4
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    goto :goto_3

    #@cc
    .line 3263
    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v3    # "homeSP$iterator":Ljava/util/Iterator;
    .end local v4    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v6    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v8    # "queried":Z
    :cond_1
    const/4 v1, 0x0

    #@cd
    .local v1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    goto/16 :goto_0

    #@cf
    .line 3265
    .end local v1    # "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_2
    const/4 v8, 0x1

    #@d0
    .restart local v8    # "queried":Z
    goto/16 :goto_1

    #@d2
    .line 3269
    .restart local v4    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .restart local v6    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_3
    const-string/jumbo v9, "missing"

    #@d5
    goto/16 :goto_2

    #@d7
    .line 3279
    .restart local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v3    # "homeSP$iterator":Ljava/util/Iterator;
    .restart local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@d9
    invoke-virtual {v9, v7}, Lcom/android/server/wifi/hotspot2/AnqpCache;->initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z

    #@dc
    move-result v9

    #@dd
    if-eqz v9, :cond_5

    #@df
    .line 3280
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@e1
    invoke-virtual {v9, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->startANQP(Lcom/android/server/wifi/ScanDetail;)V

    #@e4
    .line 3282
    :cond_5
    const/4 v8, 0x1

    #@e5
    goto :goto_4

    #@e6
    .line 3286
    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_6
    return-object v6
.end method

.method private matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3242
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isConfigured()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 3243
    return-object v3

    #@a
    .line 3245
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@d
    move-result-object v1

    #@e
    .line 3246
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 3247
    return-object v3

    #@15
    .line 3249
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    #@18
    move-result-object v2

    #@19
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@1c
    .line 3251
    const/4 v2, 0x1

    #@1d
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigStore;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    #@20
    move-result-object v0

    #@21
    .line 3252
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 3253
    const-string/jumbo v4, " pass 1 matches: "

    #@39
    .line 3252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 3253
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 3252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 3254
    return-object v0
.end method

.method static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 3904
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 3905
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 3906
    :cond_0
    const/4 v0, 0x1

    #@f
    return v0
.end method

.method static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 3918
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3919
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 3928
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 3971
    :cond_0
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method private putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4344
    const/4 v3, 0x1

    #@2
    :try_start_0
    new-array v3, v3, [Ljava/security/cert/Certificate;

    #@4
    const/4 v4, 0x0

    #@5
    aput-object p2, v3, v4

    #@7
    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    #@a
    move-result-object v0

    #@b
    .line 4345
    .local v0, "certData":[B
    const-string/jumbo v3, "WifiConfigStore"

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "putting certificate "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, " in keystore"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 4346
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@2e
    const/16 v4, 0x3f2

    #@30
    const/4 v5, 0x0

    #@31
    invoke-virtual {v3, p1, v0, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v3

    #@35
    return v3

    #@36
    .line 4350
    .end local v0    # "certData":[B
    :catch_0
    move-exception v2

    #@37
    .line 4351
    .local v2, "e2":Ljava/security/cert/CertificateException;
    return v6

    #@38
    .line 4348
    .end local v2    # "e2":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    #@39
    .line 4349
    .local v1, "e1":Ljava/io/IOException;
    return v6
.end method

.method private readAutoJoinConfig()V
    .locals 15

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 2519
    const/4 v4, 0x0

    #@3
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    #@5
    new-instance v9, Ljava/io/FileReader;

    #@7
    sget-object v12, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    #@9
    invoke-direct {v9, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@c
    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@f
    .line 2520
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .local v1, "key":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_5

    #@15
    .line 2521
    const-string/jumbo v9, "WifiConfigStore"

    #@18
    new-instance v12, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v13, "readAutoJoinConfig line: "

    #@20
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v12

    #@24
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v12

    #@28
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v12

    #@2c
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 2523
    const/16 v9, 0x3a

    #@31
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    #@34
    move-result v7

    #@35
    .line 2524
    .local v7, "split":I
    if-gez v7, :cond_1

    #@37
    .line 2520
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    goto :goto_0

    #@3c
    .line 2528
    :cond_1
    const/4 v9, 0x0

    #@3d
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 2529
    .local v2, "name":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    #@43
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@46
    move-result-object v6

    #@47
    .line 2530
    .local v6, "reference":Ljava/lang/Object;
    if-eqz v6, :cond_0

    #@49
    .line 2535
    add-int/lit8 v9, v7, 0x1

    #@4b
    :try_start_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@56
    move-result v8

    #@57
    .line 2536
    .local v8, "value":I
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v9

    #@5b
    const-class v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5d
    if-ne v9, v12, :cond_4

    #@5f
    .line 2537
    check-cast v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@61
    .end local v6    # "reference":Ljava/lang/Object;
    if-eqz v8, :cond_3

    #@63
    const/4 v9, 0x1

    #@64
    :goto_2
    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@67
    .line 2542
    :goto_3
    const-string/jumbo v9, "WifiConfigStore"

    #@6a
    new-instance v12, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v13, "readAutoJoinConfig: "

    #@72
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v12

    #@76
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v12

    #@7a
    const-string/jumbo v13, " = "

    #@7d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v12

    #@81
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v12

    #@85
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v12

    #@89
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8c
    goto :goto_1

    #@8d
    .line 2544
    .end local v8    # "value":I
    :catch_0
    move-exception v3

    #@8e
    .line 2545
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string/jumbo v9, "WifiConfigStore"

    #@91
    new-instance v12, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v13, "readAutoJoinConfig: incorrect format :"

    #@99
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v12

    #@9d
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v12

    #@a1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v12

    #@a5
    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a8
    goto :goto_1

    #@a9
    .line 2550
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v7    # "split":I
    :catch_1
    move-exception v9

    #@aa
    move-object v4, v5

    #@ab
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ac
    :catchall_0
    move-exception v10

    #@ad
    move-object v14, v10

    #@ae
    move-object v10, v9

    #@af
    move-object v9, v14

    #@b0
    :goto_5
    if-eqz v4, :cond_2

    #@b2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@b5
    :cond_2
    :goto_6
    if-eqz v10, :cond_9

    #@b7
    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@b8
    .line 2548
    :catch_2
    move-exception v0

    #@b9
    .line 2549
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v10, "readAutoJoinStatus: Error parsing configuration"

    #@c1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v9

    #@c5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v9

    #@c9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v9

    #@cd
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@d0
    .line 2518
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    return-void

    #@d1
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "split":I
    .restart local v8    # "value":I
    :cond_3
    move v9, v11

    #@d2
    .line 2537
    goto :goto_2

    #@d3
    .line 2540
    .restart local v6    # "reference":Ljava/lang/Object;
    :cond_4
    :try_start_7
    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d5
    .end local v6    # "reference":Ljava/lang/Object;
    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@d8
    goto :goto_3

    #@d9
    .line 2550
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v7    # "split":I
    .end local v8    # "value":I
    :catchall_1
    move-exception v9

    #@da
    move-object v4, v5

    #@db
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@dc
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v5, :cond_6

    #@de
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    #@e1
    :cond_6
    :goto_9
    if-eqz v10, :cond_7

    #@e3
    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    #@e4
    .line 2548
    :catch_3
    move-exception v0

    #@e5
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    #@e6
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    #@e7
    .line 2550
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v10

    #@e8
    goto :goto_9

    #@e9
    :cond_7
    move-object v4, v5

    #@ea
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    #@eb
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v11

    #@ec
    if-nez v10, :cond_8

    #@ee
    move-object v10, v11

    #@ef
    goto :goto_6

    #@f0
    :cond_8
    if-eq v10, v11, :cond_2

    #@f2
    :try_start_a
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@f5
    goto :goto_6

    #@f6
    :cond_9
    throw v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    #@f7
    .local v4, "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    #@f8
    goto :goto_5

    #@f9
    :catch_6
    move-exception v9

    #@fa
    goto :goto_4
.end method

.method private readIpAndProxyConfigurations()V
    .locals 6

    #@0
    .prologue
    .line 2566
    sget-object v4, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    #@2
    invoke-super {p0, v4}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    #@5
    move-result-object v3

    #@6
    .line 2568
    .local v3, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v3, :cond_0

    #@8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_1

    #@e
    .line 2570
    :cond_0
    return-void

    #@f
    .line 2573
    :cond_1
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@13
    move-result v4

    #@14
    if-ge v1, v4, :cond_4

    #@16
    .line 2574
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@19
    move-result v2

    #@1a
    .line 2575
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@1c
    invoke-virtual {v4, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyID(I)Landroid/net/wifi/WifiConfiguration;

    #@1f
    move-result-object v0

    #@20
    .line 2578
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    #@22
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@24
    const/16 v5, 0xc8

    #@26
    if-ne v4, v5, :cond_3

    #@28
    .line 2580
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "configuration found for missing network, nid="

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 2581
    const-string/jumbo v5, ", ignored, networks.size="

    #@3b
    .line 2580
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 2581
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@42
    move-result v5

    #@43
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    .line 2580
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@52
    .line 2573
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_0

    #@55
    .line 2579
    :cond_3
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@57
    .line 2578
    if-nez v4, :cond_2

    #@59
    .line 2583
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5c
    move-result-object v4

    #@5d
    check-cast v4, Landroid/net/IpConfiguration;

    #@5f
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    #@62
    goto :goto_1

    #@63
    .line 2565
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "id":I
    :cond_4
    return-void
.end method

.method private readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "netId"    # I
    .param p2, "variable"    # Ljava/util/BitSet;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4452
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-virtual {v5, p1, p3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 4453
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_1

    #@d
    .line 4454
    invoke-virtual {p2}, Ljava/util/BitSet;->clear()V

    #@10
    .line 4455
    const-string/jumbo v5, " "

    #@13
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 4456
    .local v2, "vals":[Ljava/lang/String;
    array-length v5, v2

    #@18
    :goto_0
    if-ge v4, v5, :cond_1

    #@1a
    aget-object v1, v2, v4

    #@1c
    .line 4457
    .local v1, "val":Ljava/lang/String;
    invoke-direct {p0, v1, p4}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    #@1f
    move-result v0

    #@20
    .line 4458
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@22
    .line 4459
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    #@25
    .line 4456
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .line 4451
    .end local v0    # "index":I
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readNetworkHistory()V
    .locals 31

    #@0
    .prologue
    .line 2278
    move-object/from16 v0, p0

    #@2
    iget-boolean v8, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 2279
    new-instance v8, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v9, "readNetworkHistory() path:"

    #@e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v8

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@21
    .line 2282
    :cond_0
    const/16 v27, 0x0

    #@23
    const/16 v19, 0x0

    #@25
    .line 2283
    .local v19, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v20, Ljava/io/DataInputStream;

    #@27
    new-instance v8, Ljava/io/BufferedInputStream;

    #@29
    .line 2284
    new-instance v9, Ljava/io/FileInputStream;

    #@2b
    sget-object v28, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    #@2d
    move-object/from16 v0, v28

    #@2f
    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@32
    .line 2283
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@35
    move-object/from16 v0, v20

    #@37
    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@3a
    .line 2286
    .end local v19    # "in":Ljava/io/DataInputStream;
    .local v20, "in":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    #@3b
    .line 2287
    .local v4, "bssid":Ljava/lang/String;
    const/16 v24, 0x0

    #@3d
    .line 2289
    .local v24, "ssid":Ljava/lang/String;
    const/4 v7, 0x0

    #@3e
    .line 2290
    .local v7, "freq":I
    const/16 v25, 0x0

    #@40
    .line 2291
    .local v25, "status":I
    const-wide/16 v10, 0x0

    #@42
    .line 2292
    .local v10, "seen":J
    :try_start_1
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@44
    .line 2293
    .local v6, "rssi":I
    const/4 v5, 0x0

    #@45
    .line 2295
    .local v5, "caps":Ljava/lang/String;
    const/4 v14, 0x0

    #@46
    .line 2297
    .end local v5    # "caps":Ljava/lang/String;
    .end local v24    # "ssid":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@49
    move-result-object v22

    #@4a
    .line 2298
    .local v22, "line":Ljava/lang/String;
    if-nez v22, :cond_3

    #@4c
    .line 2515
    if-eqz v20, :cond_2

    #@4e
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    #@51
    :cond_2
    :goto_1
    if-eqz v27, :cond_32

    #@53
    :try_start_3
    throw v27
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    #@54
    .line 2509
    :catch_0
    move-exception v18

    #@55
    .local v18, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v19, v20

    #@57
    .line 2510
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v20    # "in":Ljava/io/DataInputStream;
    .end local v22    # "line":Ljava/lang/String;
    .end local v25    # "status":I
    :goto_2
    const-string/jumbo v8, "WifiConfigStore"

    #@5a
    new-instance v9, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v27, "readNetworkHistory: failed to read, revert to default, "

    #@62
    move-object/from16 v0, v27

    #@64
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    move-object/from16 v0, v18

    #@6a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    move-object/from16 v0, v18

    #@74
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@77
    .line 2277
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    return-void

    #@78
    .line 2301
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v25    # "status":I
    :cond_3
    const/16 v8, 0x3a

    #@7a
    :try_start_4
    move-object/from16 v0, v22

    #@7c
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    #@7f
    move-result v13

    #@80
    .line 2302
    .local v13, "colon":I
    if-ltz v13, :cond_1

    #@82
    .line 2306
    const/4 v8, 0x0

    #@83
    move-object/from16 v0, v22

    #@85
    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@8c
    move-result-object v21

    #@8d
    .line 2307
    .local v21, "key":Ljava/lang/String;
    add-int/lit8 v8, v13, 0x1

    #@8f
    move-object/from16 v0, v22

    #@91
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@98
    move-result-object v26

    #@99
    .line 2309
    .local v26, "value":Ljava/lang/String;
    const-string/jumbo v8, "CONFIG"

    #@9c
    move-object/from16 v0, v21

    #@9e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v8

    #@a2
    if-eqz v8, :cond_7

    #@a4
    .line 2311
    move-object/from16 v0, p0

    #@a6
    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@a8
    move-object/from16 v0, v26

    #@aa
    invoke-virtual {v8, v0}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@ad
    move-result-object v14

    #@ae
    .line 2315
    .local v14, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v14, :cond_5

    #@b0
    .line 2316
    new-instance v8, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v9, "readNetworkHistory didnt find netid for hash="

    #@b8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v8

    #@bc
    .line 2317
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->hashCode()I

    #@bf
    move-result v9

    #@c0
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    .line 2316
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v8

    #@c8
    .line 2318
    const-string/jumbo v9, " key: "

    #@cb
    .line 2316
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v8

    #@cf
    move-object/from16 v0, v26

    #@d1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v8

    #@d5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v8

    #@d9
    move-object/from16 v0, p0

    #@db
    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@de
    .line 2319
    move-object/from16 v0, p0

    #@e0
    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    #@e2
    move-object/from16 v0, v26

    #@e4
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e7
    goto/16 :goto_0

    #@e9
    .line 2515
    .end local v6    # "rssi":I
    .end local v13    # "colon":I
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "line":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :catch_1
    move-exception v8

    #@ea
    move-object/from16 v19, v20

    #@ec
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v20    # "in":Ljava/io/DataInputStream;
    .end local v25    # "status":I
    :goto_4
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ed
    :catchall_0
    move-exception v9

    #@ee
    move-object/from16 v30, v9

    #@f0
    move-object v9, v8

    #@f1
    move-object/from16 v8, v30

    #@f3
    :goto_5
    if-eqz v19, :cond_4

    #@f5
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    #@f8
    :cond_4
    :goto_6
    if-eqz v9, :cond_34

    #@fa
    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    #@fb
    .line 2509
    :catch_2
    move-exception v18

    #@fc
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@fe
    .line 2323
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v13    # "colon":I
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v25    # "status":I
    .restart local v26    # "value":Ljava/lang/String;
    :cond_5
    :try_start_8
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@100
    if-eqz v8, :cond_6

    #@102
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@104
    if-nez v8, :cond_1

    #@106
    .line 2325
    :cond_6
    move-object/from16 v0, p0

    #@108
    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@10a
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10d
    move-result-object v8

    #@10e
    const/16 v9, 0x3e8

    #@110
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@113
    move-result-object v8

    #@114
    .line 2324
    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@116
    .line 2326
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@118
    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@11a
    .line 2328
    const-string/jumbo v8, "WifiConfigStore"

    #@11d
    new-instance v9, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v28, "Upgrading network "

    #@125
    move-object/from16 v0, v28

    #@127
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v9

    #@12b
    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@12d
    move/from16 v28, v0

    #@12f
    move/from16 v0, v28

    #@131
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@134
    move-result-object v9

    #@135
    .line 2329
    const-string/jumbo v28, " to "

    #@138
    .line 2328
    move-object/from16 v0, v28

    #@13a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v9

    #@13e
    .line 2329
    iget-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@140
    move-object/from16 v28, v0

    #@142
    .line 2328
    move-object/from16 v0, v28

    #@144
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v9

    #@148
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v9

    #@14c
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14f
    goto/16 :goto_0

    #@151
    .line 2515
    .end local v6    # "rssi":I
    .end local v13    # "colon":I
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "line":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v8

    #@152
    move-object/from16 v9, v27

    #@154
    move-object/from16 v19, v20

    #@156
    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    goto :goto_5

    #@157
    .line 2332
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "rssi":I
    .restart local v13    # "colon":I
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v26    # "value":Ljava/lang/String;
    :cond_7
    if-eqz v14, :cond_1

    #@159
    .line 2333
    const-string/jumbo v8, "SSID"

    #@15c
    move-object/from16 v0, v21

    #@15e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@161
    move-result v8

    #@162
    if-eqz v8, :cond_9

    #@164
    .line 2335
    move-object/from16 v24, v26

    #@166
    .line 2336
    .local v24, "ssid":Ljava/lang/String;
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@168
    if-eqz v8, :cond_8

    #@16a
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@16c
    move-object/from16 v0, v24

    #@16e
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v8

    #@172
    if-eqz v8, :cond_2e

    #@174
    .line 2341
    :cond_8
    move-object/from16 v0, v24

    #@176
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@178
    goto/16 :goto_0

    #@17a
    .line 2333
    .end local v24    # "ssid":Ljava/lang/String;
    :cond_9
    const-string/jumbo v8, "FQDN"

    #@17d
    move-object/from16 v0, v21

    #@17f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@182
    move-result v8

    #@183
    if-eqz v8, :cond_b

    #@185
    .line 2346
    const-string/jumbo v8, "null"

    #@188
    move-object/from16 v0, v26

    #@18a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18d
    move-result v8

    #@18e
    if-eqz v8, :cond_a

    #@190
    const/16 v26, 0x0

    #@192
    .end local v26    # "value":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v26

    #@194
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@196
    goto/16 :goto_0

    #@198
    .line 2333
    .restart local v26    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v8, "DEFAULT_GW"

    #@19b
    move-object/from16 v0, v21

    #@19d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a0
    move-result v8

    #@1a1
    if-eqz v8, :cond_c

    #@1a3
    .line 2349
    move-object/from16 v0, v26

    #@1a5
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 2333
    :cond_c
    const-string/jumbo v8, "AUTO_JOIN_STATUS"

    #@1ac
    move-object/from16 v0, v21

    #@1ae
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b1
    move-result v8

    #@1b2
    if-eqz v8, :cond_d

    #@1b4
    .line 2352
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b7
    move-result v8

    #@1b8
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@1ba
    goto/16 :goto_0

    #@1bc
    .line 2333
    :cond_d
    const-string/jumbo v8, "SUP_DIS_REASON"

    #@1bf
    move-object/from16 v0, v21

    #@1c1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c4
    move-result v8

    #@1c5
    if-eqz v8, :cond_e

    #@1c7
    .line 2355
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ca
    move-result v8

    #@1cb
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@1cd
    goto/16 :goto_0

    #@1cf
    .line 2333
    :cond_e
    const-string/jumbo v8, "SELF_ADDED"

    #@1d2
    move-object/from16 v0, v21

    #@1d4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d7
    move-result v8

    #@1d8
    if-eqz v8, :cond_f

    #@1da
    .line 2358
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1dd
    move-result v8

    #@1de
    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@1e0
    goto/16 :goto_0

    #@1e2
    .line 2333
    :cond_f
    const-string/jumbo v8, "DID_SELF_ADD"

    #@1e5
    move-object/from16 v0, v21

    #@1e7
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ea
    move-result v8

    #@1eb
    if-eqz v8, :cond_10

    #@1ed
    .line 2361
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1f0
    move-result v8

    #@1f1
    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@1f3
    goto/16 :goto_0

    #@1f5
    .line 2333
    :cond_10
    const-string/jumbo v8, "NO_INTERNET_ACCESS_REPORTS"

    #@1f8
    move-object/from16 v0, v21

    #@1fa
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fd
    move-result v8

    #@1fe
    if-eqz v8, :cond_11

    #@200
    .line 2364
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@203
    move-result v8

    #@204
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@206
    goto/16 :goto_0

    #@208
    .line 2333
    :cond_11
    const-string/jumbo v8, "VALIDATED_INTERNET_ACCESS"

    #@20b
    move-object/from16 v0, v21

    #@20d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@210
    move-result v8

    #@211
    if-eqz v8, :cond_12

    #@213
    .line 2367
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@216
    move-result v8

    #@217
    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@219
    goto/16 :goto_0

    #@21b
    .line 2333
    :cond_12
    const-string/jumbo v8, "CREATION_TIME"

    #@21e
    move-object/from16 v0, v21

    #@220
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@223
    move-result v8

    #@224
    if-eqz v8, :cond_13

    #@226
    .line 2370
    move-object/from16 v0, v26

    #@228
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@22a
    goto/16 :goto_0

    #@22c
    .line 2333
    :cond_13
    const-string/jumbo v8, "UPDATE_TIME"

    #@22f
    move-object/from16 v0, v21

    #@231
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@234
    move-result v8

    #@235
    if-eqz v8, :cond_14

    #@237
    .line 2373
    move-object/from16 v0, v26

    #@239
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@23b
    goto/16 :goto_0

    #@23d
    .line 2333
    :cond_14
    const-string/jumbo v8, "EPHEMERAL"

    #@240
    move-object/from16 v0, v21

    #@242
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@245
    move-result v8

    #@246
    if-eqz v8, :cond_15

    #@248
    .line 2376
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@24b
    move-result v8

    #@24c
    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@24e
    goto/16 :goto_0

    #@250
    .line 2333
    :cond_15
    const-string/jumbo v8, "CREATOR_UID_KEY"

    #@253
    move-object/from16 v0, v21

    #@255
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@258
    move-result v8

    #@259
    if-eqz v8, :cond_16

    #@25b
    .line 2379
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@25e
    move-result v8

    #@25f
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@261
    goto/16 :goto_0

    #@263
    .line 2333
    :cond_16
    const-string/jumbo v8, "BLACKLIST_MILLI"

    #@266
    move-object/from16 v0, v21

    #@268
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26b
    move-result v8

    #@26c
    if-eqz v8, :cond_17

    #@26e
    .line 2382
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@271
    move-result-wide v8

    #@272
    iput-wide v8, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@274
    goto/16 :goto_0

    #@276
    .line 2333
    :cond_17
    const-string/jumbo v8, "CONNECT_FAILURES"

    #@279
    move-object/from16 v0, v21

    #@27b
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27e
    move-result v8

    #@27f
    if-eqz v8, :cond_18

    #@281
    .line 2385
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@284
    move-result v8

    #@285
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@287
    goto/16 :goto_0

    #@289
    .line 2333
    :cond_18
    const-string/jumbo v8, "IP_CONFIG_FAILURES"

    #@28c
    move-object/from16 v0, v21

    #@28e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@291
    move-result v8

    #@292
    if-eqz v8, :cond_19

    #@294
    .line 2388
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@297
    move-result v8

    #@298
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@29a
    goto/16 :goto_0

    #@29c
    .line 2333
    :cond_19
    const-string/jumbo v8, "AUTH_FAILURES"

    #@29f
    move-object/from16 v0, v21

    #@2a1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a4
    move-result v8

    #@2a5
    if-eqz v8, :cond_1a

    #@2a7
    .line 2391
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2aa
    move-result v8

    #@2ab
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@2ad
    goto/16 :goto_0

    #@2af
    .line 2333
    :cond_1a
    const-string/jumbo v8, "SCORER_OVERRIDE"

    #@2b2
    move-object/from16 v0, v21

    #@2b4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b7
    move-result v8

    #@2b8
    if-eqz v8, :cond_1b

    #@2ba
    .line 2394
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2bd
    move-result v8

    #@2be
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@2c0
    goto/16 :goto_0

    #@2c2
    .line 2333
    :cond_1b
    const-string/jumbo v8, "SCORER_OVERRIDE_AND_SWITCH"

    #@2c5
    move-object/from16 v0, v21

    #@2c7
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ca
    move-result v8

    #@2cb
    if-eqz v8, :cond_1c

    #@2cd
    .line 2397
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d0
    move-result v8

    #@2d1
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@2d3
    goto/16 :goto_0

    #@2d5
    .line 2333
    :cond_1c
    const-string/jumbo v8, "NUM_ASSOCIATION"

    #@2d8
    move-object/from16 v0, v21

    #@2da
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2dd
    move-result v8

    #@2de
    if-eqz v8, :cond_1d

    #@2e0
    .line 2400
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2e3
    move-result v8

    #@2e4
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@2e6
    goto/16 :goto_0

    #@2e8
    .line 2333
    :cond_1d
    const-string/jumbo v8, "JOIN_ATTEMPT_BOOST"

    #@2eb
    move-object/from16 v0, v21

    #@2ed
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f0
    move-result v8

    #@2f1
    if-eqz v8, :cond_1e

    #@2f3
    .line 2404
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f6
    move-result v8

    #@2f7
    .line 2403
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@2f9
    goto/16 :goto_0

    #@2fb
    .line 2333
    :cond_1e
    const-string/jumbo v8, "CONNECT_UID_KEY"

    #@2fe
    move-object/from16 v0, v21

    #@300
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@303
    move-result v8

    #@304
    if-eqz v8, :cond_1f

    #@306
    .line 2407
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@309
    move-result v8

    #@30a
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@30c
    goto/16 :goto_0

    #@30e
    .line 2333
    :cond_1f
    const-string/jumbo v8, "UPDATE_UID"

    #@311
    move-object/from16 v0, v21

    #@313
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@316
    move-result v8

    #@317
    if-eqz v8, :cond_20

    #@319
    .line 2410
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@31c
    move-result v8

    #@31d
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@31f
    goto/16 :goto_0

    #@321
    .line 2333
    :cond_20
    const-string/jumbo v8, "FAILURE"

    #@324
    move-object/from16 v0, v21

    #@326
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@329
    move-result v8

    #@32a
    if-eqz v8, :cond_21

    #@32c
    .line 2413
    move-object/from16 v0, v26

    #@32e
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@330
    goto/16 :goto_0

    #@332
    .line 2333
    :cond_21
    const-string/jumbo v8, "PEER_CONFIGURATION"

    #@335
    move-object/from16 v0, v21

    #@337
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33a
    move-result v8

    #@33b
    if-eqz v8, :cond_22

    #@33d
    .line 2416
    move-object/from16 v0, v26

    #@33f
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@341
    goto/16 :goto_0

    #@343
    .line 2333
    :cond_22
    const-string/jumbo v8, "CHOICE"

    #@346
    move-object/from16 v0, v21

    #@348
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34b
    move-result v8

    #@34c
    if-eqz v8, :cond_23

    #@34e
    .line 2419
    const-string/jumbo v15, ""

    #@351
    .line 2420
    .local v15, "configKey":Ljava/lang/String;
    const/4 v12, 0x0

    #@352
    .line 2421
    .local v12, "choice":I
    sget-object v8, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    #@354
    move-object/from16 v0, v26

    #@356
    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@359
    move-result-object v23

    #@35a
    .line 2422
    .local v23, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    #@35d
    move-result v8

    #@35e
    if-nez v8, :cond_2f

    #@360
    .line 2423
    const-string/jumbo v8, "WifiConfigStore"

    #@363
    new-instance v9, Ljava/lang/StringBuilder;

    #@365
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@368
    const-string/jumbo v28, "WifiConfigStore: connectChoice:  Couldnt match pattern : "

    #@36b
    move-object/from16 v0, v28

    #@36d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@370
    move-result-object v9

    #@371
    move-object/from16 v0, v26

    #@373
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@376
    move-result-object v9

    #@377
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37a
    move-result-object v9

    #@37b
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37e
    goto/16 :goto_0

    #@380
    .line 2333
    .end local v12    # "choice":I
    .end local v15    # "configKey":Ljava/lang/String;
    .end local v23    # "match":Ljava/util/regex/Matcher;
    :cond_23
    const-string/jumbo v8, "LINK"

    #@383
    move-object/from16 v0, v21

    #@385
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@388
    move-result v8

    #@389
    if-eqz v8, :cond_24

    #@38b
    .line 2441
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@38d
    if-nez v8, :cond_31

    #@38f
    .line 2442
    new-instance v8, Ljava/util/HashMap;

    #@391
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@394
    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@396
    goto/16 :goto_0

    #@398
    .line 2333
    :cond_24
    const-string/jumbo v8, "BSSID"

    #@39b
    move-object/from16 v0, v21

    #@39d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a0
    move-result v8

    #@3a1
    if-eqz v8, :cond_25

    #@3a3
    .line 2449
    const/16 v25, 0x0

    #@3a5
    .line 2450
    const/16 v24, 0x0

    #@3a7
    .line 2451
    .local v24, "ssid":Ljava/lang/String;
    const/4 v4, 0x0

    #@3a8
    .line 2452
    const/4 v7, 0x0

    #@3a9
    .line 2453
    const-wide/16 v10, 0x0

    #@3ab
    .line 2454
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@3ad
    .line 2455
    const-string/jumbo v5, ""

    #@3b0
    .local v5, "caps":Ljava/lang/String;
    goto/16 :goto_0

    #@3b2
    .line 2333
    .end local v5    # "caps":Ljava/lang/String;
    .end local v24    # "ssid":Ljava/lang/String;
    :cond_25
    const-string/jumbo v8, "RSSI"

    #@3b5
    move-object/from16 v0, v21

    #@3b7
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ba
    move-result v8

    #@3bb
    if-eqz v8, :cond_26

    #@3bd
    .line 2458
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c0
    move-result v6

    #@3c1
    goto/16 :goto_0

    #@3c3
    .line 2333
    :cond_26
    const-string/jumbo v8, "BSSID_STATUS"

    #@3c6
    move-object/from16 v0, v21

    #@3c8
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3cb
    move-result v8

    #@3cc
    if-eqz v8, :cond_27

    #@3ce
    .line 2461
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3d1
    move-result v25

    #@3d2
    goto/16 :goto_0

    #@3d4
    .line 2333
    :cond_27
    const-string/jumbo v8, "FREQ"

    #@3d7
    move-object/from16 v0, v21

    #@3d9
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3dc
    move-result v8

    #@3dd
    if-eqz v8, :cond_28

    #@3df
    .line 2464
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3e2
    move-result v7

    #@3e3
    goto/16 :goto_0

    #@3e5
    .line 2333
    :cond_28
    const-string/jumbo v8, "DATE"

    #@3e8
    move-object/from16 v0, v21

    #@3ea
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ed
    move-result v8

    #@3ee
    if-nez v8, :cond_1

    #@3f0
    const-string/jumbo v8, "/BSSID"

    #@3f3
    move-object/from16 v0, v21

    #@3f5
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f8
    move-result v8

    #@3f9
    if-eqz v8, :cond_29

    #@3fb
    .line 2478
    const/4 v8, 0x0

    #@3fc
    if-eqz v8, :cond_1

    #@3fe
    if-eqz v24, :cond_1

    #@400
    .line 2480
    move-object/from16 v0, p0

    #@402
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@405
    move-result-object v8

    #@406
    if-eqz v8, :cond_1

    #@408
    .line 2481
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@40b
    move-result-object v3

    #@40c
    .line 2482
    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Lcom/android/server/wifi/ScanDetail;

    #@40e
    .line 2483
    const-wide/16 v8, 0x0

    #@410
    .line 2482
    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    #@413
    .line 2484
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    #@415
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@418
    move-result-object v8

    #@419
    invoke-virtual {v8, v2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    #@41c
    .line 2485
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@41f
    move-result-object v8

    #@420
    move/from16 v0, v25

    #@422
    iput v0, v8, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@424
    goto/16 :goto_0

    #@426
    .line 2333
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :cond_29
    const-string/jumbo v8, "DELETED_CRC32"

    #@429
    move-object/from16 v0, v21

    #@42b
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42e
    move-result v8

    #@42f
    if-eqz v8, :cond_2a

    #@431
    .line 2490
    move-object/from16 v0, p0

    #@433
    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    #@435
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@438
    move-result-wide v28

    #@439
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@43c
    move-result-object v9

    #@43d
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@440
    goto/16 :goto_0

    #@442
    .line 2333
    :cond_2a
    const-string/jumbo v8, "DELETED_EPHEMERAL"

    #@445
    move-object/from16 v0, v21

    #@447
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44a
    move-result v8

    #@44b
    if-eqz v8, :cond_2b

    #@44d
    .line 2493
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@450
    move-result v8

    #@451
    if-nez v8, :cond_1

    #@453
    .line 2494
    move-object/from16 v0, p0

    #@455
    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@457
    move-object/from16 v0, v26

    #@459
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@45c
    goto/16 :goto_0

    #@45e
    .line 2333
    :cond_2b
    const-string/jumbo v8, "CREATOR_NAME"

    #@461
    move-object/from16 v0, v21

    #@463
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@466
    move-result v8

    #@467
    if-eqz v8, :cond_2c

    #@469
    .line 2498
    move-object/from16 v0, v26

    #@46b
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@46d
    goto/16 :goto_0

    #@46f
    .line 2333
    :cond_2c
    const-string/jumbo v8, "UPDATE_NAME"

    #@472
    move-object/from16 v0, v21

    #@474
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@477
    move-result v8

    #@478
    if-eqz v8, :cond_2d

    #@47a
    .line 2501
    move-object/from16 v0, v26

    #@47c
    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@47e
    goto/16 :goto_0

    #@480
    .line 2333
    :cond_2d
    const-string/jumbo v8, "USER_APPROVED"

    #@483
    move-object/from16 v0, v21

    #@485
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@488
    move-result v8

    #@489
    if-eqz v8, :cond_1

    #@48b
    .line 2504
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@48e
    move-result v8

    #@48f
    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@491
    goto/16 :goto_0

    #@493
    .line 2337
    .local v24, "ssid":Ljava/lang/String;
    :cond_2e
    const-string/jumbo v8, "Error parsing network history file, mismatched SSIDs"

    #@496
    move-object/from16 v0, p0

    #@498
    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@49b
    .line 2338
    const/4 v14, 0x0

    #@49c
    .line 2339
    .local v14, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v24, 0x0

    #@49e
    .local v24, "ssid":Ljava/lang/String;
    goto/16 :goto_0

    #@4a0
    .line 2426
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v24    # "ssid":Ljava/lang/String;
    .restart local v12    # "choice":I
    .restart local v15    # "configKey":Ljava/lang/String;
    .restart local v23    # "match":Ljava/util/regex/Matcher;
    :cond_2f
    const/4 v8, 0x1

    #@4a1
    move-object/from16 v0, v23

    #@4a3
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@4a6
    move-result-object v15

    #@4a7
    .line 2428
    const/4 v8, 0x2

    #@4a8
    :try_start_9
    move-object/from16 v0, v23

    #@4aa
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4ad
    move-result-object v8

    #@4ae
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@4b1
    move-result v12

    #@4b2
    .line 2432
    :goto_7
    if-lez v12, :cond_1

    #@4b4
    .line 2433
    :try_start_a
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@4b6
    if-nez v8, :cond_30

    #@4b8
    .line 2434
    new-instance v8, Ljava/util/HashMap;

    #@4ba
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@4bd
    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@4bf
    .line 2436
    :cond_30
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@4c1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c4
    move-result-object v9

    #@4c5
    invoke-virtual {v8, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c8
    goto/16 :goto_0

    #@4ca
    .line 2429
    :catch_3
    move-exception v18

    #@4cb
    .line 2430
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    #@4cc
    goto :goto_7

    #@4cd
    .line 2445
    .end local v12    # "choice":I
    .end local v15    # "configKey":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "match":Ljava/util/regex/Matcher;
    :cond_31
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@4cf
    const/4 v9, -0x1

    #@4d0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d3
    move-result-object v9

    #@4d4
    move-object/from16 v0, v26

    #@4d6
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@4d9
    goto/16 :goto_0

    #@4db
    .line 2515
    .end local v13    # "colon":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :catch_4
    move-exception v27

    #@4dc
    goto/16 :goto_1

    #@4de
    :cond_32
    move-object/from16 v19, v20

    #@4e0
    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3

    #@4e2
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v22    # "line":Ljava/lang/String;
    .end local v25    # "status":I
    :catch_5
    move-exception v27

    #@4e3
    if-nez v9, :cond_33

    #@4e5
    move-object/from16 v9, v27

    #@4e7
    goto/16 :goto_6

    #@4e9
    :cond_33
    move-object/from16 v0, v27

    #@4eb
    if-eq v9, v0, :cond_4

    #@4ed
    :try_start_b
    move-object/from16 v0, v27

    #@4ef
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@4f2
    goto/16 :goto_6

    #@4f4
    .line 2511
    :catch_6
    move-exception v16

    #@4f5
    .local v16, "e":Ljava/io/EOFException;
    goto/16 :goto_3

    #@4f7
    .line 2515
    .end local v16    # "e":Ljava/io/EOFException;
    :cond_34
    throw v8
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    #@4f8
    .line 2513
    :catch_7
    move-exception v17

    #@4f9
    .line 2514
    .local v17, "e":Ljava/io/IOException;
    :goto_8
    const-string/jumbo v8, "WifiConfigStore"

    #@4fc
    new-instance v9, Ljava/lang/StringBuilder;

    #@4fe
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@501
    const-string/jumbo v27, "readNetworkHistory: No config file, revert to default, "

    #@504
    move-object/from16 v0, v27

    #@506
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@509
    move-result-object v9

    #@50a
    move-object/from16 v0, v17

    #@50c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50f
    move-result-object v9

    #@510
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@513
    move-result-object v9

    #@514
    move-object/from16 v0, v17

    #@516
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@519
    goto/16 :goto_3

    #@51b
    .line 2511
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v25    # "status":I
    :catch_8
    move-exception v16

    #@51c
    .restart local v16    # "e":Ljava/io/EOFException;
    move-object/from16 v19, v20

    #@51e
    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3

    #@520
    .line 2513
    .end local v16    # "e":Ljava/io/EOFException;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    :catch_9
    move-exception v17

    #@521
    .restart local v17    # "e":Ljava/io/IOException;
    move-object/from16 v19, v20

    #@523
    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    goto :goto_8

    #@524
    .line 2515
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v17    # "e":Ljava/io/IOException;
    .end local v22    # "line":Ljava/lang/String;
    .end local v25    # "status":I
    .local v19, "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v8

    #@525
    move-object/from16 v9, v27

    #@527
    goto/16 :goto_5

    #@529
    :catch_a
    move-exception v8

    #@52a
    goto/16 :goto_4
.end method

.method private readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1964
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@3
    move-result-wide v4

    #@4
    .line 1965
    .local v4, "start":J
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    #@7
    move-result-object v0

    #@8
    .line 1966
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@b
    move-result-wide v2

    #@c
    .line 1968
    .local v2, "end":J
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1969
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "readNetworkVariableFromSupplicantFile ssid=["

    #@18
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v6, "] key="

    #@23
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 1970
    const-string/jumbo v6, " duration="

    #@2e
    .line 1969
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 1970
    sub-long v6, v2, v4

    #@34
    .line 1969
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@3f
    .line 1972
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    check-cast v1, Ljava/lang/String;

    #@45
    return-object v1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 11
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 3613
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5
    .line 3614
    .local v4, "netId":I
    if-gez v4, :cond_0

    #@7
    .line 3615
    return-void

    #@8
    .line 3624
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@a
    const-string/jumbo v8, "ssid"

    #@d
    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 3625
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v7

    #@15
    if-nez v7, :cond_5

    #@17
    .line 3626
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v7

    #@1b
    const/16 v8, 0x22

    #@1d
    if-eq v7, v8, :cond_4

    #@1f
    .line 3627
    new-instance v7, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v8, "\""

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-static {v5}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v8}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    const-string/jumbo v8, "\""

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@44
    .line 3637
    :goto_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@46
    const-string/jumbo v8, "bssid"

    #@49
    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    .line 3638
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@50
    move-result v7

    #@51
    if-nez v7, :cond_6

    #@53
    .line 3639
    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@55
    .line 3644
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@57
    const-string/jumbo v8, "priority"

    #@5a
    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    .line 3645
    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@60
    .line 3646
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@63
    move-result v7

    #@64
    if-nez v7, :cond_1

    #@66
    .line 3648
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@69
    move-result v7

    #@6a
    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    #@6c
    .line 3653
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@6e
    const-string/jumbo v8, "scan_ssid"

    #@71
    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    .line 3654
    iput-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@77
    .line 3655
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7a
    move-result v7

    #@7b
    if-nez v7, :cond_2

    #@7d
    .line 3657
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@80
    move-result v7

    #@81
    if-eqz v7, :cond_7

    #@83
    const/4 v7, 0x1

    #@84
    :goto_3
    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@86
    .line 3662
    :cond_2
    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@88
    const-string/jumbo v8, "wep_tx_keyidx"

    #@8b
    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    .line 3663
    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@91
    .line 3664
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@94
    move-result v7

    #@95
    if-nez v7, :cond_3

    #@97
    .line 3666
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@9a
    move-result v7

    #@9b
    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@9d
    .line 3671
    :cond_3
    :goto_5
    const/4 v1, 0x0

    #@9e
    .local v1, "i":I
    :goto_6
    const/4 v7, 0x4

    #@9f
    if-ge v1, v7, :cond_9

    #@a1
    .line 3672
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@a3
    .line 3673
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    #@a5
    aget-object v8, v8, v1

    #@a7
    .line 3672
    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@aa
    move-result-object v5

    #@ab
    .line 3674
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ae
    move-result v7

    #@af
    if-nez v7, :cond_8

    #@b1
    .line 3675
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@b3
    aput-object v5, v7, v1

    #@b5
    .line 3671
    :goto_7
    add-int/lit8 v1, v1, 0x1

    #@b7
    goto :goto_6

    #@b8
    .line 3631
    .end local v1    # "i":I
    :cond_4
    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@ba
    goto :goto_0

    #@bb
    .line 3634
    :cond_5
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@bd
    goto :goto_0

    #@be
    .line 3641
    :cond_6
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@c0
    goto :goto_1

    #@c1
    :cond_7
    move v7, v6

    #@c2
    .line 3657
    goto :goto_3

    #@c3
    .line 3677
    .restart local v1    # "i":I
    :cond_8
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@c5
    aput-object v9, v7, v1

    #@c7
    goto :goto_7

    #@c8
    .line 3681
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@ca
    const-string/jumbo v8, "psk"

    #@cd
    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@d0
    move-result-object v5

    #@d1
    .line 3682
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d4
    move-result v7

    #@d5
    if-nez v7, :cond_c

    #@d7
    .line 3683
    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@d9
    .line 3688
    :goto_8
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@db
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@dd
    .line 3689
    const-string/jumbo v9, "proto"

    #@e0
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@e2
    .line 3688
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@e5
    .line 3691
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@e7
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@e9
    .line 3692
    const-string/jumbo v9, "key_mgmt"

    #@ec
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@ee
    .line 3691
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@f1
    .line 3694
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@f3
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@f5
    .line 3695
    const-string/jumbo v9, "auth_alg"

    #@f8
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    #@fa
    .line 3694
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@fd
    .line 3697
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@ff
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@101
    .line 3698
    const-string/jumbo v9, "pairwise"

    #@104
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    #@106
    .line 3697
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@109
    .line 3700
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@10b
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@10d
    .line 3701
    const-string/jumbo v9, "group"

    #@110
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@112
    .line 3700
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@115
    .line 3703
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@117
    if-nez v7, :cond_a

    #@119
    .line 3704
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    #@11b
    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    #@11e
    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@120
    .line 3706
    :cond_a
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@122
    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    #@125
    move-result-object v0

    #@126
    .line 3707
    .local v0, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    #@128
    array-length v8, v7

    #@129
    :goto_9
    if-ge v6, v8, :cond_e

    #@12b
    aget-object v3, v7, v6

    #@12d
    .line 3708
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@12f
    invoke-virtual {v9, v4, v3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@132
    move-result-object v5

    #@133
    .line 3709
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@136
    move-result v9

    #@137
    if-nez v9, :cond_d

    #@139
    .line 3710
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z

    #@13c
    move-result v9

    #@13d
    if-nez v9, :cond_b

    #@13f
    .line 3711
    invoke-static {v5}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@142
    move-result-object v5

    #@143
    .line 3713
    :cond_b
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    .line 3707
    :goto_a
    add-int/lit8 v6, v6, 0x1

    #@148
    goto :goto_9

    #@149
    .line 3685
    .end local v0    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_c
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@14b
    goto :goto_8

    #@14c
    .line 3715
    .restart local v0    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "key":Ljava/lang/String;
    :cond_d
    const-string/jumbo v9, "NULL"

    #@14f
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@152
    goto :goto_a

    #@153
    .line 3719
    .end local v3    # "key":Ljava/lang/String;
    :cond_e
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@155
    invoke-virtual {p0, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z

    #@158
    move-result v6

    #@159
    if-eqz v6, :cond_f

    #@15b
    .line 3720
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    #@15e
    .line 3723
    :cond_f
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@160
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@163
    .line 3611
    return-void

    #@164
    .line 3667
    .end local v0    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    #@165
    .local v2, "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_5

    #@167
    .line 3658
    .end local v2    # "ignore":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    #@168
    .restart local v2    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_4

    #@16a
    .line 3649
    .end local v2    # "ignore":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    #@16b
    .restart local v2    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_2
.end method

.method private readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1911
    new-instance v7, Ljava/util/HashMap;

    #@2
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1912
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@6
    .line 1913
    .local v5, "reader":Ljava/io/BufferedReader;
    sget-boolean v10, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@8
    if-eqz v10, :cond_0

    #@a
    new-instance v10, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v11, "readNetworkVariablesFromSupplicantFile key="

    #@12
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v10

    #@16
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v10

    #@1a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v10

    #@1e
    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@21
    .line 1916
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    #@23
    new-instance v10, Ljava/io/FileReader;

    #@25
    const-string/jumbo v11, "/data/misc/wifi/wpa_supplicant.conf"

    #@28
    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 1917
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    #@2f
    .line 1918
    .local v2, "found":Z
    const/4 v4, 0x0

    #@30
    .line 1919
    .local v4, "networkSsid":Ljava/lang/String;
    const/4 v9, 0x0

    #@31
    .line 1921
    .local v9, "value":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .end local v4    # "networkSsid":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_6

    #@37
    .line 1923
    const-string/jumbo v10, "[ \\t]*network=\\{"

    #@3a
    invoke-virtual {v3, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@3d
    move-result v10

    #@3e
    if-eqz v10, :cond_4

    #@40
    .line 1924
    const/4 v2, 0x1

    #@41
    .line 1925
    const/4 v4, 0x0

    #@42
    .line 1926
    .restart local v4    # "networkSsid":Ljava/lang/String;
    const/4 v9, 0x0

    #@43
    .line 1933
    .end local v4    # "networkSsid":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    #@45
    .line 1934
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    .line 1935
    .local v8, "trimmedLine":Ljava/lang/String;
    const-string/jumbo v10, "ssid="

    #@4c
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4f
    move-result v10

    #@50
    if-eqz v10, :cond_5

    #@52
    .line 1936
    const/4 v10, 0x5

    #@53
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 1941
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    #@59
    if-eqz v9, :cond_3

    #@5b
    .line 1942
    invoke-interface {v7, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 1921
    .end local v8    # "trimmedLine":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    goto :goto_0

    #@63
    .line 1927
    :cond_4
    const-string/jumbo v10, "[ \\t]*\\}"

    #@66
    invoke-virtual {v3, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@69
    move-result v10

    #@6a
    if-eqz v10, :cond_1

    #@6c
    .line 1928
    const/4 v2, 0x0

    #@6d
    .line 1929
    const/4 v4, 0x0

    #@6e
    .line 1930
    .restart local v4    # "networkSsid":Ljava/lang/String;
    const/4 v9, 0x0

    #@6f
    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_1

    #@70
    .line 1937
    .end local v4    # "networkSsid":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v8    # "trimmedLine":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v10

    #@79
    const-string/jumbo v11, "="

    #@7c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v10

    #@80
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@87
    move-result v10

    #@88
    if-eqz v10, :cond_2

    #@8a
    .line 1938
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8d
    move-result v10

    #@8e
    add-int/lit8 v10, v10, 0x1

    #@90
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@93
    move-result-object v9

    #@94
    .local v9, "value":Ljava/lang/String;
    goto :goto_2

    #@95
    .line 1952
    .end local v8    # "trimmedLine":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    #@97
    .line 1953
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@9a
    :cond_7
    :goto_3
    move-object v5, v6

    #@9b
    .line 1960
    .end local v2    # "found":Z
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_8
    :goto_4
    return-object v7

    #@9c
    .line 1955
    .restart local v2    # "found":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    #@9d
    .local v1, "e":Ljava/io/IOException;
    goto :goto_3

    #@9e
    .line 1948
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "found":Z
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    #@9f
    .line 1949
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_3
    sget-boolean v10, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@a1
    if-eqz v10, :cond_9

    #@a3
    new-instance v10, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v11, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    #@ab
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v10

    #@af
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v10

    #@b7
    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ba
    .line 1952
    :cond_9
    if-eqz v5, :cond_8

    #@bc
    .line 1953
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@bf
    goto :goto_4

    #@c0
    .line 1955
    :catch_2
    move-exception v1

    #@c1
    goto :goto_4

    #@c2
    .line 1946
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    #@c3
    .line 1947
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_5
    sget-boolean v10, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@c5
    if-eqz v10, :cond_a

    #@c7
    new-instance v10, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v11, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    #@cf
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v10

    #@d3
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v10

    #@d7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v10

    #@db
    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@de
    .line 1952
    :cond_a
    if-eqz v5, :cond_8

    #@e0
    .line 1953
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@e3
    goto :goto_4

    #@e4
    .line 1955
    :catch_4
    move-exception v1

    #@e5
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    #@e6
    .line 1950
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    #@e7
    .line 1952
    :goto_7
    if-eqz v5, :cond_b

    #@e9
    .line 1953
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@ec
    .line 1950
    :cond_b
    :goto_8
    throw v10

    #@ed
    .line 1955
    :catch_5
    move-exception v1

    #@ee
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    #@ef
    .line 1950
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "found":Z
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    #@f0
    move-object v5, v6

    #@f1
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    #@f2
    .line 1946
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    #@f3
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    #@f4
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    #@f5
    .line 1948
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    #@f6
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    #@f7
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)Z
    .locals 6
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1420
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@7
    move-result-object v0

    #@8
    .line 1421
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_5

    #@a
    .line 1422
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1423
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "removeNetwork "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " key="

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 1424
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 1423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 1424
    const-string/jumbo v3, " config.id="

    #@34
    .line 1423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 1424
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3a
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 1423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@49
    .line 1428
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_1

    #@55
    .line 1429
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@57
    .line 1433
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@59
    if-eqz v2, :cond_2

    #@5b
    .line 1434
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@5d
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@60
    .line 1437
    :cond_2
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@62
    if-nez v2, :cond_3

    #@64
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@66
    if-eqz v2, :cond_6

    #@68
    .line 1439
    :cond_3
    :goto_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@6a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6d
    move-result v2

    #@6e
    if-nez v2, :cond_4

    #@70
    .line 1441
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@72
    if-eqz v2, :cond_7

    #@74
    .line 1442
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@76
    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    #@79
    move-result-object v1

    #@7a
    .line 1443
    .local v1, "csum":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    #@7c
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7f
    .line 1444
    new-instance v2, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v3, "removeNetwork "

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    .line 1445
    const-string/jumbo v3, " key="

    #@96
    .line 1444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    .line 1445
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    .line 1444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    .line 1446
    const-string/jumbo v3, " config.id="

    #@a5
    .line 1444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    .line 1446
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@ab
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    .line 1444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    .line 1447
    const-string/jumbo v3, "  crc="

    #@b6
    .line 1444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@c5
    .line 1456
    .end local v1    # "csum":Ljava/lang/Long;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@c7
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    #@ca
    .line 1457
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    #@cc
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    .line 1459
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    #@d6
    .line 1460
    invoke-direct {p0, v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@d9
    .line 1461
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@dc
    .line 1463
    :cond_5
    return v5

    #@dd
    .line 1438
    :cond_6
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@df
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    #@e2
    move-result v2

    #@e3
    .line 1437
    if-eqz v2, :cond_4

    #@e5
    goto :goto_0

    #@e6
    .line 1449
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v3, "removeNetwork "

    #@ee
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v2

    #@f2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f5
    move-result-object v3

    #@f6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v2

    #@fa
    .line 1450
    const-string/jumbo v3, " key="

    #@fd
    .line 1449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v2

    #@101
    .line 1450
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@104
    move-result-object v3

    #@105
    .line 1449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v2

    #@109
    .line 1451
    const-string/jumbo v3, " config.id="

    #@10c
    .line 1449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v2

    #@110
    .line 1451
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@112
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@115
    move-result-object v3

    #@116
    .line 1449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v2

    #@11a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v2

    #@11e
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@121
    goto :goto_1
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x22

    #@2
    const/4 v2, 0x1

    #@3
    .line 3728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 3729
    .local v0, "length":I
    if-le v0, v2, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v1

    #@e
    if-ne v1, v3, :cond_0

    #@10
    .line 3730
    add-int/lit8 v1, v0, -0x1

    #@12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    if-ne v1, v3, :cond_0

    #@18
    .line 3731
    add-int/lit8 v1, v0, -0x1

    #@1a
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 3733
    :cond_0
    return-object p0
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    #@0
    .prologue
    .line 1781
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1782
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1783
    const-string/jumbo v1, "multipleChanges"

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@14
    .line 1784
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@16
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@18
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1b
    .line 1780
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 1769
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1770
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1771
    const-string/jumbo v1, "multipleChanges"

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@14
    .line 1772
    const-string/jumbo v1, "wifiConfiguration"

    #@17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 1773
    const-string/jumbo v1, "changeReason"

    #@1d
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@20
    .line 1774
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@22
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@24
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@27
    .line 1768
    return-void
.end method

.method private setNetworkPriorityNative(II)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "priority"    # I

    #@0
    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    .line 952
    const-string/jumbo v1, "priority"

    #@5
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 951
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private setSSIDNative(ILjava/lang/String;)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    const-string/jumbo v1, "ssid"

    #@5
    .line 957
    invoke-static {p2}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 956
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private static toMatchString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 3328
    .local p0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3329
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    .line 3330
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    const/16 v3, 0x20

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@25
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, "->"

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    goto :goto_0

    #@3c
    .line 3332
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    return-object v3
.end method

.method private updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3313
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@3
    move-result-object v1

    #@4
    .line 3315
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-nez p2, :cond_1

    #@6
    .line 3317
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@8
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    #@b
    move-result-object v0

    #@c
    .line 3318
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    #@e
    .line 3319
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p1, v2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    #@15
    .line 3321
    :cond_0
    return-void

    #@16
    .line 3324
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@18
    invoke-virtual {v2, v1, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    #@1b
    .line 3311
    return-void
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 5

    #@0
    .prologue
    .line 2555
    new-instance v2, Landroid/util/SparseArray;

    #@2
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 2556
    .local v2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 2557
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1d
    if-nez v3, :cond_0

    #@1f
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@21
    const/16 v4, 0xc8

    #@23
    if-eq v3, v4, :cond_0

    #@25
    .line 2558
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    #@28
    move-result v3

    #@29
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@30
    goto :goto_0

    #@31
    .line 2562
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    #@33
    invoke-super {p0, v3, v2}, Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@36
    .line 2554
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 6
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 3510
    const/4 v1, 0x0

    #@1
    .line 3511
    .local v1, "ipChanged":Z
    const/4 v3, 0x0

    #@2
    .line 3513
    .local v3, "proxyChanged":Z
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 3514
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "writeIpAndProxyConfigurationsOnChange: "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, " -> "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 3515
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@21
    .line 3514
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 3515
    const-string/jumbo v5, " path: "

    #@28
    .line 3514
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 3515
    sget-object v5, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    #@2e
    .line 3514
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@39
    .line 3519
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@44
    move-result v5

    #@45
    aget v4, v4, v5

    #@47
    packed-switch v4, :pswitch_data_0

    #@4a
    .line 3538
    const-string/jumbo v4, "Ignore invalid ip assignment during write"

    #@4d
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@50
    .line 3542
    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I

    #@53
    move-result-object v4

    #@54
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@5b
    move-result v5

    #@5c
    aget v4, v4, v5

    #@5e
    packed-switch v4, :pswitch_data_1

    #@61
    .line 3563
    const-string/jumbo v4, "Ignore invalid proxy configuration during write"

    #@64
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@67
    .line 3567
    :cond_2
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_3

    #@69
    .line 3568
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    #@70
    .line 3569
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    #@77
    .line 3570
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v5, "IP config changed SSID = "

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@90
    .line 3571
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@93
    move-result-object v4

    #@94
    if-eqz v4, :cond_3

    #@96
    .line 3572
    new-instance v4, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v5, " static configuration: "

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    .line 3573
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@a5
    move-result-object v5

    #@a6
    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    #@a9
    move-result-object v5

    #@aa
    .line 3572
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v4

    #@ae
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v4

    #@b2
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@b5
    .line 3577
    :cond_3
    if-eqz v3, :cond_4

    #@b7
    .line 3578
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@ba
    move-result-object v4

    #@bb
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    #@be
    .line 3579
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@c1
    move-result-object v4

    #@c2
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@c5
    .line 3580
    new-instance v4, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v5, "proxy changed SSID = "

    #@cd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v4

    #@d1
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v4

    #@db
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@de
    .line 3581
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@e1
    move-result-object v4

    #@e2
    if-eqz v4, :cond_4

    #@e4
    .line 3582
    new-instance v4, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v5, " proxyProperties: "

    #@ec
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@f3
    move-result-object v5

    #@f4
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    #@f7
    move-result-object v5

    #@f8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v4

    #@fc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v4

    #@100
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@103
    .line 3586
    :cond_4
    if-nez v1, :cond_5

    #@105
    if-eqz v3, :cond_6

    #@107
    .line 3587
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    #@10a
    .line 3589
    const/4 v4, 0x2

    #@10b
    .line 3588
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@10e
    .line 3591
    :cond_6
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    #@110
    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZ)V

    #@113
    return-object v4

    #@114
    .line 3521
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@117
    move-result-object v4

    #@118
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@11b
    move-result-object v5

    #@11c
    if-eq v4, v5, :cond_7

    #@11e
    .line 3522
    const/4 v1, 0x1

    #@11f
    goto/16 :goto_0

    #@121
    .line 3525
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@124
    move-result-object v4

    #@125
    .line 3526
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@128
    move-result-object v5

    #@129
    .line 3524
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12c
    move-result v4

    #@12d
    if-eqz v4, :cond_8

    #@12f
    const/4 v1, 0x0

    #@130
    goto/16 :goto_0

    #@132
    :cond_8
    const/4 v1, 0x1

    #@133
    goto/16 :goto_0

    #@135
    .line 3530
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@138
    move-result-object v4

    #@139
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@13c
    move-result-object v5

    #@13d
    if-eq v4, v5, :cond_1

    #@13f
    .line 3531
    const/4 v1, 0x1

    #@140
    goto/16 :goto_0

    #@142
    .line 3545
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@145
    move-result-object v2

    #@146
    .line 3546
    .local v2, "newHttpProxy":Landroid/net/ProxyInfo;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@149
    move-result-object v0

    #@14a
    .line 3548
    .local v0, "currentHttpProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_a

    #@14c
    .line 3549
    invoke-virtual {v2, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    #@14f
    move-result v4

    #@150
    if-eqz v4, :cond_9

    #@152
    const/4 v3, 0x0

    #@153
    goto/16 :goto_1

    #@155
    :cond_9
    const/4 v3, 0x1

    #@156
    goto/16 :goto_1

    #@158
    .line 3551
    :cond_a
    if-eqz v0, :cond_b

    #@15a
    const/4 v3, 0x1

    #@15b
    goto/16 :goto_1

    #@15d
    :cond_b
    const/4 v3, 0x0

    #@15e
    goto/16 :goto_1

    #@160
    .line 3555
    .end local v0    # "currentHttpProxy":Landroid/net/ProxyInfo;
    .end local v2    # "newHttpProxy":Landroid/net/ProxyInfo;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@163
    move-result-object v4

    #@164
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@167
    move-result-object v5

    #@168
    if-eq v4, v5, :cond_2

    #@16a
    .line 3556
    const/4 v3, 0x1

    #@16b
    goto/16 :goto_1

    #@16d
    .line 3519
    nop

    #@16e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    #@178
    .line 3542
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1272
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "addOrUpdateNetwork id="

    #@7
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@9
    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@c
    .line 1274
    :cond_0
    const-string/jumbo v3, "WifiConfigStore"

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, " key="

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    const-string/jumbo v5, " netId="

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2c
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 1275
    const-string/jumbo v5, " uid="

    #@37
    .line 1274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 1275
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@3d
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 1274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 1276
    const-string/jumbo v5, "/"

    #@48
    .line 1274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    .line 1276
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@4e
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 1274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 1278
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_1

    #@63
    .line 1280
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@65
    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    #@68
    move-result-object v1

    #@69
    .line 1281
    .local v1, "csum":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@6f
    .line 1284
    .end local v1    # "csum":Ljava/lang/Long;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@72
    move-result-object v2

    #@73
    .line 1285
    .local v2, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@76
    move-result v3

    #@77
    const/4 v4, -0x1

    #@78
    if-eq v3, v4, :cond_2

    #@7a
    .line 1286
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7c
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@7f
    move-result v4

    #@80
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@83
    move-result-object v0

    #@84
    .line 1287
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    #@86
    .line 1289
    iget-boolean v3, v2, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    #@88
    if-eqz v3, :cond_3

    #@8a
    const/4 v3, 0x0

    #@8b
    .line 1288
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@8e
    .line 1294
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@91
    move-result v3

    #@92
    return v3

    #@93
    .line 1290
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v3, 0x2

    #@94
    goto :goto_0
.end method

.method blackListBssid(Ljava/lang/String;)V
    .locals 7
    .param p1, "BSSID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4153
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 4155
    const-string/jumbo v5, "WifiConfigStore"

    #@b
    const-string/jumbo v6, "No blacklist allowed without epno enabled"

    #@e
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 4157
    return-void

    #@12
    .line 4159
    :cond_0
    if-nez p1, :cond_1

    #@14
    .line 4160
    return-void

    #@15
    .line 4161
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@17
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a
    .line 4163
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1c
    invoke-virtual {v5, p1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    #@1f
    .line 4165
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@21
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    #@24
    move-result v5

    #@25
    new-array v4, v5, [Ljava/lang/String;

    #@27
    .line 4166
    .local v4, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    #@28
    .line 4167
    .local v2, "count":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@2a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v1

    #@2e
    .local v1, "bssid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_2

    #@34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Ljava/lang/String;

    #@3a
    .line 4168
    .local v0, "bssid":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    #@3c
    .end local v2    # "count":I
    .local v3, "count":I
    aput-object v0, v4, v2

    #@3e
    move v2, v3

    #@3f
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_0

    #@40
    .line 4170
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@42
    invoke-static {v4}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    #@45
    .line 4152
    return-void
.end method

.method canModifyNetwork(IIZ)Z
    .locals 12
    .param p1, "uid"    # I
    .param p2, "networkId"    # I
    .param p3, "onlyAnnotate"    # Z

    #@0
    .prologue
    const/4 v11, -0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 4000
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@5
    invoke-virtual {v9, p2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@8
    move-result-object v0

    #@9
    .line 4002
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@b
    .line 4003
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v9, "canModifyNetwork: cannot find config networkId "

    #@13
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@22
    .line 4004
    return v8

    #@23
    .line 4008
    :cond_0
    const-class v9, Landroid/app/admin/DevicePolicyManagerInternal;

    #@25
    .line 4007
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    #@2b
    .line 4010
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_1

    #@2d
    invoke-virtual {v1, p1, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    #@30
    move-result v5

    #@31
    .line 4013
    :goto_0
    if-eqz v5, :cond_2

    #@33
    .line 4015
    return v7

    #@34
    .line 4010
    :cond_1
    const/4 v5, 0x0

    #@35
    .local v5, "isUidDeviceOwner":Z
    goto :goto_0

    #@36
    .line 4018
    .end local v5    # "isUidDeviceOwner":Z
    :cond_2
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@38
    if-ne v9, p1, :cond_4

    #@3a
    const/4 v3, 0x1

    #@3b
    .line 4020
    .local v3, "isCreator":Z
    :goto_1
    if-eqz p3, :cond_5

    #@3d
    .line 4021
    if-nez v3, :cond_3

    #@3f
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    #@42
    move-result v7

    #@43
    :cond_3
    return v7

    #@44
    .line 4018
    .end local v3    # "isCreator":Z
    :cond_4
    const/4 v3, 0x0

    #@45
    .restart local v3    # "isCreator":Z
    goto :goto_1

    #@46
    .line 4026
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@48
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4b
    move-result-object v9

    #@4c
    const-string/jumbo v10, "android.software.device_admin"

    #@4f
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@52
    move-result v9

    #@53
    if-eqz v9, :cond_6

    #@55
    .line 4027
    if-nez v1, :cond_6

    #@57
    .line 4028
    return v8

    #@58
    .line 4033
    :cond_6
    if-eqz v1, :cond_8

    #@5a
    .line 4034
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@5c
    .line 4033
    invoke-virtual {v1, v9, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    #@5f
    move-result v2

    #@60
    .line 4035
    :goto_2
    if-nez v2, :cond_9

    #@62
    .line 4036
    if-nez v3, :cond_7

    #@64
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    #@67
    move-result v7

    #@68
    :cond_7
    return v7

    #@69
    .line 4033
    :cond_8
    const/4 v2, 0x0

    #@6a
    .local v2, "isConfigEligibleForLockdown":Z
    goto :goto_2

    #@6b
    .line 4039
    .end local v2    # "isConfigEligibleForLockdown":Z
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@6d
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@70
    move-result-object v6

    #@71
    .line 4041
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v7, "wifi_device_owner_configs_lockdown"

    #@74
    .line 4040
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@77
    move-result v7

    #@78
    if-eqz v7, :cond_a

    #@7a
    const/4 v4, 0x1

    #@7b
    .line 4042
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_3
    if-nez v4, :cond_b

    #@7d
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    #@80
    move-result v7

    #@81
    :goto_4
    return v7

    #@82
    .line 4040
    .end local v4    # "isLockdownFeatureEnabled":Z
    :cond_a
    const/4 v4, 0x0

    #@83
    .restart local v4    # "isLockdownFeatureEnabled":Z
    goto :goto_3

    #@84
    :cond_b
    move v7, v8

    #@85
    .line 4042
    goto :goto_4
.end method

.method canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "onlyAnnotate"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4049
    if-nez p2, :cond_0

    #@3
    .line 4050
    const-string/jumbo v2, "canModifyNetowrk recieved null configuration"

    #@6
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@9
    .line 4051
    return v4

    #@a
    .line 4056
    :cond_0
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@c
    const/4 v3, -0x1

    #@d
    if-eq v2, v3, :cond_1

    #@f
    .line 4057
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@11
    .line 4067
    .local v0, "netid":I
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 4059
    .end local v0    # "netid":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@18
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@1f
    move-result-object v1

    #@20
    .line 4060
    .local v1, "test":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_2

    #@22
    .line 4061
    return v4

    #@23
    .line 4063
    :cond_2
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    .restart local v0    # "netid":I
    goto :goto_0
.end method

.method checkConfigOverridePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4072
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v2

    #@5
    .line 4073
    const-string/jumbo v3, "android.permission.OVERRIDE_WIFI_CONFIG"

    #@8
    .line 4072
    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :cond_0
    return v1

    #@10
    .line 4075
    :catch_0
    move-exception v0

    #@11
    .line 4076
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method clearBssidBlacklist()V
    .locals 2

    #@0
    .prologue
    .line 4141
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 4143
    const-string/jumbo v0, "WifiConfigStore"

    #@b
    const-string/jumbo v1, "No blacklist allowed without epno enabled"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 4145
    return-void

    #@12
    .line 4147
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@19
    .line 4148
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    #@1e
    .line 4149
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@20
    const/4 v0, 0x0

    #@21
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    #@24
    .line 4140
    return-void
.end method

.method disableAllNetworks()V
    .locals 5

    #@0
    .prologue
    .line 1561
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "disableAllNetworks"

    #@7
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@a
    .line 1562
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 1563
    .local v2, "networkDisabled":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@d
    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->getEnabledNetworks()Ljava/util/Collection;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "enabled$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@21
    .line 1564
    .local v0, "enabled":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@23
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 1565
    const/4 v2, 0x1

    #@2c
    .line 1566
    const/4 v3, 0x1

    #@2d
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@2f
    goto :goto_0

    #@30
    .line 1568
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "Disable network failed on "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@49
    goto :goto_0

    #@4a
    .line 1572
    .end local v0    # "enabled":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-eqz v2, :cond_3

    #@4c
    .line 1573
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    #@4f
    .line 1560
    :cond_3
    return-void
.end method

.method disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1214
    if-nez p1, :cond_0

    #@3
    .line 1215
    return-object v1

    #@4
    .line 1218
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getEphemeral(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@9
    move-result-object v0

    #@a
    .line 1220
    .local v0, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@c
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Forget ephemeral SSID "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, " num="

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@28
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@2b
    move-result v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@37
    .line 1223
    if-eqz v0, :cond_1

    #@39
    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "Found ephemeral config in disableEphemeralNetwork: "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@52
    .line 1229
    :cond_1
    const/4 v1, 0x1

    #@53
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@56
    .line 1231
    return-object v0
.end method

.method disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1582
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    #@4
    move-result v0

    #@5
    .line 1583
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    #@7
    .line 1584
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->registerNetworkDisabled(I)V

    #@c
    .line 1586
    :cond_0
    return v0
.end method

.method disableNetwork(II)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    const/4 v4, 0x1

    #@2
    .line 1596
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    const-string/jumbo v3, "disableNetwork"

    #@9
    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@c
    .line 1597
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@e
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    #@11
    move-result v2

    #@12
    .line 1598
    .local v2, "ret":Z
    const/4 v1, 0x0

    #@13
    .line 1599
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@15
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@18
    move-result-object v0

    #@19
    .line 1601
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 1602
    if-eqz v0, :cond_1

    #@1f
    .line 1603
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "disableNetwork netId="

    #@27
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 1604
    const-string/jumbo v5, " SSID="

    #@36
    .line 1603
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 1604
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3c
    .line 1603
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 1605
    const-string/jumbo v5, " disabled="

    #@43
    .line 1603
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    .line 1605
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@49
    if-ne v3, v4, :cond_5

    #@4b
    move v3, v4

    #@4c
    .line 1603
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 1606
    const-string/jumbo v5, " reason="

    #@53
    .line 1603
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 1606
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@59
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 1603
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@68
    .line 1612
    :cond_1
    if-eqz v0, :cond_3

    #@6a
    .line 1613
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@6c
    if-eq v3, v4, :cond_2

    #@6e
    .line 1614
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@70
    if-eq v3, v6, :cond_2

    #@72
    .line 1615
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@74
    .line 1616
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@76
    .line 1617
    move-object v1, v0

    #@77
    .line 1619
    .end local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-ne p2, v6, :cond_3

    #@79
    .line 1622
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@7b
    .line 1623
    const/16 v3, 0xa1

    #@7d
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@7f
    .line 1626
    :cond_3
    if-eqz v1, :cond_4

    #@81
    .line 1628
    const/4 v3, 0x2

    #@82
    .line 1627
    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@85
    .line 1630
    :cond_4
    return v2

    #@86
    .line 1605
    .restart local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    const/4 v3, 0x0

    #@87
    goto :goto_0
.end method

.method driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    #@0
    .prologue
    .line 1120
    if-eqz p1, :cond_0

    #@2
    .line 1121
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1122
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    #@f
    move-result v2

    #@10
    .line 1120
    if-eqz v2, :cond_0

    #@12
    .line 1123
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@18
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1b
    move-result v3

    #@1c
    add-int/lit8 v3, v3, 0x3

    #@1e
    if-le v2, v3, :cond_0

    #@20
    .line 1124
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@23
    move-result v2

    #@24
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@27
    move-result-object v0

    #@28
    .line 1125
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@2a
    .line 1126
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@2d
    move-result-object v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 1127
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    #@3b
    move-result-object v1

    #@3c
    .line 1128
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    #@3e
    .line 1129
    const/16 v2, 0x11

    #@40
    invoke-virtual {v1, v2}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    #@43
    .line 1119
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3815
    const-string/jumbo v4, "Dump of WifiConfigStore"

    #@3
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 3816
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "mLastPriority "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 3817
    const-string/jumbo v4, "Configured networks"

    #@22
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 3818
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getAllConfiguredNetworks()Ljava/util/List;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    .local v1, "conf$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@39
    .line 3819
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3c
    goto :goto_0

    #@3d
    .line 3821
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@40
    .line 3822
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    #@42
    if-eqz v4, :cond_1

    #@44
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    #@46
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    #@49
    move-result v4

    #@4a
    if-lez v4, :cond_1

    #@4c
    .line 3823
    const-string/jumbo v4, "LostConfigs: "

    #@4f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 3824
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    #@54
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v3

    #@58
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_1

    #@5e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Ljava/lang/String;

    #@64
    .line 3825
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    goto :goto_1

    #@68
    .line 3828
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@6a
    if-eqz v4, :cond_2

    #@6c
    .line 3829
    const-string/jumbo v4, "WifiConfigStore - Log Begin ----"

    #@6f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 3830
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@74
    invoke-virtual {v4, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@77
    .line 3831
    const-string/jumbo v4, "WifiConfigStore - Log End ----"

    #@7a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 3833
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@7f
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isConfigured()Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_3

    #@85
    .line 3834
    const-string/jumbo v4, "Begin dump of ANQP Cache"

    #@88
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 3835
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@8d
    invoke-virtual {v4, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->dump(Ljava/io/PrintWriter;)V

    #@90
    .line 3836
    const-string/jumbo v4, "End dump of ANQP Cache"

    #@93
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@96
    .line 3814
    :cond_3
    return-void
.end method

.method enableAllNetworks()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x0

    #@2
    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v4

    #@6
    .line 906
    .local v4, "now":J
    const/4 v2, 0x0

    #@7
    .line 908
    .local v2, "networkEnabledStateChanged":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@9
    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_5

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1d
    .line 910
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@1f
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@21
    const/4 v6, 0x1

    #@22
    if-ne v3, v6, :cond_0

    #@24
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@26
    if-nez v3, :cond_0

    #@28
    .line 911
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@2a
    .line 912
    const/16 v6, 0x80

    #@2c
    .line 911
    if-gt v3, v6, :cond_0

    #@2e
    .line 916
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@30
    if-eq v3, v11, :cond_1

    #@32
    .line 917
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@34
    const/4 v6, 0x4

    #@35
    if-ne v3, v6, :cond_3

    #@37
    .line 919
    :cond_1
    :goto_1
    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@39
    const-wide/16 v8, 0x0

    #@3b
    cmp-long v3, v6, v8

    #@3d
    if-eqz v3, :cond_2

    #@3f
    .line 920
    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@41
    cmp-long v3, v4, v6

    #@43
    if-lez v3, :cond_2

    #@45
    .line 921
    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@47
    sub-long v6, v4, v6

    #@49
    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    #@4b
    int-to-long v8, v3

    #@4c
    cmp-long v3, v6, v8

    #@4e
    if-ltz v3, :cond_0

    #@50
    .line 926
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@52
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@54
    invoke-virtual {v3, v6, v10}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 927
    const/4 v2, 0x1

    #@5b
    .line 928
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@5d
    .line 931
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@5f
    .line 932
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@61
    .line 933
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@63
    .line 936
    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@66
    goto :goto_0

    #@67
    .line 918
    :cond_3
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@69
    const/4 v6, 0x3

    #@6a
    if-ne v3, v6, :cond_2

    #@6c
    goto :goto_1

    #@6d
    .line 938
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v6, "Enable network failed on "

    #@75
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@7b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@86
    goto :goto_0

    #@87
    .line 944
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    if-eqz v2, :cond_6

    #@89
    .line 945
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@8b
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@8e
    .line 946
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    #@91
    .line 904
    :cond_6
    return-void
.end method

.method enableNetwork(IZI)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 1527
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    #@3
    move-result v1

    #@4
    .line 1528
    .local v1, "ret":Z
    if-eqz p2, :cond_2

    #@6
    .line 1529
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "enableNetwork(disableOthers=true, uid="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, ") "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@28
    .line 1530
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@2f
    .line 1531
    const/4 v2, 0x0

    #@30
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@33
    .line 1532
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    #@36
    .line 1545
    :cond_1
    :goto_0
    return v1

    #@37
    .line 1534
    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@39
    if-eqz v2, :cond_3

    #@3b
    const-string/jumbo v2, "enableNetwork(disableOthers=false) "

    #@3e
    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@41
    .line 1536
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@43
    monitor-enter v3

    #@44
    .line 1537
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@46
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result-object v0

    #@4a
    .local v0, "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v3

    #@4b
    .line 1540
    if-eqz v0, :cond_1

    #@4d
    .line 1542
    const/4 v2, 0x2

    #@4e
    .line 1541
    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@51
    goto :goto_0

    #@52
    .line 1536
    .end local v0    # "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    #@53
    monitor-exit v3

    #@54
    throw v2
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    #@0
    .prologue
    .line 1549
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    #@5
    move-result v1

    #@6
    .line 1551
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@8
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@b
    move-result-object v0

    #@c
    .line 1552
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@e
    const/4 v2, 0x2

    #@f
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@11
    .line 1554
    :cond_0
    if-eqz p2, :cond_1

    #@13
    .line 1555
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    #@16
    .line 1557
    :cond_1
    return v1
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 690
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@7
    .line 691
    if-lez p1, :cond_0

    #@9
    .line 692
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@b
    .line 693
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@d
    .line 697
    :goto_0
    if-le p1, v1, :cond_1

    #@f
    .line 698
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    #@11
    .line 689
    :goto_1
    return-void

    #@12
    .line 695
    :cond_0
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@14
    goto :goto_0

    #@15
    .line 700
    :cond_1
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    #@17
    goto :goto_1
.end method

.method forgetNetwork(I)Z
    .locals 5
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 1241
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    const-string/jumbo v2, "forgetNetwork"

    #@9
    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@c
    .line 1243
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@e
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@11
    move-result-object v0

    #@12
    .line 1244
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    #@15
    move-result v1

    #@16
    .line 1245
    .local v1, "remove":Z
    if-nez v1, :cond_1

    #@18
    .line 1247
    return v3

    #@19
    .line 1249
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1b
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_3

    #@21
    .line 1250
    if-eqz v0, :cond_2

    #@23
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 1251
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2b
    invoke-virtual {p0, v2, v4}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@2e
    .line 1253
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@30
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@33
    .line 1254
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@36
    .line 1255
    return v3

    #@37
    .line 1257
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "Failed to remove network "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@4e
    .line 1258
    const/4 v2, 0x0

    #@4f
    return v2
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3841
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 777
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getConfiguredNetworksSize()I
    .locals 1

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLastSelectedConfiguration()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 794
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    #@3
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v5

    #@7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/util/Map$Entry;

    #@17
    .line 795
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Ljava/lang/Integer;

    #@1d
    .line 796
    .local v4, "netId":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    #@23
    .line 797
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v5

    #@27
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@2a
    move-result-object v1

    #@2b
    .line 798
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    #@2d
    .line 800
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@2f
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    #@32
    move-result-object v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 801
    return-object v1

    #@36
    .line 805
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "netId":Ljava/lang/Integer;
    :cond_1
    return-object v6
.end method

.method getMaxDhcpRetries()I
    .locals 3

    #@0
    .prologue
    .line 4135
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 4136
    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    #@9
    .line 4137
    const/16 v2, 0x9

    #@b
    .line 4135
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 785
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getCredentialsBySsidMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 786
    .local v0, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method getProxyProperties(I)Landroid/net/ProxyInfo;
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1736
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@6
    move-result-object v0

    #@7
    .line 1737
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@9
    .line 1738
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1740
    :cond_0
    return-object v2
.end method

.method getRecentConfiguredNetworks(IZ)Ljava/util/List;
    .locals 6
    .param p1, "milli"    # I
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 822
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 824
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_3

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 825
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@1d
    const/16 v5, 0xc8

    #@1f
    if-eq v4, v5, :cond_0

    #@21
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@23
    if-nez v4, :cond_0

    #@25
    .line 833
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@28
    move-result-object v0

    #@29
    .line 834
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v0, :cond_0

    #@2b
    .line 837
    int-to-long v4, p1

    #@2c
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    #@33
    .line 838
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@35
    if-eqz v4, :cond_0

    #@37
    .line 841
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@39
    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@3b
    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@3d
    if-ne v4, v5, :cond_1

    #@3f
    .line 842
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@41
    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@43
    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@45
    if-eq v4, v5, :cond_0

    #@47
    .line 845
    :cond_1
    if-eqz p2, :cond_2

    #@49
    .line 846
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    #@4b
    invoke-direct {v4, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@4e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    goto :goto_0

    #@52
    .line 848
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@55
    goto :goto_0

    #@56
    .line 851
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-object v3
.end method

.method public getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3032
    if-nez p1, :cond_0

    #@3
    return-object v1

    #@4
    .line 3033
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    #@6
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    #@12
    .line 3034
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_1

    #@14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@16
    const/4 v2, -0x1

    #@17
    if-eq v1, v2, :cond_1

    #@19
    .line 3035
    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    #@1b
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@1e
    .line 3036
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    #@20
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 3038
    :cond_1
    return-object v0
.end method

.method getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1701
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@6
    move-result-object v0

    #@7
    .line 1702
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@9
    .line 1703
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1705
    :cond_0
    return-object v2
.end method

.method getWhiteListedSsids(Landroid/net/wifi/WifiConfiguration;)[Ljava/lang/String;
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/16 v10, 0x22

    #@4
    const/4 v9, 0x0

    #@5
    const/4 v8, 0x0

    #@6
    .line 1331
    const/4 v6, 0x0

    #@7
    .line 1334
    .local v6, "num_ssids":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@c
    move-result v7

    #@d
    if-nez v7, :cond_0

    #@f
    .line 1335
    return-object v8

    #@10
    .line 1336
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@12
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 1337
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    #@17
    .line 1338
    return-object v8

    #@18
    .line 1339
    :cond_1
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@1a
    if-nez v7, :cond_2

    #@1c
    .line 1340
    return-object v8

    #@1d
    .line 1342
    :cond_2
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1f
    if-eqz v7, :cond_3

    #@21
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@23
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_4

    #@29
    .line 1343
    :cond_3
    return-object v8

    #@2a
    .line 1345
    :cond_4
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@2f
    move-result-object v7

    #@30
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "configKey$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v7

    #@38
    if-eqz v7, :cond_7

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Ljava/lang/String;

    #@40
    .line 1348
    .local v0, "configKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@43
    move-result-object v3

    #@44
    .line 1349
    .local v3, "link":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_5

    #@46
    .line 1353
    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@48
    if-nez v7, :cond_5

    #@4a
    .line 1357
    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@4c
    if-nez v7, :cond_5

    #@4e
    .line 1361
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@50
    if-eqz v7, :cond_5

    #@52
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@54
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@57
    move-result v7

    #@58
    if-nez v7, :cond_5

    #@5a
    .line 1365
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@5c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@5f
    move-result v2

    #@60
    .line 1366
    .local v2, "length":I
    if-le v2, v12, :cond_6

    #@62
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@64
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    #@67
    move-result v7

    #@68
    if-ne v7, v10, :cond_6

    #@6a
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@6c
    add-int/lit8 v8, v2, -0x1

    #@6e
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    #@71
    move-result v7

    #@72
    if-ne v7, v10, :cond_6

    #@74
    .line 1367
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@76
    add-int/lit8 v8, v2, -0x1

    #@78
    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    .line 1372
    .local v5, "nonQuoteSSID":Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7f
    goto :goto_0

    #@80
    .line 1369
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_6
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@82
    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    goto :goto_1

    #@83
    .line 1375
    .end local v0    # "configKey":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@86
    move-result v7

    #@87
    if-eqz v7, :cond_8

    #@89
    .line 1376
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@8b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@8e
    move-result v2

    #@8f
    .line 1377
    .restart local v2    # "length":I
    if-le v2, v12, :cond_9

    #@91
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@93
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    #@96
    move-result v7

    #@97
    if-ne v7, v10, :cond_9

    #@99
    .line 1378
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@9b
    add-int/lit8 v8, v2, -0x1

    #@9d
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    #@a0
    move-result v7

    #@a1
    if-ne v7, v10, :cond_9

    #@a3
    .line 1379
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@a5
    add-int/lit8 v8, v2, -0x1

    #@a7
    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@aa
    move-result-object v5

    #@ab
    .line 1384
    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ae
    .line 1387
    .end local v2    # "length":I
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_8
    new-array v7, v9, [Ljava/lang/String;

    #@b0
    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b3
    move-result-object v7

    #@b4
    check-cast v7, [Ljava/lang/String;

    #@b6
    return-object v7

    #@b7
    .line 1381
    .restart local v2    # "length":I
    :cond_9
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@b9
    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    goto :goto_2
.end method

.method public getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@0
    .prologue
    .line 3018
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByFQDN(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@9
    move-result-object v0

    #@a
    .line 3019
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@c
    .line 3020
    const-string/jumbo v1, "WifiConfigStore"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Could not find network for homeSP "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 3022
    :cond_0
    return-object v0
.end method

.method getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method handleBSSIDBlackList(ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    #@0
    .prologue
    .line 4108
    const/4 v2, 0x0

    #@1
    .line 4109
    .local v2, "found":Z
    if-nez p2, :cond_0

    #@3
    .line 4110
    return v2

    #@4
    .line 4113
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@6
    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v5

    #@a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_4

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1a
    .line 4114
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@1d
    move-result-object v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 4115
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@27
    move-result-object v5

    #@28
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v4

    #@2c
    .local v4, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_1

    #@32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    #@38
    .line 4116
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_2

    #@42
    .line 4117
    if-eqz p3, :cond_3

    #@44
    .line 4118
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@47
    move-result-object v5

    #@48
    const/4 v6, 0x0

    #@49
    invoke-virtual {v5, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    #@4c
    goto :goto_0

    #@4d
    .line 4123
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@50
    move-result-object v5

    #@51
    .line 4124
    const/16 v6, 0x10

    #@53
    .line 4123
    invoke-virtual {v5, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    #@56
    .line 4125
    const/4 v2, 0x1

    #@57
    goto :goto_0

    #@58
    .line 4131
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v4    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_4
    return v2
.end method

.method handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    #@0
    .prologue
    .line 4085
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 4086
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    #@8
    .line 4087
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@b
    move-result v1

    #@c
    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    #@e
    if-ge v1, v2, :cond_0

    #@10
    .line 4088
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@13
    move-result v1

    #@14
    .line 4087
    if-nez v1, :cond_1

    #@16
    .line 4088
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@19
    move-result v1

    #@1a
    .line 4089
    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    #@1c
    .line 4088
    if-ge v1, v2, :cond_3

    #@1e
    .line 4089
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    #@21
    move-result v1

    #@22
    .line 4087
    if-eqz v1, :cond_3

    #@24
    .line 4092
    :cond_1
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    #@26
    .line 4091
    add-int/lit8 v1, v1, 0x1

    #@28
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@2b
    .line 4093
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "handleBadNetworkDisconnectReport (+4) "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 4094
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 4093
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 4094
    const-string/jumbo v2, " "

    #@42
    .line 4093
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@51
    .line 4104
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@54
    move-result-wide v2

    #@55
    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    #@57
    .line 4083
    return-void

    #@58
    .line 4098
    :cond_3
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    #@5a
    .line 4097
    add-int/lit8 v1, v1, 0x1

    #@5c
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@5f
    .line 4099
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v2, "handleBadNetworkDisconnectReport (+8) "

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    .line 4100
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    .line 4099
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    .line 4100
    const-string/jumbo v2, " "

    #@76
    .line 4099
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@85
    goto :goto_0
.end method

.method handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "enabled"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/16 v8, 0x80

    #@3
    .line 4174
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@5
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@8
    move-result-object v1

    #@9
    .line 4175
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    #@b
    .line 4176
    if-eqz p2, :cond_1

    #@d
    .line 4177
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Ignoring SSID re-enabled from supplicant:  "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 4178
    const-string/jumbo v5, " had autoJoinStatus="

    #@24
    .line 4177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 4178
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@2a
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    .line 4177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    .line 4179
    const-string/jumbo v5, " self added "

    #@35
    .line 4177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 4179
    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@3b
    .line 4177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 4179
    const-string/jumbo v5, " ephemeral "

    #@42
    .line 4177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    .line 4179
    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@48
    .line 4177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@53
    .line 4173
    :cond_0
    :goto_0
    return-void

    #@54
    .line 4183
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "SSID temp disabled for  "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    .line 4184
    const-string/jumbo v5, " had autoJoinStatus="

    #@6b
    .line 4183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    .line 4184
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@71
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    .line 4183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    .line 4185
    const-string/jumbo v5, " self added "

    #@7c
    .line 4183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    .line 4185
    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@82
    .line 4183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    .line 4185
    const-string/jumbo v5, " ephemeral "

    #@89
    .line 4183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    .line 4185
    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@8f
    .line 4183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@9a
    .line 4186
    if-eqz p3, :cond_2

    #@9c
    .line 4187
    new-instance v4, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v5, " message="

    #@a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@b3
    .line 4189
    :cond_2
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@b5
    if-eqz v4, :cond_3

    #@b7
    iget-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@b9
    const-wide/16 v6, 0x0

    #@bb
    cmp-long v4, v4, v6

    #@bd
    if-nez v4, :cond_3

    #@bf
    .line 4193
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@c1
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    #@c4
    goto :goto_0

    #@c5
    .line 4195
    :cond_3
    if-eqz p3, :cond_0

    #@c7
    .line 4196
    const-string/jumbo v4, "no identity"

    #@ca
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@cd
    move-result v4

    #@ce
    if-eqz v4, :cond_5

    #@d0
    .line 4198
    const/16 v4, 0xa0

    #@d2
    .line 4197
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@d5
    .line 4200
    new-instance v4, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v5, "no identity blacklisted "

    #@dd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v4

    #@e1
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@e4
    move-result-object v5

    #@e5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v4

    #@e9
    const-string/jumbo v5, " to "

    #@ec
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v4

    #@f0
    .line 4201
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@f2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f5
    move-result-object v5

    #@f6
    .line 4200
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v4

    #@fa
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v4

    #@fe
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@101
    .line 4273
    :cond_4
    :goto_1
    const-string/jumbo v4, "\n"

    #@104
    const-string/jumbo v5, ""

    #@107
    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@10a
    .line 4274
    const-string/jumbo v4, "\r"

    #@10d
    const-string/jumbo v5, ""

    #@110
    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@113
    .line 4275
    iput-object p3, v1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@115
    goto/16 :goto_0

    #@117
    .line 4203
    :cond_5
    const-string/jumbo v4, "WRONG_KEY"

    #@11a
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@11d
    move-result v4

    #@11e
    if-nez v4, :cond_6

    #@120
    .line 4204
    const-string/jumbo v4, "AUTH_FAILED"

    #@123
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@126
    move-result v4

    #@127
    .line 4203
    if-eqz v4, :cond_7

    #@129
    .line 4209
    :cond_6
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@12b
    add-int/lit8 v4, v4, 0x1

    #@12d
    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@12f
    .line 4210
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@131
    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    #@133
    if-le v4, v5, :cond_4

    #@135
    .line 4211
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@138
    .line 4213
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    #@13b
    .line 4215
    new-instance v4, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v5, "Authentication failure, blacklist "

    #@143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v4

    #@147
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@14a
    move-result-object v5

    #@14b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v4

    #@14f
    const-string/jumbo v5, " "

    #@152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v4

    #@156
    .line 4216
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@158
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15b
    move-result-object v5

    #@15c
    .line 4215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v4

    #@160
    .line 4217
    const-string/jumbo v5, " num failures "

    #@163
    .line 4215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v4

    #@167
    .line 4217
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@169
    .line 4215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v4

    #@16d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@170
    move-result-object v4

    #@171
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@174
    goto :goto_1

    #@175
    .line 4219
    :cond_7
    const-string/jumbo v4, "DHCP FAILURE"

    #@178
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@17b
    move-result v4

    #@17c
    if-eqz v4, :cond_b

    #@17e
    .line 4220
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@180
    add-int/lit8 v4, v4, 0x1

    #@182
    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@184
    .line 4221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@187
    move-result-wide v4

    #@188
    iput-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@18a
    .line 4222
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getMaxDhcpRetries()I

    #@18d
    move-result v2

    #@18e
    .line 4224
    .local v2, "maxRetries":I
    if-lez v2, :cond_8

    #@190
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@192
    if-le v4, v2, :cond_8

    #@194
    .line 4229
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@197
    .line 4231
    const/4 v4, 0x2

    #@198
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    #@19b
    .line 4232
    new-instance v4, Ljava/lang/StringBuilder;

    #@19d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a0
    const-string/jumbo v5, "DHCP failure, blacklist "

    #@1a3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v4

    #@1a7
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1aa
    move-result-object v5

    #@1ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v4

    #@1af
    const-string/jumbo v5, " "

    #@1b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v4

    #@1b6
    .line 4233
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1b8
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1bb
    move-result-object v5

    #@1bc
    .line 4232
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v4

    #@1c0
    .line 4234
    const-string/jumbo v5, " num failures "

    #@1c3
    .line 4232
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v4

    #@1c7
    .line 4234
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@1c9
    .line 4232
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v4

    #@1cd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v4

    #@1d1
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1d4
    .line 4238
    :cond_8
    const/4 v3, 0x0

    #@1d5
    .line 4239
    .local v3, "result":Landroid/net/wifi/ScanResult;
    const-string/jumbo v0, ""

    #@1d8
    .line 4240
    .local v0, "bssidDbg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@1db
    move-result-object v4

    #@1dc
    if-eqz v4, :cond_9

    #@1de
    if-eqz p4, :cond_9

    #@1e0
    .line 4241
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@1e3
    move-result-object v4

    #@1e4
    invoke-virtual {v4, p4}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    #@1e7
    move-result-object v3

    #@1e8
    .line 4243
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_9
    if-eqz v3, :cond_a

    #@1ea
    .line 4244
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@1ec
    add-int/lit8 v4, v4, 0x1

    #@1ee
    iput v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@1f0
    .line 4245
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f5
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v4

    #@1f9
    const-string/jumbo v5, " ipfail="

    #@1fc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v4

    #@200
    iget v5, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@205
    move-result-object v4

    #@206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@209
    move-result-object v0

    #@20a
    .line 4246
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@20c
    if-le v4, v9, :cond_a

    #@20e
    .line 4248
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@210
    invoke-virtual {v4, p4}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    #@213
    .line 4249
    const/16 v4, 0x20

    #@215
    invoke-virtual {v3, v4}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    #@218
    .line 4254
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    #@21a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21d
    const-string/jumbo v5, "blacklisted "

    #@220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v4

    #@224
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@227
    move-result-object v5

    #@228
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v4

    #@22c
    const-string/jumbo v5, " to "

    #@22f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v4

    #@233
    .line 4255
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@235
    .line 4254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@238
    move-result-object v4

    #@239
    .line 4256
    const-string/jumbo v5, " due to IP config failures, count="

    #@23c
    .line 4254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v4

    #@240
    .line 4257
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@242
    .line 4254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@245
    move-result-object v4

    #@246
    .line 4258
    const-string/jumbo v5, " disableReason="

    #@249
    .line 4254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v4

    #@24d
    .line 4258
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@24f
    .line 4254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@252
    move-result-object v4

    #@253
    .line 4259
    const-string/jumbo v5, " "

    #@256
    .line 4254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v4

    #@25a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v4

    #@25e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@261
    move-result-object v4

    #@262
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@265
    goto/16 :goto_1

    #@267
    .line 4261
    .end local v0    # "bssidDbg":Ljava/lang/String;
    .end local v2    # "maxRetries":I
    :cond_b
    const-string/jumbo v4, "CONN_FAILED"

    #@26a
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@26d
    move-result v4

    #@26e
    if-eqz v4, :cond_4

    #@270
    .line 4262
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@272
    add-int/lit8 v4, v4, 0x1

    #@274
    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@276
    .line 4263
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@278
    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    #@27a
    if-le v4, v5, :cond_4

    #@27c
    .line 4264
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@27f
    .line 4267
    const/4 v4, 0x4

    #@280
    .line 4266
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    #@283
    .line 4268
    new-instance v4, Ljava/lang/StringBuilder;

    #@285
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@288
    const-string/jumbo v5, "Connection failure, blacklist "

    #@28b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v4

    #@28f
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@292
    move-result-object v5

    #@293
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v4

    #@297
    const-string/jumbo v5, " "

    #@29a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v4

    #@29e
    .line 4269
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2a0
    .line 4268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v4

    #@2a4
    .line 4270
    const-string/jumbo v5, " num failures "

    #@2a7
    .line 4268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v4

    #@2ab
    .line 4270
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@2ad
    .line 4268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b0
    move-result-object v4

    #@2b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b4
    move-result-object v4

    #@2b5
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@2b8
    goto/16 :goto_1
.end method

.method installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x3f2

    #@2
    .line 4283
    const/4 v3, 0x1

    #@3
    .line 4284
    .local v3, "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v6, "USRPKEY_"

    #@b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 4285
    .local v2, "privKeyName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "USRCERT_"

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 4286
    .local v4, "userCertName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "CACERT_"

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 4287
    .local v0, "caCertName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@42
    move-result-object v5

    #@43
    if-eqz v5, :cond_2

    #@45
    .line 4288
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    #@48
    move-result-object v5

    #@49
    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    #@4c
    move-result-object v1

    #@4d
    .line 4289
    .local v1, "privKeyData":[B
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    #@50
    move-result-object v5

    #@51
    invoke-static {v5}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_0

    #@57
    .line 4292
    const-string/jumbo v5, "WifiConfigStore"

    #@5a
    new-instance v6, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v7, "importing keys "

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    const-string/jumbo v7, " in hardware backed store"

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v6

    #@75
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 4293
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@7a
    .line 4294
    const/4 v6, 0x0

    #@7b
    .line 4293
    invoke-virtual {v5, v2, v1, v8, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    #@7e
    move-result v3

    #@7f
    .line 4304
    .local v3, "ret":Z
    :goto_0
    if-nez v3, :cond_1

    #@81
    .line 4305
    return v3

    #@82
    .line 4300
    .local v3, "ret":Z
    :cond_0
    const-string/jumbo v5, "WifiConfigStore"

    #@85
    new-instance v6, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v7, "importing keys "

    #@8d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    const-string/jumbo v7, " in software backed store"

    #@98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 4301
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@a5
    .line 4302
    const/4 v6, 0x1

    #@a6
    .line 4301
    invoke-virtual {v5, v2, v1, v8, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    #@a9
    move-result v3

    #@aa
    .local v3, "ret":Z
    goto :goto_0

    #@ab
    .line 4308
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@ae
    move-result-object v5

    #@af
    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    #@b2
    move-result v3

    #@b3
    .line 4309
    if-nez v3, :cond_2

    #@b5
    .line 4311
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@b7
    invoke-virtual {v5, v2, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@ba
    .line 4312
    return v3

    #@bb
    .line 4316
    .end local v1    # "privKeyData":[B
    .end local v3    # "ret":Z
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@be
    move-result-object v5

    #@bf
    if-eqz v5, :cond_4

    #@c1
    .line 4317
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@c4
    move-result-object v5

    #@c5
    invoke-direct {p0, v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    #@c8
    move-result v3

    #@c9
    .line 4318
    .restart local v3    # "ret":Z
    if-nez v3, :cond_4

    #@cb
    .line 4319
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@ce
    move-result-object v5

    #@cf
    if-eqz v5, :cond_3

    #@d1
    .line 4321
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@d3
    invoke-virtual {v5, v2, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@d6
    .line 4322
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@d8
    invoke-virtual {v5, v4, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@db
    .line 4324
    :cond_3
    return v3

    #@dc
    .line 4329
    .end local v3    # "ret":Z
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@df
    move-result-object v5

    #@e0
    if-eqz v5, :cond_5

    #@e2
    .line 4330
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    #@e5
    .line 4331
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    #@e8
    .line 4334
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@eb
    move-result-object v5

    #@ec
    if-eqz v5, :cond_6

    #@ee
    .line 4335
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    #@f1
    .line 4336
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    #@f4
    .line 4339
    :cond_6
    return v3
.end method

.method isEphemeral(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1757
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1758
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method public isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 2272
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2273
    if-eqz p1, :cond_0

    #@6
    .line 2274
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@8
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 2272
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3978
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4
    const/4 v3, -0x1

    #@5
    if-eq v2, v3, :cond_1

    #@7
    .line 3979
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@9
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@e
    move-result-object v2

    #@f
    if-eqz v2, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0

    #@14
    .line 3982
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@16
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@1d
    move-result-object v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    :goto_1
    return v0

    #@21
    :cond_2
    move v0, v1

    #@22
    goto :goto_1
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1749
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1750
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@b
    move-result-object v1

    #@c
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 1751
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1753
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 3047
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x6

    #@f
    if-le v1, v2, :cond_0

    #@11
    .line 3049
    return-void

    #@12
    .line 3051
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@14
    const/4 v2, 0x1

    #@15
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 3053
    return-void

    #@1c
    .line 3055
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@1e
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v12

    #@26
    .local v12, "link$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_15

    #@2c
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v11

    #@30
    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    #@32
    .line 3056
    .local v11, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v10, 0x0

    #@33
    .line 3058
    .local v10, "doLink":Z
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_2

    #@41
    .line 3062
    iget v1, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@43
    const/16 v2, 0xc8

    #@45
    if-eq v1, v2, :cond_2

    #@47
    iget-boolean v1, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@49
    if-nez v1, :cond_2

    #@4b
    .line 3068
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@4d
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@4f
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_2

    #@55
    .line 3072
    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@58
    move-result-object v13

    #@59
    .line 3073
    .local v13, "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v13, :cond_3

    #@5b
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@5e
    move-result v1

    #@5f
    const/4 v2, 0x6

    #@60
    if-gt v1, v2, :cond_2

    #@62
    .line 3078
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@64
    if-eqz v1, :cond_c

    #@66
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@68
    if-eqz v1, :cond_c

    #@6a
    .line 3080
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@6c
    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_5

    #@74
    .line 3081
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@76
    if-eqz v1, :cond_4

    #@78
    .line 3082
    new-instance v1, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v2, "linkConfiguration link due to same gw "

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    .line 3083
    const-string/jumbo v2, " and "

    #@8d
    .line 3082
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    .line 3083
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@93
    .line 3082
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    .line 3083
    const-string/jumbo v2, " GW "

    #@9a
    .line 3082
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    .line 3083
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@a0
    .line 3082
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@ab
    .line 3085
    :cond_4
    const/4 v10, 0x1

    #@ac
    .line 3113
    :cond_5
    if-eqz v10, :cond_7

    #@ae
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    #@b0
    if-eqz v1, :cond_7

    #@b2
    .line 3114
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@b4
    const-string/jumbo v2, "psk"

    #@b7
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ba
    move-result-object v7

    #@bb
    .line 3115
    .local v7, "apsk":Ljava/lang/String;
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@bd
    const-string/jumbo v2, "psk"

    #@c0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    .line 3116
    .local v9, "bpsk":Ljava/lang/String;
    if-eqz v7, :cond_6

    #@c6
    if-nez v9, :cond_10

    #@c8
    .line 3120
    :cond_6
    const/4 v10, 0x0

    #@c9
    .line 3124
    .end local v7    # "apsk":Ljava/lang/String;
    .end local v9    # "bpsk":Ljava/lang/String;
    :cond_7
    :goto_1
    if-eqz v10, :cond_11

    #@cb
    .line 3125
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@cd
    if-eqz v1, :cond_8

    #@cf
    .line 3126
    new-instance v1, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v2, "linkConfiguration: will link "

    #@d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v1

    #@db
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    .line 3127
    const-string/jumbo v2, " and "

    #@e6
    .line 3126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    .line 3127
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@ed
    move-result-object v2

    #@ee
    .line 3126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v1

    #@f6
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@f9
    .line 3129
    :cond_8
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@fb
    if-nez v1, :cond_9

    #@fd
    .line 3130
    new-instance v1, Ljava/util/HashMap;

    #@ff
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@102
    iput-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@104
    .line 3132
    :cond_9
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@106
    if-nez v1, :cond_a

    #@108
    .line 3133
    new-instance v1, Ljava/util/HashMap;

    #@10a
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@10d
    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@10f
    .line 3135
    :cond_a
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@111
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@114
    move-result-object v2

    #@115
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@118
    move-result-object v1

    #@119
    if-nez v1, :cond_b

    #@11b
    .line 3136
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@11d
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@120
    move-result-object v2

    #@121
    const/4 v4, 0x1

    #@122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@125
    move-result-object v4

    #@126
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@129
    .line 3137
    const/4 v1, 0x1

    #@12a
    iput-boolean v1, v11, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@12c
    .line 3139
    :cond_b
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@12e
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@131
    move-result-object v2

    #@132
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@135
    move-result-object v1

    #@136
    if-nez v1, :cond_2

    #@138
    .line 3140
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@13a
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@13d
    move-result-object v2

    #@13e
    const/4 v4, 0x1

    #@13f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@142
    move-result-object v4

    #@143
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    .line 3141
    const/4 v1, 0x1

    #@147
    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@149
    goto/16 :goto_0

    #@14b
    .line 3092
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@14e
    move-result-object v1

    #@14f
    if-eqz v1, :cond_5

    #@151
    .line 3093
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@154
    move-result-object v1

    #@155
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@158
    move-result v1

    #@159
    const/4 v2, 0x6

    #@15a
    if-gt v1, v2, :cond_5

    #@15c
    .line 3095
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@15f
    move-result-object v1

    #@160
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    #@163
    move-result-object v1

    #@164
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@167
    move-result-object v6

    #@168
    .local v6, "abssid$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@16b
    move-result v1

    #@16c
    if-eqz v1, :cond_5

    #@16e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@171
    move-result-object v0

    #@172
    check-cast v0, Ljava/lang/String;

    #@174
    .line 3096
    .local v0, "abssid":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    #@177
    move-result-object v1

    #@178
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17b
    move-result-object v8

    #@17c
    .local v8, "bbssid$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@17f
    move-result v1

    #@180
    if-eqz v1, :cond_d

    #@182
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@185
    move-result-object v3

    #@186
    check-cast v3, Ljava/lang/String;

    #@188
    .line 3097
    .local v3, "bbssid":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    #@18a
    if-eqz v1, :cond_f

    #@18c
    .line 3098
    new-instance v1, Ljava/lang/StringBuilder;

    #@18e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@191
    const-string/jumbo v2, "linkConfiguration try to link due to DBDC BSSID match "

    #@194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v1

    #@198
    .line 3099
    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@19a
    .line 3098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v1

    #@19e
    .line 3100
    const-string/jumbo v2, " and "

    #@1a1
    .line 3098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v1

    #@1a5
    .line 3100
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1a7
    .line 3098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v1

    #@1ab
    .line 3100
    const-string/jumbo v2, " bssida "

    #@1ae
    .line 3098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v1

    #@1b2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v1

    #@1b6
    .line 3101
    const-string/jumbo v2, " bssidb "

    #@1b9
    .line 3098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v1

    #@1bd
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v1

    #@1c1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1c8
    .line 3103
    :cond_f
    const/4 v1, 0x1

    #@1c9
    const/4 v2, 0x0

    #@1ca
    const/4 v4, 0x0

    #@1cb
    const/16 v5, 0x10

    #@1cd
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@1d0
    move-result v1

    #@1d1
    if-eqz v1, :cond_e

    #@1d3
    .line 3106
    const/4 v10, 0x1

    #@1d4
    goto :goto_2

    #@1d5
    .line 3117
    .end local v0    # "abssid":Ljava/lang/String;
    .end local v3    # "bbssid":Ljava/lang/String;
    .end local v6    # "abssid$iterator":Ljava/util/Iterator;
    .end local v8    # "bbssid$iterator":Ljava/util/Iterator;
    .restart local v7    # "apsk":Ljava/lang/String;
    .restart local v9    # "bpsk":Ljava/lang/String;
    :cond_10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d8
    move-result v1

    #@1d9
    .line 3116
    if-nez v1, :cond_6

    #@1db
    .line 3117
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1de
    move-result v1

    #@1df
    .line 3116
    if-nez v1, :cond_6

    #@1e1
    .line 3118
    const-string/jumbo v1, "*"

    #@1e4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e7
    move-result v1

    #@1e8
    .line 3116
    if-nez v1, :cond_6

    #@1ea
    .line 3118
    const-string/jumbo v1, "Mjkd86jEMGn79KhKll298Uu7-deleted"

    #@1ed
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f0
    move-result v1

    #@1f1
    .line 3116
    if-nez v1, :cond_6

    #@1f3
    .line 3119
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f6
    move-result v1

    #@1f7
    if-eqz v1, :cond_6

    #@1f9
    goto/16 :goto_1

    #@1fb
    .line 3144
    .end local v7    # "apsk":Ljava/lang/String;
    .end local v9    # "bpsk":Ljava/lang/String;
    :cond_11
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@1fd
    if-eqz v1, :cond_13

    #@1ff
    .line 3145
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@201
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@204
    move-result-object v2

    #@205
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@208
    move-result-object v1

    #@209
    if-eqz v1, :cond_13

    #@20b
    .line 3146
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@20d
    if-eqz v1, :cond_12

    #@20f
    .line 3147
    new-instance v1, Ljava/lang/StringBuilder;

    #@211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@214
    const-string/jumbo v2, "linkConfiguration: un-link "

    #@217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v1

    #@21b
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@21e
    move-result-object v2

    #@21f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v1

    #@223
    .line 3148
    const-string/jumbo v2, " from "

    #@226
    .line 3147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@229
    move-result-object v1

    #@22a
    .line 3148
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@22d
    move-result-object v2

    #@22e
    .line 3147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v1

    #@232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@235
    move-result-object v1

    #@236
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@239
    .line 3150
    :cond_12
    const/4 v1, 0x1

    #@23a
    iput-boolean v1, v11, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@23c
    .line 3151
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@23e
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@241
    move-result-object v2

    #@242
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@245
    .line 3153
    :cond_13
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@247
    if-eqz v1, :cond_2

    #@249
    .line 3154
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@24b
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@24e
    move-result-object v2

    #@24f
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@252
    move-result-object v1

    #@253
    if-eqz v1, :cond_2

    #@255
    .line 3155
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@257
    if-eqz v1, :cond_14

    #@259
    .line 3156
    new-instance v1, Ljava/lang/StringBuilder;

    #@25b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25e
    const-string/jumbo v2, "linkConfiguration: un-link "

    #@261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v1

    #@265
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@268
    move-result-object v2

    #@269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v1

    #@26d
    .line 3157
    const-string/jumbo v2, " from "

    #@270
    .line 3156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v1

    #@274
    .line 3157
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@277
    move-result-object v2

    #@278
    .line 3156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v1

    #@27c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27f
    move-result-object v1

    #@280
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@283
    .line 3159
    :cond_14
    const/4 v1, 0x1

    #@284
    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@286
    .line 3160
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@288
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@28b
    move-result-object v2

    #@28c
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@28f
    goto/16 :goto_0

    #@291
    .line 3045
    .end local v10    # "doLink":Z
    .end local v11    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_15
    return-void
.end method

.method loadAndEnableAllNetworks()V
    .locals 1

    #@0
    .prologue
    .line 725
    const-string/jumbo v0, "Loading config and enabling all networks "

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@6
    .line 726
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    #@9
    .line 727
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    #@c
    .line 724
    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 15

    #@0
    .prologue
    .line 1789
    const/4 v12, 0x0

    #@1
    iput v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@3
    .line 1791
    iget-object v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@5
    invoke-virtual {v12}, Lcom/android/server/wifi/ConfigurationMap;->clear()V

    #@8
    .line 1793
    const/4 v7, -0x1

    #@9
    .line 1794
    .local v7, "last_id":I
    const/4 v4, 0x0

    #@a
    .line 1795
    .local v4, "done":Z
    :goto_0
    if-nez v4, :cond_c

    #@c
    .line 1797
    iget-object v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@e
    invoke-virtual {v12, v7}, Lcom/android/server/wifi/WifiNative;->listNetworks(I)Ljava/lang/String;

    #@11
    move-result-object v9

    #@12
    .line 1798
    .local v9, "listStr":Ljava/lang/String;
    if-nez v9, :cond_0

    #@14
    .line 1799
    return-void

    #@15
    .line 1801
    :cond_0
    const-string/jumbo v12, "\n"

    #@18
    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v8

    #@1c
    .line 1803
    .local v8, "lines":[Ljava/lang/String;
    iget-boolean v12, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@1e
    if-eqz v12, :cond_1

    #@20
    .line 1804
    const-string/jumbo v12, "WifiConfigStore: loadConfiguredNetworks:  "

    #@23
    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@26
    .line 1805
    const/4 v12, 0x0

    #@27
    array-length v13, v8

    #@28
    :goto_1
    if-ge v12, v13, :cond_1

    #@2a
    aget-object v10, v8, v12

    #@2c
    .line 1806
    .local v10, "net":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@2f
    .line 1805
    add-int/lit8 v12, v12, 0x1

    #@31
    goto :goto_1

    #@32
    .line 1811
    .end local v10    # "net":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    #@33
    .local v6, "i":I
    :goto_2
    array-length v12, v8

    #@34
    if-ge v6, v12, :cond_a

    #@36
    .line 1812
    aget-object v12, v8, v6

    #@38
    const-string/jumbo v13, "\t"

    #@3b
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3e
    move-result-object v11

    #@3f
    .line 1814
    .local v11, "result":[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@41
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@44
    .line 1816
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v12, 0x0

    #@45
    :try_start_0
    aget-object v12, v11, v12

    #@47
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4a
    move-result v12

    #@4b
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4d
    .line 1817
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 1822
    array-length v12, v11

    #@50
    const/4 v13, 0x3

    #@51
    if-le v12, v13, :cond_7

    #@53
    .line 1823
    const/4 v12, 0x3

    #@54
    aget-object v12, v11, v12

    #@56
    const-string/jumbo v13, "[CURRENT]"

    #@59
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@5c
    move-result v12

    #@5d
    const/4 v13, -0x1

    #@5e
    if-eq v12, v13, :cond_5

    #@60
    .line 1824
    const/4 v12, 0x0

    #@61
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@63
    .line 1833
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    #@66
    .line 1835
    new-instance v1, Ljava/util/zip/CRC32;

    #@68
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    #@6b
    .line 1836
    .local v1, "csum":Ljava/util/zip/Checksum;
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@6d
    if-eqz v12, :cond_2

    #@6f
    .line 1837
    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@71
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    #@74
    move-result-object v12

    #@75
    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@77
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    #@7a
    move-result-object v13

    #@7b
    array-length v13, v13

    #@7c
    const/4 v14, 0x0

    #@7d
    invoke-interface {v1, v12, v14, v13}, Ljava/util/zip/Checksum;->update([BII)V

    #@80
    .line 1838
    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    #@83
    move-result-wide v2

    #@84
    .line 1839
    .local v2, "d":J
    iget-object v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    #@86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@89
    move-result-object v13

    #@8a
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@8d
    move-result v12

    #@8e
    if-eqz v12, :cond_2

    #@90
    .line 1840
    new-instance v12, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v13, " got CRC for SSID "

    #@98
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v12

    #@9c
    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@9e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v12

    #@a2
    const-string/jumbo v13, " -> "

    #@a5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v12

    #@a9
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v12

    #@ad
    const-string/jumbo v13, ", was deleted"

    #@b0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v12

    #@b4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v12

    #@b8
    invoke-virtual {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@bb
    .line 1844
    .end local v2    # "d":J
    :cond_2
    iget v12, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@bd
    iget v13, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@bf
    if-le v12, v13, :cond_3

    #@c1
    .line 1845
    iget v12, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@c3
    iput v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@c5
    .line 1848
    :cond_3
    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@c7
    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    #@ca
    .line 1849
    sget-object v12, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@cc
    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    #@cf
    .line 1851
    iget-object v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@d1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@d4
    move-result-object v13

    #@d5
    invoke-virtual {v12, v13}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@d8
    move-result-object v12

    #@d9
    if-eqz v12, :cond_8

    #@db
    .line 1853
    iget-boolean v12, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@dd
    if-eqz v12, :cond_4

    #@df
    const-string/jumbo v12, "discarded duplicate network "

    #@e2
    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@e4
    invoke-direct {p0, v12, v13}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@e7
    .line 1811
    .end local v1    # "csum":Ljava/util/zip/Checksum;
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    #@e9
    goto/16 :goto_2

    #@eb
    .line 1818
    :catch_0
    move-exception v5

    #@ec
    .line 1819
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v13, "Failed to read network-id \'"

    #@f4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v12

    #@f8
    const/4 v13, 0x0

    #@f9
    aget-object v13, v11, v13

    #@fb
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v12

    #@ff
    const-string/jumbo v13, "\'"

    #@102
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v12

    #@106
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v12

    #@10a
    invoke-virtual {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@10d
    goto :goto_4

    #@10e
    .line 1825
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v12, 0x3

    #@10f
    aget-object v12, v11, v12

    #@111
    const-string/jumbo v13, "[DISABLED]"

    #@114
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@117
    move-result v12

    #@118
    const/4 v13, -0x1

    #@119
    if-eq v12, v13, :cond_6

    #@11b
    .line 1826
    const/4 v12, 0x1

    #@11c
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@11e
    goto/16 :goto_3

    #@120
    .line 1828
    :cond_6
    const/4 v12, 0x2

    #@121
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@123
    goto/16 :goto_3

    #@125
    .line 1830
    :cond_7
    const/4 v12, 0x2

    #@126
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@128
    goto/16 :goto_3

    #@12a
    .line 1854
    .restart local v1    # "csum":Ljava/util/zip/Checksum;
    :cond_8
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@12d
    move-result v12

    #@12e
    if-eqz v12, :cond_9

    #@130
    .line 1855
    iget-object v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@132
    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@134
    invoke-virtual {v12, v13, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@137
    .line 1856
    iget-boolean v12, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@139
    if-eqz v12, :cond_4

    #@13b
    const-string/jumbo v12, "loaded configured network"

    #@13e
    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@140
    invoke-direct {p0, v12, v13}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@143
    goto :goto_4

    #@144
    .line 1858
    :cond_9
    iget-boolean v12, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@146
    if-eqz v12, :cond_4

    #@148
    new-instance v12, Ljava/lang/StringBuilder;

    #@14a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@14d
    const-string/jumbo v13, "Ignoring loaded configured for network "

    #@150
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v12

    #@154
    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@156
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@159
    move-result-object v12

    #@15a
    .line 1859
    const-string/jumbo v13, " because config are not valid"

    #@15d
    .line 1858
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v12

    #@161
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v12

    #@165
    invoke-virtual {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@168
    goto/16 :goto_4

    #@16a
    .line 1863
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "csum":Ljava/util/zip/Checksum;
    .end local v11    # "result":[Ljava/lang/String;
    :cond_a
    array-length v12, v8

    #@16b
    const/4 v13, 0x1

    #@16c
    if-ne v12, v13, :cond_b

    #@16e
    const/4 v4, 0x1

    #@16f
    goto/16 :goto_0

    #@171
    :cond_b
    const/4 v4, 0x0

    #@172
    goto/16 :goto_0

    #@174
    .line 1866
    .end local v6    # "i":I
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v9    # "listStr":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->readPasspointConfig()V

    #@177
    .line 1867
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    #@17a
    .line 1868
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkHistory()V

    #@17d
    .line 1869
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->readAutoJoinConfig()V

    #@180
    .line 1871
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V

    #@183
    .line 1873
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    #@186
    .line 1875
    iget-boolean v12, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@188
    if-eqz v12, :cond_d

    #@18a
    new-instance v12, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    const-string/jumbo v13, "loadConfiguredNetworks loaded "

    #@192
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v12

    #@196
    iget-object v13, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@198
    invoke-virtual {v13}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    #@19b
    move-result v13

    #@19c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v12

    #@1a0
    const-string/jumbo v13, " networks"

    #@1a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v12

    #@1a7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v12

    #@1ab
    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@1ae
    .line 1877
    :cond_d
    iget-object v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@1b0
    invoke-virtual {v12}, Lcom/android/server/wifi/ConfigurationMap;->isEmpty()Z

    #@1b3
    move-result v12

    #@1b4
    if-eqz v12, :cond_e

    #@1b6
    .line 1879
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->logKernelTime()V

    #@1b9
    .line 1880
    const-string/jumbo v12, "/data/misc/wifi/wpa_supplicant.conf"

    #@1bc
    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    #@1bf
    .line 1881
    const-string/jumbo v12, "/data/misc/wifi/wpa_supplicant.conf.tmp"

    #@1c2
    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    #@1c5
    .line 1882
    sget-object v12, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    #@1c7
    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    #@1ca
    .line 1787
    :cond_e
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3868
    const-string/jumbo v0, "WifiConfigStore"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 3867
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3845
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;Z)V

    #@4
    .line 3844
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    #@0
    .prologue
    .line 3849
    if-eqz p2, :cond_0

    #@2
    .line 3850
    const-string/jumbo v0, "WifiConfigStore"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " stack:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x2

    #@1e
    aget-object v2, v2, v3

    #@20
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 3851
    const-string/jumbo v2, " - "

    #@2b
    .line 3850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 3851
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x3

    #@38
    aget-object v2, v2, v3

    #@3a
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 3850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 3852
    const-string/jumbo v2, " - "

    #@45
    .line 3850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 3852
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@50
    move-result-object v2

    #@51
    const/4 v3, 0x4

    #@52
    aget-object v2, v2, v3

    #@54
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 3850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 3853
    const-string/jumbo v2, " - "

    #@5f
    .line 3850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 3853
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@6a
    move-result-object v2

    #@6b
    const/4 v3, 0x5

    #@6c
    aget-object v2, v2, v3

    #@6e
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .line 3850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 3848
    :goto_0
    return-void

    #@7e
    .line 3855
    :cond_0
    const-string/jumbo v0, "WifiConfigStore"

    #@81
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    goto :goto_0
.end method

.method public makeChannelList(Landroid/net/wifi/WifiConfiguration;IZ)Ljava/util/HashSet;
    .locals 18
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "restrict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "IZ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3167
    if-nez p1, :cond_0

    #@2
    .line 3168
    const/4 v14, 0x0

    #@3
    return-object v14

    #@4
    .line 3169
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v8

    #@8
    .line 3171
    .local v8, "now_ms":J
    new-instance v2, Ljava/util/HashSet;

    #@a
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@d
    .line 3174
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@10
    move-result-object v14

    #@11
    if-nez v14, :cond_1

    #@13
    move-object/from16 v0, p1

    #@15
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@17
    if-nez v14, :cond_1

    #@19
    .line 3175
    const/4 v14, 0x0

    #@1a
    return-object v14

    #@1b
    .line 3178
    :cond_1
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@1d
    if-eqz v14, :cond_4

    #@1f
    .line 3179
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    .line 3180
    .local v3, "dbg":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "makeChannelList age="

    #@27
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v14

    #@2b
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2e
    move-result-object v15

    #@2f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v14

    #@33
    .line 3181
    const-string/jumbo v15, " for "

    #@36
    .line 3180
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v14

    #@3a
    .line 3181
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@3d
    move-result-object v15

    #@3e
    .line 3180
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v14

    #@42
    .line 3182
    const-string/jumbo v15, " max="

    #@45
    .line 3180
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v14

    #@49
    .line 3182
    move-object/from16 v0, p0

    #@4b
    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4d
    .line 3180
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    .line 3183
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@53
    move-result-object v14

    #@54
    if-eqz v14, :cond_2

    #@56
    .line 3184
    const-string/jumbo v14, " bssids="

    #@59
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v14

    #@5d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@60
    move-result-object v15

    #@61
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@64
    move-result v15

    #@65
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    .line 3186
    :cond_2
    move-object/from16 v0, p1

    #@6a
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@6c
    if-eqz v14, :cond_3

    #@6e
    .line 3187
    const-string/jumbo v14, " linked="

    #@71
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v14

    #@75
    move-object/from16 v0, p1

    #@77
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@79
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    #@7c
    move-result v15

    #@7d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    .line 3189
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v14

    #@84
    move-object/from16 v0, p0

    #@86
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@89
    .line 3192
    .end local v3    # "dbg":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v7, 0x0

    #@8a
    .line 3193
    .local v7, "numChannels":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@8d
    move-result-object v14

    #@8e
    if-eqz v14, :cond_6

    #@90
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@93
    move-result-object v14

    #@94
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@97
    move-result v14

    #@98
    if-lez v14, :cond_6

    #@9a
    .line 3194
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@9d
    move-result-object v14

    #@9e
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@a1
    move-result-object v14

    #@a2
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a5
    move-result-object v12

    #@a6
    .local v12, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@a9
    move-result v14

    #@aa
    if-eqz v14, :cond_6

    #@ac
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@af
    move-result-object v11

    #@b0
    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    #@b2
    .line 3195
    .local v11, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@b5
    move-result-object v10

    #@b6
    .line 3197
    .local v10, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    #@b8
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@ba
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@bd
    move-result v14

    #@be
    if-le v7, v14, :cond_a

    #@c0
    .line 3213
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p1

    #@c2
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@c4
    if-eqz v14, :cond_d

    #@c6
    .line 3214
    move-object/from16 v0, p1

    #@c8
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@ca
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@cd
    move-result-object v14

    #@ce
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d1
    move-result-object v5

    #@d2
    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d5
    move-result v14

    #@d6
    if-eqz v14, :cond_d

    #@d8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@db
    move-result-object v4

    #@dc
    check-cast v4, Ljava/lang/String;

    #@de
    .line 3215
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e0
    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@e3
    move-result-object v6

    #@e4
    .line 3216
    .local v6, "linked":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_7

    #@e6
    .line 3218
    move-object/from16 v0, p0

    #@e8
    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@eb
    move-result-object v14

    #@ec
    if-eqz v14, :cond_7

    #@ee
    .line 3221
    move-object/from16 v0, p0

    #@f0
    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@f3
    move-result-object v14

    #@f4
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@f7
    move-result-object v14

    #@f8
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@fb
    move-result-object v12

    #@fc
    .restart local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@ff
    move-result v14

    #@100
    if-eqz v14, :cond_7

    #@102
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@105
    move-result-object v11

    #@106
    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    #@108
    .line 3222
    .restart local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@10b
    move-result-object v10

    #@10c
    .line 3223
    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@10e
    if-eqz v14, :cond_9

    #@110
    .line 3224
    new-instance v14, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v15, "has link: "

    #@118
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v14

    #@11c
    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@11e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v14

    #@122
    .line 3225
    const-string/jumbo v15, " freq="

    #@125
    .line 3224
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v14

    #@129
    .line 3225
    iget v15, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@12b
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12e
    move-result-object v15

    #@12f
    .line 3224
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v14

    #@133
    .line 3226
    const-string/jumbo v15, " age="

    #@136
    .line 3224
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v14

    #@13a
    .line 3226
    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@13c
    move-wide/from16 v16, v0

    #@13e
    sub-long v16, v8, v16

    #@140
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@143
    move-result-object v15

    #@144
    .line 3224
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v14

    #@148
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v14

    #@14c
    move-object/from16 v0, p0

    #@14e
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@151
    .line 3228
    :cond_9
    move-object/from16 v0, p0

    #@153
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@155
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@158
    move-result v14

    #@159
    if-gt v7, v14, :cond_7

    #@15b
    .line 3231
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@15d
    sub-long v14, v8, v14

    #@15f
    move/from16 v0, p2

    #@161
    int-to-long v0, v0

    #@162
    move-wide/from16 v16, v0

    #@164
    cmp-long v14, v14, v16

    #@166
    if-gez v14, :cond_8

    #@168
    .line 3232
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@16a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16d
    move-result-object v14

    #@16e
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@171
    .line 3233
    add-int/lit8 v7, v7, 0x1

    #@173
    goto :goto_1

    #@174
    .line 3200
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "linked":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@176
    if-eqz v14, :cond_b

    #@178
    .line 3201
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@17a
    sub-long v14, v8, v14

    #@17c
    move/from16 v0, p2

    #@17e
    int-to-long v0, v0

    #@17f
    move-wide/from16 v16, v0

    #@181
    cmp-long v14, v14, v16

    #@183
    if-gez v14, :cond_c

    #@185
    const/4 v13, 0x1

    #@186
    .line 3202
    .local v13, "test":Z
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    const-string/jumbo v15, "has "

    #@18e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v14

    #@192
    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@194
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v14

    #@198
    const-string/jumbo v15, " freq="

    #@19b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v14

    #@19f
    iget v15, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@1a1
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a4
    move-result-object v15

    #@1a5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v14

    #@1a9
    .line 3203
    const-string/jumbo v15, " age="

    #@1ac
    .line 3202
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v14

    #@1b0
    .line 3203
    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@1b2
    move-wide/from16 v16, v0

    #@1b4
    sub-long v16, v8, v16

    #@1b6
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1b9
    move-result-object v15

    #@1ba
    .line 3202
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v14

    #@1be
    .line 3203
    const-string/jumbo v15, " ?="

    #@1c1
    .line 3202
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v14

    #@1c5
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v14

    #@1c9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v14

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1d2
    .line 3205
    .end local v13    # "test":Z
    :cond_b
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@1d4
    sub-long v14, v8, v14

    #@1d6
    move/from16 v0, p2

    #@1d8
    int-to-long v0, v0

    #@1d9
    move-wide/from16 v16, v0

    #@1db
    cmp-long v14, v14, v16

    #@1dd
    if-gez v14, :cond_5

    #@1df
    .line 3206
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@1e1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e4
    move-result-object v14

    #@1e5
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e8
    .line 3207
    add-int/lit8 v7, v7, 0x1

    #@1ea
    goto/16 :goto_0

    #@1ec
    .line 3201
    :cond_c
    const/4 v13, 0x0

    #@1ed
    .restart local v13    # "test":Z
    goto :goto_2

    #@1ee
    .line 3238
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    .end local v13    # "test":Z
    :cond_d
    return-object v2
.end method

.method migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/16 v6, 0x3f2

    #@3
    .line 4429
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 4431
    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 4432
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "USRPKEY_"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_0

    #@29
    .line 4433
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "USRPKEY_"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 4434
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "USRPKEY_"

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    .line 4433
    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    #@56
    .line 4435
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@58
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v4, "USRCERT_"

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    .line 4436
    new-instance v4, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v5, "USRCERT_"

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    .line 4435
    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    #@83
    .line 4440
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    .line 4442
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8a
    move-result v2

    #@8b
    if-nez v2, :cond_1

    #@8d
    .line 4443
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@8f
    new-instance v3, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v4, "CACERT_"

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@a6
    move-result v2

    #@a7
    if-nez v2, :cond_1

    #@a9
    .line 4444
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@ab
    new-instance v3, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v4, "CACERT_"

    #@b3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v3

    #@bb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    .line 4445
    new-instance v4, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v5, "CACERT_"

    #@c7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v4

    #@d3
    .line 4444
    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    #@d6
    .line 4428
    :cond_1
    return-void
.end method

.method migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "netId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4380
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    const-string/jumbo v3, "private_key"

    #@6
    invoke-virtual {v2, p2, v3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 4385
    .local v1, "oldPrivateKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 4386
    return v4

    #@11
    .line 4389
    :cond_0
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 4390
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 4391
    return v4

    #@1c
    .line 4395
    :cond_1
    const-string/jumbo v2, "engine"

    #@1f
    const-string/jumbo v3, "1"

    #@22
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 4396
    const-string/jumbo v2, "engine_id"

    #@28
    .line 4397
    const-string/jumbo v3, "keystore"

    #@2b
    .line 4396
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 4404
    const-string/jumbo v2, "keystore://"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_2

    #@37
    .line 4405
    new-instance v0, Ljava/lang/String;

    #@39
    .line 4406
    const-string/jumbo v2, "keystore://"

    #@3c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3f
    move-result v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 4405
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@47
    .line 4410
    .local v0, "keyName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "key_id"

    #@4a
    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 4412
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@4f
    const-string/jumbo v3, "engine"

    #@52
    .line 4413
    const-string/jumbo v4, "engine"

    #@55
    const-string/jumbo v5, ""

    #@58
    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 4412
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@5f
    .line 4415
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@61
    const-string/jumbo v3, "engine_id"

    #@64
    .line 4416
    const-string/jumbo v4, "engine_id"

    #@67
    const-string/jumbo v5, ""

    #@6a
    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 4415
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@71
    .line 4418
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@73
    const-string/jumbo v3, "key_id"

    #@76
    .line 4419
    const-string/jumbo v4, "key_id"

    #@79
    const-string/jumbo v5, ""

    #@7c
    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    .line 4418
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@83
    .line 4422
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@85
    const-string/jumbo v3, "private_key"

    #@88
    const-string/jumbo v4, "NULL"

    #@8b
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@8e
    .line 4424
    const/4 v2, 0x1

    #@8f
    return v2

    #@90
    .line 4408
    .end local v0    # "keyName":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    #@91
    .restart local v0    # "keyName":Ljava/lang/String;
    goto :goto_0
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    #@0
    .prologue
    .line 1997
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@16
    .line 1999
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@18
    const/4 v3, 0x2

    #@19
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 2000
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@21
    const/4 v3, 0x3

    #@22
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    #@25
    move-result v2

    #@26
    .line 1999
    if-eqz v2, :cond_0

    #@28
    .line 2002
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@2a
    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 2003
    const/4 v2, 0x1

    #@31
    return v2

    #@32
    .line 2008
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v2, 0x0

    #@33
    return v2
.end method

.method noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 1137
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 1138
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@9
    .line 1140
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@b
    const-wide/16 v2, 0x3e8

    #@d
    add-long/2addr v0, v2

    #@e
    const-wide/16 v2, 0x2

    #@10
    mul-long/2addr v0, v2

    #@11
    .line 1139
    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@13
    .line 1141
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@15
    .line 1142
    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    #@17
    int-to-long v2, v2

    #@18
    .line 1141
    cmp-long v0, v0, v2

    #@1a
    if-lez v0, :cond_1

    #@1c
    .line 1144
    iget v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    #@1e
    int-to-long v0, v0

    #@1f
    .line 1143
    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@21
    .line 1146
    :cond_1
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@23
    .line 1136
    return-void
.end method

.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    #@0
    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->notifyANQPDone(Ljava/lang/Long;Z)V

    #@5
    .line 3289
    return-void
.end method

.method public notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3296
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@3
    .line 3297
    if-eqz p2, :cond_0

    #@5
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 3298
    :cond_0
    return-void

    #@c
    .line 3300
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    #@f
    .line 3302
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    #@13
    move-result-object v0

    #@14
    .line 3303
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 3304
    const-string/jumbo v3, " pass 2 matches: "

    #@2c
    .line 3303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 3304
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 3303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 3306
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@42
    .line 3294
    return-void
.end method

.method readPasspointConfig()V
    .locals 4

    #@0
    .prologue
    .line 2015
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->loadAllSPs()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 2021
    .local v1, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@8
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@a
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wifi/ConfigurationMap;->populatePasspointData(Ljava/util/Collection;Lcom/android/server/wifi/WifiNative;)V

    #@d
    .line 2011
    return-void

    #@e
    .line 2016
    .end local v1    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_0
    move-exception v0

    #@f
    .line 2017
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Could not read /data/misc/wifi/PerProviderSubscription.conf : "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@26
    .line 2018
    return-void
.end method

.method removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    const/16 v5, 0x3f2

    #@2
    .line 4356
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 4358
    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 4359
    const-string/jumbo v2, "WifiConfigStore"

    #@f
    const-string/jumbo v3, "removing client private key and user cert"

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 4360
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "USRPKEY_"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@2e
    .line 4361
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "USRCERT_"

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@47
    .line 4364
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 4366
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4e
    move-result v2

    #@4f
    if-nez v2, :cond_1

    #@51
    .line 4367
    const-string/jumbo v2, "WifiConfigStore"

    #@54
    const-string/jumbo v3, "removing CA cert"

    #@57
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 4368
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@5c
    new-instance v3, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v4, "CACERT_"

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@73
    .line 4355
    :cond_1
    return-void
.end method

.method removeNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1400
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "removeNetwork"

    #@8
    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@b
    .line 1401
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@d
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@10
    move-result-object v0

    #@11
    .line 1402
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@13
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    #@16
    move-result v1

    #@17
    .line 1403
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    #@19
    .line 1404
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    #@1c
    .line 1405
    if-eqz v0, :cond_1

    #@1e
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 1406
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@26
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@29
    .line 1409
    :cond_1
    return v1
.end method

.method removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1473
    if-eqz p1, :cond_0

    #@3
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@5
    if-nez v4, :cond_1

    #@7
    .line 1474
    :cond_0
    return v3

    #@8
    .line 1477
    :cond_1
    const/4 v2, 0x1

    #@9
    .line 1480
    .local v2, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@b
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@e
    move-result-object v4

    #@f
    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    #@11
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    #@17
    .line 1481
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v1

    #@18
    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_4

    #@1a
    aget-object v0, v1, v3

    #@1c
    .line 1482
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1e
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@20
    if-ne v5, v6, :cond_3

    #@22
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@24
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 1485
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 1486
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Removing network "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 1487
    const-string/jumbo v6, ", application \""

    #@45
    .line 1486
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 1487
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4b
    .line 1486
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 1487
    const-string/jumbo v6, "\" uninstalled"

    #@52
    .line 1486
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    .line 1488
    const-string/jumbo v6, " from user "

    #@59
    .line 1486
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 1488
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5f
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@62
    move-result v6

    #@63
    .line 1486
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@6e
    .line 1490
    :cond_2
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@70
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    #@73
    move-result v5

    #@74
    and-int/2addr v2, v5

    #@75
    .line 1481
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@77
    goto :goto_0

    #@78
    .line 1493
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7a
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@7d
    .line 1495
    return v2
.end method

.method removeNetworksForUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1499
    const/4 v2, 0x1

    #@2
    .line 1502
    .local v2, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v4

    #@8
    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    #@a
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    #@10
    .line 1503
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v1

    #@11
    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_2

    #@13
    aget-object v0, v1, v3

    #@15
    .line 1504
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@17
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@1a
    move-result v5

    #@1b
    if-eq p1, v5, :cond_1

    #@1d
    .line 1503
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1507
    :cond_1
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@22
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    #@25
    move-result v5

    #@26
    and-int/2addr v2, v5

    #@27
    .line 1508
    .local v2, "success":Z
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    #@29
    if-eqz v5, :cond_0

    #@2b
    .line 1509
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "Removing network "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 1510
    const-string/jumbo v6, ", user "

    #@40
    .line 1509
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 1510
    const-string/jumbo v6, " removed"

    #@4b
    .line 1509
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@56
    goto :goto_1

    #@57
    .line 1514
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "success":Z
    :cond_2
    return v2
.end method

.method saveConfig()Z
    .locals 1

    #@0
    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 1051
    if-eqz p1, :cond_0

    #@5
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@7
    if-ne v6, v8, :cond_1

    #@9
    .line 1052
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@b
    if-nez v6, :cond_1

    #@d
    .line 1053
    :cond_0
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    #@f
    invoke-direct {v4, v8}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@12
    return-object v4

    #@13
    .line 1055
    :cond_1
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@15
    if-eqz v6, :cond_2

    #@17
    const-string/jumbo v6, "WifiConfigStore: saveNetwork netId"

    #@1a
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1c
    invoke-direct {p0, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@1f
    .line 1056
    :cond_2
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@21
    if-eqz v6, :cond_3

    #@23
    .line 1057
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v7, "WifiConfigStore saveNetwork, size="

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@31
    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    #@34
    move-result v7

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    .line 1058
    const-string/jumbo v7, " SSID="

    #@3c
    .line 1057
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    .line 1058
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@42
    .line 1057
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    .line 1059
    const-string/jumbo v7, " Uid="

    #@49
    .line 1057
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    .line 1059
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@4f
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    .line 1057
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    .line 1060
    const-string/jumbo v7, "/"

    #@5a
    .line 1057
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    .line 1060
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@60
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    .line 1057
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@6f
    .line 1063
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@71
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@73
    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_4

    #@79
    .line 1064
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@7b
    if-eqz v6, :cond_4

    #@7d
    .line 1065
    new-instance v6, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v7, "WifiConfigStore: removed from ephemeral blacklist: "

    #@85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@8b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@96
    .line 1071
    :cond_4
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@98
    if-ne v6, v8, :cond_b

    #@9a
    const/4 v2, 0x1

    #@9b
    .line 1072
    .local v2, "newNetwork":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@9e
    move-result-object v3

    #@9f
    .line 1073
    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@a2
    move-result v1

    #@a3
    .line 1075
    .local v1, "netId":I
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@a5
    if-eqz v6, :cond_5

    #@a7
    const-string/jumbo v6, "WifiConfigStore: saveNetwork got it back netId="

    #@aa
    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@ad
    .line 1078
    :cond_5
    if-eqz v2, :cond_7

    #@af
    if-eq v1, v8, :cond_7

    #@b1
    .line 1079
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@b3
    if-eqz v6, :cond_6

    #@b5
    const-string/jumbo v6, "WifiConfigStore: will enable netId="

    #@b8
    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@bb
    .line 1081
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@bd
    invoke-virtual {v6, v1, v4}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    #@c0
    .line 1082
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@c2
    invoke-virtual {v6, v1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@c5
    move-result-object v0

    #@c6
    .line 1083
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_7

    #@c8
    .line 1084
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@ca
    .line 1087
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@cc
    invoke-virtual {v6, v1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@cf
    move-result-object v0

    #@d0
    .line 1088
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_a

    #@d2
    .line 1089
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@d4
    if-eqz v6, :cond_9

    #@d6
    .line 1090
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@d8
    if-eqz v6, :cond_8

    #@da
    new-instance v6, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v7, "WifiConfigStore: re-enabling: "

    #@e2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v6

    #@e6
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v6

    #@ec
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v6

    #@f0
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@f3
    .line 1093
    :cond_8
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@f6
    .line 1094
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@f8
    invoke-virtual {p0, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    #@fb
    .line 1096
    :cond_9
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@fd
    if-eqz v6, :cond_a

    #@ff
    .line 1097
    new-instance v6, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v7, "WifiConfigStore: saveNetwork got config back netId="

    #@107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v6

    #@10b
    .line 1098
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10e
    move-result-object v7

    #@10f
    .line 1097
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v6

    #@113
    .line 1099
    const-string/jumbo v7, " uid="

    #@116
    .line 1097
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v6

    #@11a
    .line 1099
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@11c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11f
    move-result-object v7

    #@120
    .line 1097
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v6

    #@124
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v6

    #@128
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@12b
    .line 1103
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@12d
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@130
    .line 1104
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    #@133
    move-result v6

    #@134
    if-eqz v6, :cond_c

    #@136
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@139
    .line 1106
    return-object v3

    #@13a
    .line 1071
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "netId":I
    .end local v2    # "newNetwork":Z
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_b
    const/4 v2, 0x0

    #@13b
    .restart local v2    # "newNetwork":Z
    goto/16 :goto_0

    #@13d
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "netId":I
    .restart local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_c
    move v4, v5

    #@13e
    .line 1105
    goto :goto_1
.end method

.method saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1151
    if-eqz p1, :cond_0

    #@2
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 1152
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1153
    :cond_0
    return-void

    #@c
    .line 1157
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_2

    #@10
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@12
    const-string/jumbo v1, "any"

    #@15
    if-eq v0, v1, :cond_2

    #@17
    .line 1158
    return-void

    #@18
    .line 1162
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "saveWifiConfigBSSID Setting BSSID for "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1164
    const-string/jumbo v1, " to "

    #@33
    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 1164
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@39
    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@44
    .line 1165
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@46
    .line 1166
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@48
    .line 1167
    const-string/jumbo v2, "bssid"

    #@4b
    .line 1168
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@4d
    .line 1165
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@50
    move-result v0

    #@51
    if-nez v0, :cond_4

    #@53
    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v1, "failed to set BSSID: "

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@6c
    .line 1149
    :cond_3
    :goto_0
    return-void

    #@6d
    .line 1170
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@6f
    const-string/jumbo v1, "any"

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_3

    #@78
    .line 1172
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@7d
    goto :goto_0
.end method

.method selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "updatePriorities"    # Z
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 985
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    const-string/jumbo v3, "selectNetwork"

    #@a
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@c
    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    #@f
    .line 986
    :cond_0
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@11
    if-ne v3, v6, :cond_1

    #@13
    return v5

    #@14
    .line 989
    :cond_1
    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@16
    if-eq v3, v6, :cond_2

    #@18
    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@1a
    const v4, 0xf4240

    #@1d
    if-le v3, v4, :cond_5

    #@1f
    .line 990
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@21
    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@24
    move-result-object v3

    #@25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    .local v1, "config2$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_4

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@35
    .line 991
    .local v0, "config2":Landroid/net/wifi/WifiConfiguration;
    if-eqz p2, :cond_3

    #@37
    .line 992
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@39
    if-eq v3, v6, :cond_3

    #@3b
    .line 993
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@3d
    .line 994
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3f
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@41
    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    #@44
    goto :goto_0

    #@45
    .line 998
    .end local v0    # "config2":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iput v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@47
    .line 1002
    .end local v1    # "config2$iterator":Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    #@49
    .line 1003
    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@4b
    add-int/lit8 v3, v3, 0x1

    #@4d
    iput v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    #@4f
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@51
    .line 1004
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@53
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@55
    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    #@58
    .line 1005
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V

    #@5b
    .line 1008
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_7

    #@61
    .line 1010
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@68
    move-result v3

    #@69
    if-eqz v3, :cond_9

    #@6b
    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetailCache;->getFirst()Lcom/android/server/wifi/ScanDetail;

    #@72
    move-result-object v2

    #@73
    .line 1012
    .local v2, "result":Lcom/android/server/wifi/ScanDetail;
    if-nez v2, :cond_8

    #@75
    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v4, "Could not find scan result for "

    #@7d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@8e
    .line 1025
    .end local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_7
    :goto_1
    if-eqz p2, :cond_a

    #@90
    .line 1026
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@92
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@95
    .line 1030
    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@98
    .line 1031
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    #@9b
    .line 1034
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@9d
    invoke-virtual {p0, v3, v7}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    #@a0
    .line 1038
    return v7

    #@a1
    .line 1015
    .restart local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v4, "Setting SSID for "

    #@a9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v3

    #@ad
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@af
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    const-string/jumbo v4, " to"

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@bd
    move-result-object v4

    #@be
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    #@c9
    .line 1016
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@cb
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@ce
    move-result-object v4

    #@cf
    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->setSSIDNative(ILjava/lang/String;)Z

    #@d2
    .line 1017
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@d5
    move-result-object v3

    #@d6
    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@d8
    goto :goto_1

    #@d9
    .line 1021
    .end local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v4, "Could not find bssid for "

    #@e1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v3

    #@e9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v3

    #@ed
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@f0
    goto :goto_1

    #@f1
    .line 1028
    :cond_a
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@f3
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@f5
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->selectNetwork(I)Z

    #@f8
    goto :goto_2
.end method

.method setDefaultGwMacAddress(ILjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1722
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1723
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    .line 1725
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@a
    .line 1721
    :cond_0
    return-void
.end method

.method public setLastSelectedConfiguration(I)V
    .locals 5
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2245
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2246
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "setLastSelectedConfiguration "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@21
    .line 2248
    :cond_0
    const/4 v1, -0x1

    #@22
    if-ne p1, v1, :cond_2

    #@24
    .line 2249
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@26
    .line 2244
    :cond_1
    :goto_0
    return-void

    #@27
    .line 2251
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@2a
    move-result-object v0

    #@2b
    .line 2252
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    #@2d
    .line 2253
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@2f
    goto :goto_0

    #@30
    .line 2255
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@36
    .line 2256
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@38
    .line 2257
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@3a
    .line 2258
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@3c
    .line 2259
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@3e
    .line 2260
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@40
    if-eqz v1, :cond_1

    #@42
    .line 2261
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "setLastSelectedConfiguration now: "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@5b
    goto :goto_0
.end method

.method setStaticIpConfiguration(ILandroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    .line 1712
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1713
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    .line 1714
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    #@b
    .line 1711
    :cond_0
    return-void
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    #@0
    .prologue
    .line 1685
    new-instance v0, Landroid/net/wifi/WpsResult;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    #@5
    .line 1686
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7
    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1688
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    #@12
    .line 1689
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@14
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@16
    .line 1694
    :goto_0
    return-object v0

    #@17
    .line 1691
    :cond_0
    const-string/jumbo v1, "Failed to start WPS push button configuration"

    #@1a
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1d
    .line 1692
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@1f
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@21
    goto :goto_0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    #@0
    .prologue
    .line 1648
    new-instance v0, Landroid/net/wifi/WpsResult;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    #@5
    .line 1649
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7
    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@9
    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1651
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    #@14
    .line 1652
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@16
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@18
    .line 1657
    :goto_0
    return-object v0

    #@19
    .line 1654
    :cond_0
    const-string/jumbo v1, "Failed to start WPS pin method configuration"

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1f
    .line 1655
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@21
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@23
    goto :goto_0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    #@0
    .prologue
    .line 1666
    new-instance v0, Landroid/net/wifi/WpsResult;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    #@5
    .line 1667
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7
    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@f
    .line 1669
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 1670
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    #@1a
    .line 1671
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@1c
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@1e
    .line 1676
    :goto_0
    return-object v0

    #@1f
    .line 1673
    :cond_0
    const-string/jumbo v1, "Failed to start WPS pin method configuration"

    #@22
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@25
    .line 1674
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@27
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@29
    goto :goto_0
.end method

.method public trimANQPCache(Z)V
    .locals 2
    .param p1, "all"    # Z

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->clear(ZZ)V

    #@6
    .line 685
    return-void
.end method

.method updateConfiguration(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    #@0
    .prologue
    .line 858
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@3
    move-result v6

    #@4
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@7
    move-result-object v0

    #@8
    .line 859
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@d
    move-result-object v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 860
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    #@1b
    move-result-object v5

    #@1c
    .line 861
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v5, :cond_0

    #@1e
    .line 862
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@21
    move-result-object v4

    #@22
    .line 863
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    #@24
    .line 864
    .local v2, "previousSeen":J
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    #@26
    .line 867
    .local v1, "previousRssi":I
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    #@29
    .line 868
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@2c
    move-result v6

    #@2d
    iput v6, v4, Landroid/net/wifi/ScanResult;->level:I

    #@2f
    .line 872
    sget v6, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    #@31
    .line 871
    invoke-virtual {v4, v1, v2, v3, v6}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    #@34
    .line 873
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@36
    if-eqz v6, :cond_0

    #@38
    .line 874
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v7, "updateConfiguration freq="

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    iget v7, v4, Landroid/net/wifi/ScanResult;->frequency:I

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 875
    const-string/jumbo v7, " BSSID="

    #@4d
    .line 874
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    .line 875
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@53
    .line 874
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    .line 876
    const-string/jumbo v7, " RSSI="

    #@5a
    .line 874
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    .line 876
    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    #@60
    .line 874
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    .line 877
    const-string/jumbo v7, " "

    #@67
    .line 874
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    .line 877
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    .line 874
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@7a
    .line 857
    .end local v1    # "previousRssi":I
    .end local v2    # "previousSeen":J
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    return-void
.end method

.method public updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 961
    if-eqz p1, :cond_0

    #@3
    .line 962
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@5
    if-eq v0, p2, :cond_0

    #@7
    .line 963
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@9
    .line 964
    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@b
    .line 965
    return v1

    #@c
    .line 968
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method public updateSavedNetworkHistory(Lcom/android/server/wifi/ScanDetail;)Z
    .locals 14
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v13, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 3432
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@6
    move-result-object v7

    #@7
    .line 3433
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@a
    move-result-object v5

    #@b
    .line 3435
    .local v5, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    const/4 v6, 0x0

    #@c
    .line 3436
    .local v6, "numConfigFound":I
    if-nez v7, :cond_0

    #@e
    .line 3437
    return v10

    #@f
    .line 3439
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v12, "\""

    #@17
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@1d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v11

    #@21
    const-string/jumbo v12, "\""

    #@24
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v11

    #@28
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 3441
    .local v0, "SSID":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    #@2f
    move-result v11

    #@30
    if-eqz v11, :cond_2

    #@32
    .line 3442
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;

    #@35
    move-result-object v4

    #@36
    .line 3443
    .local v4, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-eqz v4, :cond_2

    #@38
    .line 3444
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@3b
    .line 3445
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@3e
    move-result v11

    #@3f
    if-eqz v11, :cond_1

    #@41
    :goto_0
    return v9

    #@42
    :cond_1
    move v9, v10

    #@43
    goto :goto_0

    #@44
    .line 3449
    .end local v4    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@46
    invoke-virtual {v11}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@49
    move-result-object v11

    #@4a
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v2

    #@4e
    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v11

    #@52
    if-eqz v11, :cond_c

    #@54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #@5a
    .line 3450
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x0

    #@5b
    .line 3452
    .local v3, "found":Z
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@5d
    if-eqz v11, :cond_8

    #@5f
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@61
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v11

    #@65
    if-eqz v11, :cond_8

    #@67
    .line 3460
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@69
    if-eqz v11, :cond_4

    #@6b
    .line 3461
    new-instance v11, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v12, "updateSavedNetworkHistory(): try "

    #@73
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v11

    #@77
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@7a
    move-result-object v12

    #@7b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v11

    #@7f
    .line 3462
    const-string/jumbo v12, " SSID="

    #@82
    .line 3461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v11

    #@86
    .line 3462
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@88
    .line 3461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v11

    #@8c
    .line 3462
    const-string/jumbo v12, " "

    #@8f
    .line 3461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v11

    #@93
    .line 3462
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@95
    .line 3461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v11

    #@99
    .line 3463
    const-string/jumbo v12, " "

    #@9c
    .line 3461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v11

    #@a0
    .line 3463
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@a2
    .line 3461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v11

    #@a6
    .line 3464
    const-string/jumbo v12, " ajst="

    #@a9
    .line 3461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v11

    #@ad
    .line 3464
    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@af
    .line 3461
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v11

    #@b3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v11

    #@b7
    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@ba
    .line 3466
    :cond_4
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@bc
    const-string/jumbo v12, "WEP"

    #@bf
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@c2
    move-result v11

    #@c3
    if-eqz v11, :cond_9

    #@c5
    .line 3467
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@c8
    move-result-object v11

    #@c9
    const-string/jumbo v12, "WEP"

    #@cc
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@cf
    move-result v11

    #@d0
    .line 3466
    if-eqz v11, :cond_9

    #@d2
    .line 3468
    const/4 v3, 0x1

    #@d3
    .line 3484
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    #@d5
    .line 3485
    add-int/lit8 v6, v6, 0x1

    #@d7
    .line 3486
    invoke-direct {p0, v1, p1, v13}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    #@da
    .line 3489
    :cond_6
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@dc
    if-eqz v11, :cond_3

    #@de
    if-eqz v3, :cond_3

    #@e0
    .line 3490
    const-string/jumbo v8, ""

    #@e3
    .line 3491
    .local v8, "status":Ljava/lang/String;
    iget v11, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@e5
    if-lez v11, :cond_7

    #@e7
    .line 3492
    new-instance v11, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v12, " status="

    #@ef
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v11

    #@f3
    iget v12, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@f5
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f8
    move-result-object v12

    #@f9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v11

    #@fd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v8

    #@101
    .line 3494
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v12, "        got known scan result "

    #@109
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v11

    #@10d
    .line 3495
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@10f
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v11

    #@113
    .line 3495
    const-string/jumbo v12, " key : "

    #@116
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v11

    #@11a
    .line 3496
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@11d
    move-result-object v12

    #@11e
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v11

    #@122
    .line 3496
    const-string/jumbo v12, " num: "

    #@125
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v11

    #@129
    .line 3497
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@12c
    move-result-object v12

    #@12d
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@130
    move-result v12

    #@131
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@134
    move-result-object v12

    #@135
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v11

    #@139
    .line 3498
    const-string/jumbo v12, " rssi="

    #@13c
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v11

    #@140
    .line 3498
    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    #@142
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@145
    move-result-object v12

    #@146
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v11

    #@14a
    .line 3499
    const-string/jumbo v12, " freq="

    #@14d
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v11

    #@151
    .line 3499
    iget v12, v7, Landroid/net/wifi/ScanResult;->frequency:I

    #@153
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@156
    move-result-object v12

    #@157
    .line 3494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v11

    #@15b
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v11

    #@15f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v11

    #@163
    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@166
    goto/16 :goto_1

    #@168
    .line 3454
    .end local v8    # "status":Ljava/lang/String;
    :cond_8
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    #@16a
    if-eqz v11, :cond_3

    #@16c
    .line 3455
    new-instance v11, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    const-string/jumbo v12, "updateSavedNetworkHistory(): SSID mismatch "

    #@174
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v11

    #@178
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@17b
    move-result-object v12

    #@17c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v11

    #@180
    .line 3456
    const-string/jumbo v12, " SSID="

    #@183
    .line 3455
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v11

    #@187
    .line 3456
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@189
    .line 3455
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v11

    #@18d
    .line 3456
    const-string/jumbo v12, " "

    #@190
    .line 3455
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v11

    #@194
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v11

    #@198
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v11

    #@19c
    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@19f
    goto/16 :goto_1

    #@1a1
    .line 3469
    :cond_9
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1a3
    const-string/jumbo v12, "PSK"

    #@1a6
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1a9
    move-result v11

    #@1aa
    if-eqz v11, :cond_a

    #@1ac
    .line 3470
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1af
    move-result-object v11

    #@1b0
    const-string/jumbo v12, "PSK"

    #@1b3
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1b6
    move-result v11

    #@1b7
    .line 3469
    if-eqz v11, :cond_a

    #@1b9
    .line 3471
    const/4 v3, 0x1

    #@1ba
    goto/16 :goto_2

    #@1bc
    .line 3472
    :cond_a
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1be
    const-string/jumbo v12, "EAP"

    #@1c1
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1c4
    move-result v11

    #@1c5
    if-eqz v11, :cond_b

    #@1c7
    .line 3473
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1ca
    move-result-object v11

    #@1cb
    const-string/jumbo v12, "EAP"

    #@1ce
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1d1
    move-result v11

    #@1d2
    .line 3472
    if-eqz v11, :cond_b

    #@1d4
    .line 3474
    const/4 v3, 0x1

    #@1d5
    goto/16 :goto_2

    #@1d7
    .line 3475
    :cond_b
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1d9
    const-string/jumbo v12, "WEP"

    #@1dc
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1df
    move-result v11

    #@1e0
    if-nez v11, :cond_5

    #@1e2
    .line 3476
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1e4
    const-string/jumbo v12, "PSK"

    #@1e7
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1ea
    move-result v11

    #@1eb
    if-nez v11, :cond_5

    #@1ed
    .line 3477
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1ef
    const-string/jumbo v12, "EAP"

    #@1f2
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1f5
    move-result v11

    #@1f6
    if-nez v11, :cond_5

    #@1f8
    .line 3478
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1fb
    move-result-object v11

    #@1fc
    const-string/jumbo v12, "WEP"

    #@1ff
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@202
    move-result v11

    #@203
    if-nez v11, :cond_5

    #@205
    .line 3479
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@208
    move-result-object v11

    #@209
    const-string/jumbo v12, "PSK"

    #@20c
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@20f
    move-result v11

    #@210
    if-nez v11, :cond_5

    #@212
    .line 3480
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@215
    move-result-object v11

    #@216
    const-string/jumbo v12, "EAP"

    #@219
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@21c
    move-result v11

    #@21d
    if-nez v11, :cond_5

    #@21f
    .line 3481
    const/4 v3, 0x1

    #@220
    goto/16 :goto_2

    #@222
    .line 3503
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "found":Z
    :cond_c
    if-eqz v6, :cond_d

    #@224
    :goto_3
    return v9

    #@225
    :cond_d
    move v9, v10

    #@226
    goto :goto_3
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1179
    const/4 v1, -0x1

    #@2
    if-eq p1, v1, :cond_1

    #@4
    .line 1180
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    #@9
    move-result-object v0

    #@a
    .line 1181
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@c
    return-void

    #@d
    .line 1182
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@14
    move-result v2

    #@15
    aget v1, v1, v2

    #@17
    packed-switch v1, :pswitch_data_0

    #@1a
    .line 1178
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 1184
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@1d
    .line 1186
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    #@20
    goto :goto_0

    #@21
    .line 1190
    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@23
    if-nez v1, :cond_1

    #@25
    .line 1191
    const/4 v1, 0x2

    #@26
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@28
    goto :goto_0

    #@29
    .line 1182
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 3777
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@5
    move-result-object v1

    #@6
    .line 3778
    .local v1, "result":Landroid/net/wifi/ScanResult;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@8
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@b
    .line 3780
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "\""

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "\""

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@2a
    .line 3782
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 3783
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "WifiConfiguration from scan results "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 3784
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3c
    .line 3783
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 3784
    const-string/jumbo v3, " cap "

    #@43
    .line 3783
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    .line 3784
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@49
    .line 3783
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@54
    .line 3786
    :cond_0
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@56
    const-string/jumbo v3, "WEP"

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_1

    #@5f
    .line 3787
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@61
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    #@64
    .line 3788
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@66
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    #@69
    .line 3789
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@6b
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    #@6e
    .line 3792
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@70
    const-string/jumbo v3, "PSK"

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_2

    #@79
    .line 3793
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@7b
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    #@7e
    .line 3796
    :cond_2
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@80
    const-string/jumbo v3, "EAP"

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_3

    #@89
    .line 3798
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@8b
    const/4 v3, 0x2

    #@8c
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@8f
    .line 3799
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@91
    const/4 v3, 0x3

    #@92
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@95
    .line 3804
    :cond_3
    return-object v0
.end method

.method public writeKnownNetworkHistory(Z)V
    .locals 7
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 2043
    move v2, p1

    #@1
    .line 2046
    .local v2, "needUpdate":Z
    new-instance v3, Ljava/util/ArrayList;

    #@3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 2047
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@8
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v4

    #@c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .end local v2    # "needUpdate":Z
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1c
    .line 2048
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    #@1e
    invoke-direct {v4, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@21
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    .line 2049
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 2050
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, " rewrite network history for "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@43
    .line 2051
    const/4 v4, 0x0

    #@44
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@46
    .line 2052
    const/4 v2, 0x1

    #@47
    .local v2, "needUpdate":Z
    goto :goto_0

    #@48
    .line 2055
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "needUpdate":Z
    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@4a
    if-eqz v4, :cond_2

    #@4c
    .line 2056
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, " writeKnownNetworkHistory() num networks:"

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    .line 2057
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@5a
    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    #@5d
    move-result v5

    #@5e
    .line 2056
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    .line 2057
    const-string/jumbo v5, " needWrite="

    #@65
    .line 2056
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@74
    .line 2059
    :cond_2
    if-nez v2, :cond_3

    #@76
    .line 2060
    return-void

    #@77
    .line 2062
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@79
    sget-object v5, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    #@7b
    new-instance v6, Lcom/android/server/wifi/WifiConfigStore$3;

    #@7d
    invoke-direct {v6, p0, v3}, Lcom/android/server/wifi/WifiConfigStore$3;-><init>(Lcom/android/server/wifi/WifiConfigStore;Ljava/util/List;)V

    #@80
    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    #@83
    .line 2042
    return-void
.end method

.method public writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 4
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@0
    .prologue
    .line 2025
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@2
    const-string/jumbo v1, "/data/misc/wifi/PerProviderSubscription.conf"

    #@5
    new-instance v2, Lcom/android/server/wifi/WifiConfigStore$2;

    #@7
    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/wifi/WifiConfigStore$2;-><init>(Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/lang/String;)V

    #@a
    .line 2039
    const/4 v3, 0x0

    #@b
    .line 2025
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    #@e
    .line 2024
    return-void
.end method
